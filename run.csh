
# please install libpointmatcher and libnado for runnig this

clang -I/usr/local/include/pointmatcher -I/usr/local/include/yaml-cpp -o main.o -c main.cpp 
clang main.o   -o main -lpointmatcher -lnabo -lboost_system -lyaml-cpp -lboost_filesystem -lrt

# arguments are -  -v --config surfaceNormalDF.yaml ~/Downloads/PointCloud0.csv ~/Downloads/PointCloud1.csv 
