mkdir build
cd build

cmake -G "NMake Makefiles" ^
      -DCMAKE_INSTALL_PREFIX:PATH="%LIBRARY_PREFIX%" ^
      -DCMAKE_BUILD_TYPE:STRING=Release ^
      -DCMAKE_WINDOWS_EXPORT_ALL_SYMBOLS=ON ^
      -DBUILD_MATLAB_BINDINGS:BOOL=OFF ^
      -DBUILD_PYTHON_BINDINGS:BOOL=OFF ^
      -DBUILD_EXAMPLES:BOOL=OFF ^
      -DBUILD_DOC:BOOL=OFF ^
      %SRC_DIR%
if errorlevel 1 exit 1

nmake
if errorlevel 1 exit 1

nmake install
if errorlevel 1 exit 1
