std_msgs/Header header
uint8 robot_id
uint32 id

sensor_msgs/PointCloud2 keyframePC
sensor_msgs/Image orthoImage
geometry_msgs/PoseWithCovariance pose
Descriptor describe

float64 q_geo
float64 q_pose
float64 q_spa
float64 q_con
float64 q_total

int32 valid_voxel_num
int32 valid_sector_num
float64 height_range
float64 max_gap_angle
bool is_candidate
