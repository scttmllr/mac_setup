cmake \
-D HDF5_DIR:PATH=/InstalledPackages/hdf5-1.8.13 \
-D HDF5_INCLUDE_DIRS:PATH=/InstalledPackages/HDF5/1.8.13/hdf5/include \
-D HDF5_LIB:PATH=/InstalledPackages/HDF5/1.8.13/hdf5/lib \
-D HDF5_LIBRARIES:PATH=/InstalledPackages/HDF5/1.8.13/hdf5/lib \
-D CMAKE_INSTALL_PREFIX=../install_dir \
../
