# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(FATAL_ERROR "Could not find messages which '/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/SickImu.msg' depends on. Did you forget to specify generate_messages(DEPENDENCIES ...)?
Cannot locate message [Header]: unknown package [std_msgs] on search path [{'sick_lms100': ['/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg']}]")
message(FATAL_ERROR "Could not find messages which '/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarObject.msg' depends on. Did you forget to specify generate_messages(DEPENDENCIES ...)?
Cannot locate message [TwistWithCovariance]: unknown package [geometry_msgs] on search path [{'sick_lms100': ['/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg']}]")
message(FATAL_ERROR "Could not find messages which '/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeader.msg' depends on. Did you forget to specify generate_messages(DEPENDENCIES ...)?
Cannot locate message [RadarPreHeaderDeviceBlock]: unknown package [sick_scan] on search path [{'sick_lms100': ['/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg']}]")
message(FATAL_ERROR "Could not find messages which '/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarScan.msg' depends on. Did you forget to specify generate_messages(DEPENDENCIES ...)?
Cannot locate message [Header]: unknown package [std_msgs] on search path [{'sick_lms100': ['/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg']}]")
message(FATAL_ERROR "Could not find messages which '/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/Encoder.msg' depends on. Did you forget to specify generate_messages(DEPENDENCIES ...)?
Cannot locate message [Header]: unknown package [std_msgs] on search path [{'sick_lms100': ['/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg']}]")
message(STATUS "sick_lms100: 9 messages, 0 services")

set(MSG_I_FLAGS "-Isick_lms100:/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(sick_lms100_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderEncoderBlock.msg" NAME_WE)
add_custom_target(_sick_lms100_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sick_lms100" "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderEncoderBlock.msg" ""
)

get_filename_component(_filename "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderDeviceBlock.msg" NAME_WE)
add_custom_target(_sick_lms100_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sick_lms100" "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderDeviceBlock.msg" ""
)

get_filename_component(_filename "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderMeasurementParam1Block.msg" NAME_WE)
add_custom_target(_sick_lms100_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sick_lms100" "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderMeasurementParam1Block.msg" ""
)

get_filename_component(_filename "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderStatusBlock.msg" NAME_WE)
add_custom_target(_sick_lms100_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sick_lms100" "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderStatusBlock.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(sick_lms100
  "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderEncoderBlock.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sick_lms100
)
_generate_msg_cpp(sick_lms100
  "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderStatusBlock.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sick_lms100
)
_generate_msg_cpp(sick_lms100
  "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderMeasurementParam1Block.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sick_lms100
)
_generate_msg_cpp(sick_lms100
  "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderDeviceBlock.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sick_lms100
)

### Generating Services

### Generating Module File
_generate_module_cpp(sick_lms100
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sick_lms100
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(sick_lms100_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(sick_lms100_generate_messages sick_lms100_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderEncoderBlock.msg" NAME_WE)
add_dependencies(sick_lms100_generate_messages_cpp _sick_lms100_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderDeviceBlock.msg" NAME_WE)
add_dependencies(sick_lms100_generate_messages_cpp _sick_lms100_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderMeasurementParam1Block.msg" NAME_WE)
add_dependencies(sick_lms100_generate_messages_cpp _sick_lms100_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderStatusBlock.msg" NAME_WE)
add_dependencies(sick_lms100_generate_messages_cpp _sick_lms100_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sick_lms100_gencpp)
add_dependencies(sick_lms100_gencpp sick_lms100_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sick_lms100_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(sick_lms100
  "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderEncoderBlock.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sick_lms100
)
_generate_msg_eus(sick_lms100
  "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderStatusBlock.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sick_lms100
)
_generate_msg_eus(sick_lms100
  "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderMeasurementParam1Block.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sick_lms100
)
_generate_msg_eus(sick_lms100
  "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderDeviceBlock.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sick_lms100
)

### Generating Services

### Generating Module File
_generate_module_eus(sick_lms100
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sick_lms100
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(sick_lms100_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(sick_lms100_generate_messages sick_lms100_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderEncoderBlock.msg" NAME_WE)
add_dependencies(sick_lms100_generate_messages_eus _sick_lms100_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderDeviceBlock.msg" NAME_WE)
add_dependencies(sick_lms100_generate_messages_eus _sick_lms100_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderMeasurementParam1Block.msg" NAME_WE)
add_dependencies(sick_lms100_generate_messages_eus _sick_lms100_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderStatusBlock.msg" NAME_WE)
add_dependencies(sick_lms100_generate_messages_eus _sick_lms100_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sick_lms100_geneus)
add_dependencies(sick_lms100_geneus sick_lms100_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sick_lms100_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(sick_lms100
  "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderEncoderBlock.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sick_lms100
)
_generate_msg_lisp(sick_lms100
  "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderStatusBlock.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sick_lms100
)
_generate_msg_lisp(sick_lms100
  "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderMeasurementParam1Block.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sick_lms100
)
_generate_msg_lisp(sick_lms100
  "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderDeviceBlock.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sick_lms100
)

### Generating Services

### Generating Module File
_generate_module_lisp(sick_lms100
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sick_lms100
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(sick_lms100_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(sick_lms100_generate_messages sick_lms100_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderEncoderBlock.msg" NAME_WE)
add_dependencies(sick_lms100_generate_messages_lisp _sick_lms100_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderDeviceBlock.msg" NAME_WE)
add_dependencies(sick_lms100_generate_messages_lisp _sick_lms100_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderMeasurementParam1Block.msg" NAME_WE)
add_dependencies(sick_lms100_generate_messages_lisp _sick_lms100_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderStatusBlock.msg" NAME_WE)
add_dependencies(sick_lms100_generate_messages_lisp _sick_lms100_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sick_lms100_genlisp)
add_dependencies(sick_lms100_genlisp sick_lms100_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sick_lms100_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(sick_lms100
  "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderEncoderBlock.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sick_lms100
)
_generate_msg_nodejs(sick_lms100
  "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderStatusBlock.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sick_lms100
)
_generate_msg_nodejs(sick_lms100
  "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderMeasurementParam1Block.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sick_lms100
)
_generate_msg_nodejs(sick_lms100
  "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderDeviceBlock.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sick_lms100
)

### Generating Services

### Generating Module File
_generate_module_nodejs(sick_lms100
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sick_lms100
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(sick_lms100_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(sick_lms100_generate_messages sick_lms100_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderEncoderBlock.msg" NAME_WE)
add_dependencies(sick_lms100_generate_messages_nodejs _sick_lms100_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderDeviceBlock.msg" NAME_WE)
add_dependencies(sick_lms100_generate_messages_nodejs _sick_lms100_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderMeasurementParam1Block.msg" NAME_WE)
add_dependencies(sick_lms100_generate_messages_nodejs _sick_lms100_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderStatusBlock.msg" NAME_WE)
add_dependencies(sick_lms100_generate_messages_nodejs _sick_lms100_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sick_lms100_gennodejs)
add_dependencies(sick_lms100_gennodejs sick_lms100_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sick_lms100_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(sick_lms100
  "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderEncoderBlock.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sick_lms100
)
_generate_msg_py(sick_lms100
  "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderStatusBlock.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sick_lms100
)
_generate_msg_py(sick_lms100
  "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderMeasurementParam1Block.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sick_lms100
)
_generate_msg_py(sick_lms100
  "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderDeviceBlock.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sick_lms100
)

### Generating Services

### Generating Module File
_generate_module_py(sick_lms100
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sick_lms100
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(sick_lms100_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(sick_lms100_generate_messages sick_lms100_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderEncoderBlock.msg" NAME_WE)
add_dependencies(sick_lms100_generate_messages_py _sick_lms100_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderDeviceBlock.msg" NAME_WE)
add_dependencies(sick_lms100_generate_messages_py _sick_lms100_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderMeasurementParam1Block.msg" NAME_WE)
add_dependencies(sick_lms100_generate_messages_py _sick_lms100_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nhamtung/TungNV/MyFirstRobot/example_ws/src/sick_lms100/msg/RadarPreHeaderStatusBlock.msg" NAME_WE)
add_dependencies(sick_lms100_generate_messages_py _sick_lms100_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sick_lms100_genpy)
add_dependencies(sick_lms100_genpy sick_lms100_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sick_lms100_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sick_lms100)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sick_lms100
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sick_lms100)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sick_lms100
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sick_lms100)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sick_lms100
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sick_lms100)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sick_lms100
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sick_lms100)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sick_lms100\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sick_lms100
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
