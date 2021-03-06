cmake \
-D TPL_ENABLE_MPI:BOOL=ON \
-D BUILD_SHARED_LIBS:BOOL=ON \
-D CMAKE_BUILD_TYPE:STRING=RELEASE \
-D CMAKE_VERBOSE_MAKEFILE:BOOL=TRUE \
-D TPL_ENABLE_HDF5:BOOL=ON \
-D HDF5_INCLUDE_DIRS:PATH=/InstalledPackages/HDF5/include \
-D HDF5_LIBRARY_DIRS:PATH=/InstalledPackages/HDF5/lib \
-D TPL_ENABLE_Netcdf:BOOL=ON \
-D Netcdf_INCLUDE_DIRS:PATH=/InstalledPackages/NETCDF/include \
-D Netcdf_LIBRARY_DIRS:PATH=/InstalledPackages/NETCDF/lib \
-D TPL_ENABLE_ExodusII:BOOL=OFF \
-D TPL_ENABLE_GLM=OFF \
-D TPL_ENABLE_BLAS=ON \
-D TPL_ENABLE_LAPACK=ON \
-D TPL_ENABLE_Boost=ON \
-D TPL_ENABLE_BoostLib=ON \
-D TPL_Boost_INCLUDE_DIRS=/InstalledPackages/boost_1_58_0 \
-D TPL_BoostLib_INCLUDE_DIRS=/InstalledPackages/boost_1_58_0 \
-D TPL_BoostLib_LIBRARIES=/InstalledPackages/boost_1_58_0/stage/lib \
-D Trilinos_ENABLE_Fortran:BOOL=ON \
-D Trilinos_WARNINGS_AS_ERRORS_FLAGS:STRING="" \
-D Trilinos_ENABLE_TESTS:BOOL=OFF \
-D Trilinos_ENABLE_ALL_PACKAGES:BOOL=OFF \
-D Trilinos_ENABLE_ALL_OPTIONAL_PACKAGES:BOOL=ON \
-D Trilinos_ENABLE_Epetra:BOOL=ON \
-D Trilinos_ENABLE_EpetraExt:BOOL=ON \
-D Trilinos_ENABLE_Tpetra:BOOL=ON \
-D Trilinos_ENABLE_Kokkos:BOOL=ON \
-D Trilinos_ENABLE_Sacado:BOOL=ON \
-D Trilinos_ENABLE_Amesos:BOOL=ON \
-D Trilinos_ENABLE_AztecOO:BOOL=ON \
-D Trilinos_ENABLE_Ifpack:BOOL=ON \
-D Trilinos_ENABLE_Teuchos:BOOL=ON \
-D Trilinos_ENABLE_Rythmos:BOOL=ON \
-D Trilinos_ENABLE_Piro:BOOL=ON \
-D Trilinos_ENABLE_MOOCHO:BOOL=ON \
-D Trilinos_ENABLE_ML:BOOL=ON \
-D Trilinos_ENABLE_Thyra:BOOL=ON \
-D Trilinos_ENABLE_STK:BOOL=OFF \
-D Trilinos_ENABLE_TrilinosCouplings:BOOL=ON \
-D Trilinos_ENABLE_CXX11:BOOL=ON \
-D CMAKE_PREFIX_PATH="/usr/local" \
-D CMAKE_C_COMPILER="/usr/local/openmpi/bin/mpicc"  \
-D CMAKE_CXX_COMPILER="/usr/local/openmpi/bin/mpicxx" \
-D CMAKE_OSX_ARCHITECTURES=x86_64 \
-D CMAKE_INSTALL_PREFIX=../install \
../trilinos-12.4.2-Source



-D CMAKE_INSTALL_PREFIX:PATH=$TRILINOS_DIR \