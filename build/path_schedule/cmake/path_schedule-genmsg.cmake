# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "path_schedule: 1 messages, 1 services")

set(MSG_I_FLAGS "-Ipath_schedule:C:/code_project/catkin_ws/src/path_schedule/msg;-Igeometry_msgs:C:/opt/ros/noetic/x64/share/geometry_msgs/cmake/../msg;-Istd_msgs:C:/opt/ros/noetic/x64/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(path_schedule_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "C:/code_project/catkin_ws/src/path_schedule/msg/msg1.msg" NAME_WE)
add_custom_target(_path_schedule_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "path_schedule" "C:/code_project/catkin_ws/src/path_schedule/msg/msg1.msg" ""
)

get_filename_component(_filename "C:/code_project/catkin_ws/src/path_schedule/srv/path_plan_service.srv" NAME_WE)
add_custom_target(_path_schedule_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "path_schedule" "C:/code_project/catkin_ws/src/path_schedule/srv/path_plan_service.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(path_schedule
  "C:/code_project/catkin_ws/src/path_schedule/msg/msg1.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/path_schedule
)

### Generating Services
_generate_srv_cpp(path_schedule
  "C:/code_project/catkin_ws/src/path_schedule/srv/path_plan_service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/path_schedule
)

### Generating Module File
_generate_module_cpp(path_schedule
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/path_schedule
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(path_schedule_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(path_schedule_generate_messages path_schedule_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "C:/code_project/catkin_ws/src/path_schedule/msg/msg1.msg" NAME_WE)
add_dependencies(path_schedule_generate_messages_cpp _path_schedule_generate_messages_check_deps_${_filename})
get_filename_component(_filename "C:/code_project/catkin_ws/src/path_schedule/srv/path_plan_service.srv" NAME_WE)
add_dependencies(path_schedule_generate_messages_cpp _path_schedule_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(path_schedule_gencpp)
add_dependencies(path_schedule_gencpp path_schedule_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS path_schedule_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(path_schedule
  "C:/code_project/catkin_ws/src/path_schedule/msg/msg1.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/path_schedule
)

### Generating Services
_generate_srv_eus(path_schedule
  "C:/code_project/catkin_ws/src/path_schedule/srv/path_plan_service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/path_schedule
)

### Generating Module File
_generate_module_eus(path_schedule
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/path_schedule
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(path_schedule_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(path_schedule_generate_messages path_schedule_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "C:/code_project/catkin_ws/src/path_schedule/msg/msg1.msg" NAME_WE)
add_dependencies(path_schedule_generate_messages_eus _path_schedule_generate_messages_check_deps_${_filename})
get_filename_component(_filename "C:/code_project/catkin_ws/src/path_schedule/srv/path_plan_service.srv" NAME_WE)
add_dependencies(path_schedule_generate_messages_eus _path_schedule_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(path_schedule_geneus)
add_dependencies(path_schedule_geneus path_schedule_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS path_schedule_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(path_schedule
  "C:/code_project/catkin_ws/src/path_schedule/msg/msg1.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/path_schedule
)

### Generating Services
_generate_srv_lisp(path_schedule
  "C:/code_project/catkin_ws/src/path_schedule/srv/path_plan_service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/path_schedule
)

### Generating Module File
_generate_module_lisp(path_schedule
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/path_schedule
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(path_schedule_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(path_schedule_generate_messages path_schedule_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "C:/code_project/catkin_ws/src/path_schedule/msg/msg1.msg" NAME_WE)
add_dependencies(path_schedule_generate_messages_lisp _path_schedule_generate_messages_check_deps_${_filename})
get_filename_component(_filename "C:/code_project/catkin_ws/src/path_schedule/srv/path_plan_service.srv" NAME_WE)
add_dependencies(path_schedule_generate_messages_lisp _path_schedule_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(path_schedule_genlisp)
add_dependencies(path_schedule_genlisp path_schedule_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS path_schedule_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(path_schedule
  "C:/code_project/catkin_ws/src/path_schedule/msg/msg1.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/path_schedule
)

### Generating Services
_generate_srv_nodejs(path_schedule
  "C:/code_project/catkin_ws/src/path_schedule/srv/path_plan_service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/path_schedule
)

### Generating Module File
_generate_module_nodejs(path_schedule
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/path_schedule
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(path_schedule_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(path_schedule_generate_messages path_schedule_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "C:/code_project/catkin_ws/src/path_schedule/msg/msg1.msg" NAME_WE)
add_dependencies(path_schedule_generate_messages_nodejs _path_schedule_generate_messages_check_deps_${_filename})
get_filename_component(_filename "C:/code_project/catkin_ws/src/path_schedule/srv/path_plan_service.srv" NAME_WE)
add_dependencies(path_schedule_generate_messages_nodejs _path_schedule_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(path_schedule_gennodejs)
add_dependencies(path_schedule_gennodejs path_schedule_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS path_schedule_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(path_schedule
  "C:/code_project/catkin_ws/src/path_schedule/msg/msg1.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/path_schedule
)

### Generating Services
_generate_srv_py(path_schedule
  "C:/code_project/catkin_ws/src/path_schedule/srv/path_plan_service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/path_schedule
)

### Generating Module File
_generate_module_py(path_schedule
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/path_schedule
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(path_schedule_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(path_schedule_generate_messages path_schedule_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "C:/code_project/catkin_ws/src/path_schedule/msg/msg1.msg" NAME_WE)
add_dependencies(path_schedule_generate_messages_py _path_schedule_generate_messages_check_deps_${_filename})
get_filename_component(_filename "C:/code_project/catkin_ws/src/path_schedule/srv/path_plan_service.srv" NAME_WE)
add_dependencies(path_schedule_generate_messages_py _path_schedule_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(path_schedule_genpy)
add_dependencies(path_schedule_genpy path_schedule_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS path_schedule_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/path_schedule)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/path_schedule
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(path_schedule_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(path_schedule_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/path_schedule)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/path_schedule
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(path_schedule_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(path_schedule_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/path_schedule)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/path_schedule
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(path_schedule_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(path_schedule_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/path_schedule)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/path_schedule
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(path_schedule_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(path_schedule_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/path_schedule)
  install(CODE "execute_process(COMMAND \"C:/opt/ros/noetic/x64/python.exe\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/path_schedule\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/path_schedule
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(path_schedule_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(path_schedule_generate_messages_py std_msgs_generate_messages_py)
endif()
