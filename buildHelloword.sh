cd examples/helloworld
rm -rf build
mkdir build
cd build 
cmake -DCMAKE_PREFIX_PATH=/home/delete_data_qos10-31 ..
make
