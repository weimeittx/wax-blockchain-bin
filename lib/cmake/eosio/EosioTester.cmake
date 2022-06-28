cmake_minimum_required( VERSION 3.5 )
message(STATUS "Setting up Eosio Tester 2.0.13wax03 at /root/wax-blockchain")

SET(CMAKE_INSTALL_RPATH "${HOME}/lib;${HOME}/lib64")

set(CMAKE_CXX_COMPILER /usr/bin/clang++)
set(CMAKE_C_COMPILER   /usr/bin/clang)

set(EOSIO_VERSION "2.0.13wax03")

enable_testing()

if (LLVM_DIR STREQUAL "" OR NOT LLVM_DIR)
   set(LLVM_DIR /root/wax-blockchain/opt/llvm/lib/cmake/llvm)
endif()

find_package( Gperftools QUIET )
if( GPERFTOOLS_FOUND )
    message( STATUS "Found gperftools; compiling tests with TCMalloc")
    list( APPEND PLATFORM_SPECIFIC_LIBS tcmalloc )
endif()

if(NOT "1" STREQUAL "")
   find_package(LLVM 7.0.0 EXACT REQUIRED CONFIG)
   llvm_map_components_to_libnames(LLVM_LIBS support core passes mcjit native DebugInfoDWARF orcjit)
   link_directories(${LLVM_LIBRARY_DIR})
endif()

set( CMAKE_CXX_STANDARD 17 )
set( CMAKE_CXX_EXTENSIONS ON )
set( CXX_STANDARD_REQUIRED ON )

if ( APPLE )
   set( CMAKE_CXX_FLAGS "${CMAKE_C_FLAGS} ${CMAKE_CXX_FLAGS} -Wall -Wno-deprecated-declarations" )
else ( APPLE )
   set( CMAKE_CXX_FLAGS "${CMAKE_C_FLAGS} ${CMAKE_CXX_FLAGS} -Wall")
endif ( APPLE )

### Remove after Boost 1.70 CMake fixes are in place
set( Boost_NO_BOOST_CMAKE ON CACHE STRING "ON or OFF" )
set( Boost_USE_STATIC_LIBS ON CACHE STRING "ON or OFF" )
find_package(Boost 1.67 REQUIRED COMPONENTS
   date_time
   filesystem
   system
   chrono
   iostreams
   unit_test_framework)

find_library(libtester eosio_testing /root/wax-blockchain/lib64 /root/wax-blockchain/lib NO_DEFAULT_PATH)
find_library(libchain eosio_chain /root/wax-blockchain/lib64 /root/wax-blockchain/lib NO_DEFAULT_PATH)
if ( "${CMAKE_BUILD_TYPE}" STREQUAL "Debug" )
   find_library(libfc fc_debug /root/wax-blockchain/lib64 /root/wax-blockchain/lib NO_DEFAULT_PATH)
   find_library(libsecp256k1 secp256k1_debug /root/wax-blockchain/lib64 /root/wax-blockchain/lib NO_DEFAULT_PATH)
else()
   find_library(libfc fc /root/wax-blockchain/lib64 /root/wax-blockchain/lib NO_DEFAULT_PATH)
   find_library(libsecp256k1 secp256k1 /root/wax-blockchain/lib64 /root/wax-blockchain/lib NO_DEFAULT_PATH)
endif()

find_library(libwasm WASM /root/wax-blockchain/lib64 /root/wax-blockchain/lib NO_DEFAULT_PATH)
find_library(libwast WAST /root/wax-blockchain/lib64 /root/wax-blockchain/lib NO_DEFAULT_PATH)
find_library(libwabt wabt /root/wax-blockchain/lib64 /root/wax-blockchain/lib NO_DEFAULT_PATH)
find_library(libir IR     /root/wax-blockchain/lib64 /root/wax-blockchain/lib NO_DEFAULT_PATH)
find_library(libplatform Platform /root/wax-blockchain/lib64 /root/wax-blockchain/lib NO_DEFAULT_PATH)
find_library(liblogging Logging /root/wax-blockchain/lib64 /root/wax-blockchain/lib NO_DEFAULT_PATH)
find_library(libruntime Runtime /root/wax-blockchain/lib64 /root/wax-blockchain/lib NO_DEFAULT_PATH)
find_library(libsoftfloat softfloat /root/wax-blockchain/lib64 /root/wax-blockchain/lib NO_DEFAULT_PATH)
get_filename_component(cryptodir /usr/lib/x86_64-linux-gnu/libcrypto.so DIRECTORY)
find_library(liboscrypto crypto "${cryptodir}" NO_DEFAULT_PATH)
get_filename_component(ssldir /usr/lib/x86_64-linux-gnu/libssl.so DIRECTORY)
find_library(libosssl ssl "${ssldir}" NO_DEFAULT_PATH)
find_library(libchainbase chainbase /root/wax-blockchain/lib64 /root/wax-blockchain/lib NO_DEFAULT_PATH)
find_library(libbuiltins builtins /root/wax-blockchain/lib64 /root/wax-blockchain/lib NO_DEFAULT_PATH)
find_library(GMP_LIBRARIES NAMES libgmp.a gmp.lib gmp libgmp-10 mpir
    HINTS ENV GMP_LIB_DIR
          ENV GMP_DIR
    PATH_SUFFIXES lib
    DOC "Path to the GMP library"
)

set(EOSIO_WASM_RUNTIMES wabt;eos-vm-oc;eos-vm;eos-vm-jit)
if("eos-vm-oc" IN_LIST EOSIO_WASM_RUNTIMES)
   set(WRAP_MAIN "-Wl,-wrap=main")
endif()

macro(add_eosio_test_executable test_name)
   add_executable( ${test_name} ${ARGN} )
   target_link_libraries( ${test_name}
       ${libtester}
       ${libchain}
       ${libfc}
       ${libwast}
       ${libwasm}
       ${libwabt}
       ${libruntime}
       ${libplatform}
       ${libir}
       ${libsoftfloat}
       ${liboscrypto}
       ${libosssl}
       ${liblogging}
       ${libchainbase}
       ${libbuiltins}
       ${libsecp256k1}
       ${GMP_LIBRARIES}

       ${Boost_FILESYSTEM_LIBRARY}
       ${Boost_SYSTEM_LIBRARY}
       ${Boost_CHRONO_LIBRARY}
       ${Boost_IOSTREAMS_LIBRARY}
       "-lz" # Needed by Boost iostreams
       ${Boost_DATE_TIME_LIBRARY}

       ${LLVM_LIBS}

       ${PLATFORM_SPECIFIC_LIBS}

       ${WRAP_MAIN}
      )

   target_include_directories( ${test_name} PUBLIC
                               ${Boost_INCLUDE_DIRS}
                               /usr/include
                               /root/wax-blockchain
                               /root/wax-blockchain/include
                               /root/wax-blockchain/include/wasm-jit
                               /root/wax-blockchain/include/softfloat )

endmacro()

macro(add_eosio_test test_name)
   add_eosio_test_executable( ${test_name} ${ARGN} )
   #This will generate a test with the default runtime
   add_test(NAME ${test_name} COMMAND ${test_name} --report_level=detailed --color_output)

   #Manually run unit_test for all supported runtimes
   #To run unit_test with all log from blockchain displayed, put --verbose after --, i.e. unit_test -- --verbose
endmacro()
