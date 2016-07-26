:: cannot build flann from within the source directory
mkdir build
cd build

cmake -G "NMake Makefiles" ^
      -D CMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
      -D CMAKE_BUILD_TYPE=Release ^
 	  -D BUILD_MATLAB_BINDINGS=OFF ^
 	  -D BUILD_PYTHON_BINDINGS=OFF ^
 	  -D BUILD_EXAMPLES=OFF ^
 	  -D BUILD_DOC=OFF ^
      ..
if errorlevel 1 exit 1

nmake
if errorlevel 1 exit 1

nmake install
if errorlevel 1 exit 1
