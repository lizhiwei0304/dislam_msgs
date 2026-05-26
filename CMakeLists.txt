cmake_minimum_required(VERSION 2.8.3)
project(dislam_msgs)


find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  std_msgs
  sensor_msgs
  nav_msgs
  message_generation
  message_runtime
)

add_message_files(
  DIRECTORY msg
  FILES
  SubMap.msg
  Loop.msg
  Loops.msg
  LoopCandidate.msg
  LoopCandidates.msg
  Descriptor.msg
  NewSubMap.msg
)

add_service_files(
  FILES
  GetDescribe.srv
  GetKeyframe.srv
  GetOdom.srv
  GetDescOdomBatch.srv
  GetKeyframeBatch.srv
)

generate_messages(
  DEPENDENCIES
  geometry_msgs
  sensor_msgs  
  std_msgs
  nav_msgs
)


catkin_package(
  CATKIN_DEPENDS 
  message_runtime 
  message_generation
  geometry_msgs
  sensor_msgs
  std_msgs  
  nav_msgs
)

include_directories(
  ${catkin_INCLUDE_DIRS}
)



