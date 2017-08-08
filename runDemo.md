./Examples/Monocular/mono_tum Vocabulary/ORBvoc.bin Examples/Monocular/TUM1.yaml /home/ubuntu/DATASET/rgbd_dataset_freiburg1_floor

./Examples/Monocular/mono_tum Vocabulary/ORBvoc.bin Examples/Monocular/TUM1.yaml /home/ubuntu/DATASET/rgbd_dataset_freiburg1_xyz

# Holland

./Examples/Monocular/mono_tum Vocabulary/ORBvoc.bin Examples/Monocular/CM3.yaml /home/ubuntu/DATASET/slam_data/hollandroad

# Holland1

./Examples/Monocular/mono_tum Vocabulary/ORBvoc.bin Examples/Monocular/CM3undistort.yaml /home/ubuntu/DATASET/slam_data/hollandroad1

#village

./Examples/Monocular/mono_tum Vocabulary/ORBvoc.bin Examples/Monocular/phantom3.yaml /home/ubuntu/DATASET/slam_data/village-kfs

#Holland_5000

./Examples/Monocular/mono_tum Vocabulary/ORBvoc.bin Examples/Monocular/CM3undistort.yaml /home/ubuntu/DATASET/slam_data/2017_6_7_11_26_47_orb

./Examples/Monocular/mono_tum Vocabulary/ORBvoc.txt Examples/Monocular/CM3undistort.yaml /home/ubuntu/DATASET/slam_data/2017_6_7_11_26_47_orb


# ROS

rosrun ORB_SLAM2 Mono Vocabulary/ORBvoc.bin Examples/Monocular/CM3_16306439.yaml
rosrun ORB_SLAM2 Mono Vocabulary/ORBvoc.txt Examples/Monocular/CM3undistort.yaml
rosrun ORB_SLAM2 Mono Vocabulary/ORBvoc.bin Examples/Monocular/pg_16305821.yaml

# ROS bag

rosrun ORB_SLAM2 Mono Vocabulary/ORBvoc.txt Examples/Monocular/TUM1.yaml /camera/image_raw:=/camera/rgb/image_color

rosbag play --pause /home/ubuntu/DATASET/rosbagdata/floor/rgbd_dataset_freiburg1_floor.bag /camera/image_raw:=/camera/rgb/image_color



# AR 


rosrun flea3 flea3_list_cameras
roslaunch flea3 single_node.launch device:=16306439
rosrun rqt_image_view rqt_image_view

rosrun pointgrey_camera_driver list_cameras
roslaunch pointgrey_camera_driver camera.launch


rosrun ORB_SLAM2 MonoAR Vocabulary/ORBvoc.bin Examples/Monocular/CM3_16306439.yaml

