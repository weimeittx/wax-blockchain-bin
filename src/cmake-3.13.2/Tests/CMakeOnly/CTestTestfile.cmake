# CMake generated Testfile for 
# Source directory: /root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeOnly
# Build directory: /root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeOnly
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(CMakeOnly.LinkInterfaceLoop "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-DTEST=LinkInterfaceLoop" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeOnly/Test.cmake")
set_tests_properties(CMakeOnly.LinkInterfaceLoop PROPERTIES  TIMEOUT "90")
add_test(CMakeOnly.CheckSymbolExists "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-DTEST=CheckSymbolExists" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeOnly/Test.cmake")
add_test(CMakeOnly.CheckCXXSymbolExists "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-DTEST=CheckCXXSymbolExists" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeOnly/Test.cmake")
add_test(CMakeOnly.CheckCXXCompilerFlag "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-DTEST=CheckCXXCompilerFlag" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeOnly/Test.cmake")
add_test(CMakeOnly.CheckLanguage "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-DTEST=CheckLanguage" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeOnly/Test.cmake")
add_test(CMakeOnly.CheckStructHasMember "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-DTEST=CheckStructHasMember" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeOnly/Test.cmake")
add_test(CMakeOnly.CompilerIdC "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-DTEST=CompilerIdC" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeOnly/Test.cmake")
add_test(CMakeOnly.CompilerIdCXX "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-DTEST=CompilerIdCXX" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeOnly/Test.cmake")
add_test(CMakeOnly.AllFindModules "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-DTEST=AllFindModules" "-DCMAKE_ARGS=-DCMake_TEST_CMakeOnly.AllFindModules_NO_VERSION=" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeOnly/Test.cmake")
add_test(CMakeOnly.SelectLibraryConfigurations "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-DTEST=SelectLibraryConfigurations" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeOnly/Test.cmake")
add_test(CMakeOnly.TargetScope "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-DTEST=TargetScope" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeOnly/Test.cmake")
add_test(CMakeOnly.find_library "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-DTEST=find_library" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeOnly/Test.cmake")
add_test(CMakeOnly.find_path "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-DTEST=find_path" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeOnly/Test.cmake")
add_test(CMakeOnly.ProjectInclude "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-DTEST=ProjectInclude" "-DCMAKE_ARGS=-DCMAKE_PROJECT_ProjectInclude_INCLUDE=/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeOnly/ProjectInclude/include.cmake" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeOnly/Test.cmake")
add_test(CMakeOnly.MajorVersionSelection-PythonLibs_2 "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-DTEST=MajorVersionSelection-PythonLibs_2" "-DTEST_SOURCE=MajorVersionSelection" "-DCMAKE_ARGS=-DMAJOR_TEST_MODULE=PythonLibs;-DMAJOR_TEST_VERSION=2;-DMAJOR_TEST_NO_LANGUAGES=FALSE;-DMAJOR_TEST_VERSION_VAR=PYTHONLIBS_VERSION_STRING" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeOnly/Test.cmake")
add_test(CMakeOnly.MajorVersionSelection-PythonLibs_3 "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-DTEST=MajorVersionSelection-PythonLibs_3" "-DTEST_SOURCE=MajorVersionSelection" "-DCMAKE_ARGS=-DMAJOR_TEST_MODULE=PythonLibs;-DMAJOR_TEST_VERSION=3;-DMAJOR_TEST_NO_LANGUAGES=FALSE;-DMAJOR_TEST_VERSION_VAR=PYTHONLIBS_VERSION_STRING" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeOnly/Test.cmake")
add_test(CMakeOnly.MajorVersionSelection-PythonInterp_2 "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-DTEST=MajorVersionSelection-PythonInterp_2" "-DTEST_SOURCE=MajorVersionSelection" "-DCMAKE_ARGS=-DMAJOR_TEST_MODULE=PythonInterp;-DMAJOR_TEST_VERSION=2;-DMAJOR_TEST_NO_LANGUAGES=TRUE;-DMAJOR_TEST_VERSION_VAR=PYTHON_VERSION_STRING" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeOnly/Test.cmake")
add_test(CMakeOnly.MajorVersionSelection-PythonInterp_3 "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-DTEST=MajorVersionSelection-PythonInterp_3" "-DTEST_SOURCE=MajorVersionSelection" "-DCMAKE_ARGS=-DMAJOR_TEST_MODULE=PythonInterp;-DMAJOR_TEST_VERSION=3;-DMAJOR_TEST_NO_LANGUAGES=TRUE;-DMAJOR_TEST_VERSION_VAR=PYTHON_VERSION_STRING" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeOnly/Test.cmake")
add_test(CMakeOnly.MajorVersionSelection-Qt_3 "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-DTEST=MajorVersionSelection-Qt_3" "-DTEST_SOURCE=MajorVersionSelection" "-DCMAKE_ARGS=-DMAJOR_TEST_MODULE=Qt;-DMAJOR_TEST_VERSION=3;-DMAJOR_TEST_NO_LANGUAGES=FALSE;-DMAJOR_TEST_VERSION_VAR=QT_VERSION_STRING" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeOnly/Test.cmake")
add_test(CMakeOnly.MajorVersionSelection-Qt_4 "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-DTEST=MajorVersionSelection-Qt_4" "-DTEST_SOURCE=MajorVersionSelection" "-DCMAKE_ARGS=-DMAJOR_TEST_MODULE=Qt;-DMAJOR_TEST_VERSION=4;-DMAJOR_TEST_NO_LANGUAGES=FALSE;-DMAJOR_TEST_VERSION_VAR=QT_VERSION_STRING" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeOnly/Test.cmake")