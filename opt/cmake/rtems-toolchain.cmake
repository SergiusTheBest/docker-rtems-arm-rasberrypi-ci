set(CMAKE_SYSTEM_NAME Generic)

# specify the cross compiler
set(CMAKE_C_COMPILER   /opt/rtems/4.11/bin/arm-rtems4.11-gcc)
set(CMAKE_CXX_COMPILER /opt/rtems/4.11/bin/arm-rtems4.11-g++)
set(CMAKE_AR /opt/rtems/4.11/bin/arm-rtems4.11-ar CACHE FILEPATH "ar")
set(CMAKE_C_COMPILER_AR /opt/rtems/4.11/bin/arm-rtems4.11-ar)
set(CMAKE_CXX_COMPILER_AR /opt/rtems/4.11/bin/arm-rtems4.11-ar)
set(CMAKE_RANLIB /opt/rtems/4.11/bin/arm-rtems4.11-ranlib CACHE FILEPATH "ranlib")
set(CMAKE_C_COMPILER_RANLIB /opt/rtems/4.11/bin/arm-rtems4.11-ranlib)
set(CMAKE_CXX_COMPILER_RANLIB /opt/rtems/4.11/bin/arm-rtems4.11-ranlib)

# where is the target environment
set(CMAKE_FIND_ROOT_PATH  /opt/rtems/4.11)

# search for programs in the build host directories
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM ONLY)
# for libraries and headers in the target directories
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

set(BUILD_SHARED_LIBS OFF)
set(TARGET_SUPPORTS_SHARED_LIBS NO)

include_directories(/opt/rtems/4.11/arm-rtems4.11/include /opt/rtems/4.11/arm-rtems4.11/raspberrypi/lib/include)
set(CMAKE_C_FLAGS_INIT "-B/opt/rtems/4.11/arm-rtems4.11/raspberrypi/lib/ -specs bsp_specs -qrtems -mcpu=arm1176jzf-s" CACHE STRING "default C flags")
set(CMAKE_CXX_FLAGS_INIT "-B/opt/rtems/4.11/arm-rtems4.11/raspberrypi/lib/ -specs bsp_specs -qrtems -mcpu=arm1176jzf-s" CACHE STRING "default CXX flags")