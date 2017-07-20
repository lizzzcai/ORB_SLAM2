echo "Configuring and building Thirdparty/DBoW2 ..."

cd Thirdparty/DBoW2
rm -r -f build
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j2

cd ../../g2o

echo "Configuring and building Thirdparty/g2o ..."
rm -r -f build
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j2

cd ../../../

echo "Uncompress vocabulary ..."

cd Vocabulary
tar -xf ORBvoc.txt.tar.gz
cd ..

echo "Configuring and building ORB_SLAM2 ..."
rm -r -f build
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j2

cd ..

echo "Converting vocabulary to binary"
chmod +x ./tools/bin_vocabulary.cc
./tools/bin_vocabulary
