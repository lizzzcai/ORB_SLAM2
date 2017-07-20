echo "Building ROS nodes"

cd Examples/ROS/ORB_SLAM2
rm -r -f build
mkdir build
cd build
cmake .. -DROS_BUILD_TYPE=Release
make -j2
