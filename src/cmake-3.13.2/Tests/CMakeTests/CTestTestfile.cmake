# CMake generated Testfile for 
# Source directory: /root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeTests
# Build directory: /root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeTests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(CMake.List "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeTests/ListTest.cmake")
add_test(CMake.VariableWatch "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeTests/VariableWatchTest.cmake")
add_test(CMake.Include "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeTests/IncludeTest.cmake")
add_test(CMake.FindBase "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeTests/FindBaseTest.cmake")
add_test(CMake.Toolchain "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeTests/ToolchainTest.cmake")
add_test(CMake.GetFilenameComponentRealpath "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeTests/GetFilenameComponentRealpathTest.cmake")
add_test(CMake.Version "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeTests/VersionTest.cmake")
add_test(CMake.Message "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeTests/MessageTest.cmake")
add_test(CMake.File "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeTests/FileTest.cmake")
add_test(CMake.ImplicitLinkInfo "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeTests/ImplicitLinkInfoTest.cmake")
add_test(CMake.ModuleNotices "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeTests/ModuleNoticesTest.cmake")
add_test(CMake.GetProperty "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeTests/GetPropertyTest.cmake")
add_test(CMake.If "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeTests/IfTest.cmake")
add_test(CMake.String "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeTests/StringTest.cmake")
add_test(CMake.Math "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeTests/MathTest.cmake")
add_test(CMake.CMakeMinimumRequired "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeTests/CMakeMinimumRequiredTest.cmake")
add_test(CMake.CompilerIdVendor "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeTests/CompilerIdVendorTest.cmake")
add_test(CMake.ProcessorCount "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-DKWSYS_TEST_EXE=/root/wax-blockchain/src/cmake-3.13.2/Source/kwsys/cmsysTestsCxx" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeTests/ProcessorCountTest.cmake")
add_test(CMake.PushCheckState "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeTests/PushCheckStateTest.cmake")
add_test(CMake.While "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeTests/WhileTest.cmake")
add_test(CMake.CMakeHostSystemInformation "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeTests/CMakeHostSystemInformationTest.cmake")
add_test(CMake.FileDownload "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeTests/FileDownloadTest.cmake")
set_tests_properties(CMake.FileDownload PROPERTIES  PASS_REGULAR_EXPRESSION "file already exists with expected MD5 sum")
add_test(CMake.FileDownloadBadHash "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeTests/FileDownloadBadHashTest.cmake")
set_tests_properties(CMake.FileDownloadBadHash PROPERTIES  WILL_FAIL "TRUE")
add_test(CMake.FileUpload "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeTests/FileUploadTest.cmake")
add_test(CMake.ELF "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeTests/ELFTest.cmake")
add_test(CMake.EndStuff "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-Ddir:STRING=/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeTests/EndStuffTest" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeTests/EndStuffTest.cmake")
add_test(CMake.GetPrerequisites "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-DConfiguration:STRING=" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeTests/GetPrerequisitesTest.cmake")
add_test(CMake.PolicyCheck "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-DCMake_BINARY_DIR:PATH=/root/wax-blockchain/src/cmake-3.13.2" "-DCMake_SOURCE_DIR:PATH=/root/wax-blockchain/src/cmake-3.13.2" "-DGIT_EXECUTABLE:STRING=/usr/bin/git" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeTests/PolicyCheckTest.cmake")
add_test(CMake.CheckSourceTree "/root/wax-blockchain/src/cmake-3.13.2/bin/cmake" "-DCMake_BINARY_DIR:PATH=/root/wax-blockchain/src/cmake-3.13.2" "-DCMake_SOURCE_DIR:PATH=/root/wax-blockchain/src/cmake-3.13.2" "-DGIT_EXECUTABLE:STRING=/usr/bin/git" "-DHOME:STRING=/root" "-P" "/root/wax-blockchain/src/cmake-3.13.2/Tests/CMakeTests/CheckSourceTreeTest.cmake")