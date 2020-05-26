# Install script for directory: /home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/nhamtung/TungNV/MyFirstRobot/example_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/sick_lms100" TYPE FILE FILES "/home/nhamtung/TungNV/MyFirstRobot/example_ws/devel/include/sick_lms100/SickScanConfig.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/sick_lms100" TYPE FILE FILES "/home/nhamtung/TungNV/MyFirstRobot/example_ws/devel/include/sick_lms100/tf_dynConfig.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/sick_lms100" TYPE FILE FILES "/home/nhamtung/TungNV/MyFirstRobot/example_ws/devel/lib/python2.7/dist-packages/sick_lms100/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/nhamtung/TungNV/MyFirstRobot/example_ws/devel/lib/python2.7/dist-packages/sick_lms100/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/sick_lms100" TYPE DIRECTORY FILES "/home/nhamtung/TungNV/MyFirstRobot/example_ws/devel/lib/python2.7/dist-packages/sick_lms100/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sick_lms100/msg" TYPE FILE FILES
    "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/SickImu.msg"
    "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarObject.msg"
    "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderDeviceBlock.msg"
    "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderMeasurementParam1Block.msg"
    "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderStatusBlock.msg"
    "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderEncoderBlock.msg"
    "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeader.msg"
    "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarScan.msg"
    "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/Encoder.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/nhamtung/TungNV/MyFirstRobot/example_ws/build/sick_lms100/catkin_generated/installspace/sick_lms100.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sick_lms100/cmake" TYPE FILE FILES
    "/home/nhamtung/TungNV/MyFirstRobot/example_ws/build/sick_lms100/catkin_generated/installspace/sick_lms100Config.cmake"
    "/home/nhamtung/TungNV/MyFirstRobot/example_ws/build/sick_lms100/catkin_generated/installspace/sick_lms100Config-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sick_lms100" TYPE FILE FILES "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsick_lms100_lib.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsick_lms100_lib.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsick_lms100_lib.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/nhamtung/TungNV/MyFirstRobot/example_ws/devel/lib/libsick_lms100_lib.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsick_lms100_lib.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsick_lms100_lib.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsick_lms100_lib.so"
         OLD_RPATH "/opt/ros/melodic/lib:/usr/lib/x86_64-linux-gnu/hdf5/openmpi:/usr/lib/x86_64-linux-gnu/openmpi/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsick_lms100_lib.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lms100/sick_generic_caller" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lms100/sick_generic_caller")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lms100/sick_generic_caller"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sick_lms100" TYPE EXECUTABLE FILES "/home/nhamtung/TungNV/MyFirstRobot/example_ws/devel/lib/sick_lms100/sick_generic_caller")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lms100/sick_generic_caller" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lms100/sick_generic_caller")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lms100/sick_generic_caller"
         OLD_RPATH "/home/nhamtung/TungNV/MyFirstRobot/example_ws/devel/lib:/opt/ros/melodic/lib:/usr/lib/x86_64-linux-gnu/hdf5/openmpi:/usr/lib/x86_64-linux-gnu/openmpi/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lms100/sick_generic_caller")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lms100/sick_lms100_test" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lms100/sick_lms100_test")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lms100/sick_lms100_test"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sick_lms100" TYPE EXECUTABLE FILES "/home/nhamtung/TungNV/MyFirstRobot/example_ws/devel/lib/sick_lms100/sick_lms100_test")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lms100/sick_lms100_test" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lms100/sick_lms100_test")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lms100/sick_lms100_test"
         OLD_RPATH "/opt/ros/melodic/lib:/usr/lib/x86_64-linux-gnu/hdf5/openmpi:/usr/lib/x86_64-linux-gnu/openmpi/lib:/home/nhamtung/TungNV/MyFirstRobot/example_ws/devel/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lms100/sick_lms100_test")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/sick_lms100" TYPE FILE FILES
    "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/include/sick_lms100/abstract_parser.h"
    "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/include/sick_lms100/sick_scan_common.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sick_lms100/test" TYPE DIRECTORY FILES "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/test/" FILES_MATCHING REGEX "/[^/]*\\.xml$" REGEX "/test\\/src$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sick_lms100/launch" TYPE DIRECTORY FILES "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/launch/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sick_lms100/meshes" TYPE DIRECTORY FILES "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/meshes/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sick_lms100/urdf" TYPE DIRECTORY FILES "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/urdf/")
endif()

