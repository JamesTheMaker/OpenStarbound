set(VCPKG_TARGET_ARCHITECTURE arm64)
set(VCPKG_CRT_LINKAGE dynamic)
set(VCPKG_LIBRARY_LINKAGE static)

set(VCPKG_CMAKE_SYSTEM_NAME Darwin)
set(VCPKG_OSX_ARCHITECTURES arm64)

if(PORT MATCHES "discord-")
    set(VCPKG_LIBRARY_LINKAGE dynamic)
endif()

if(PORT MATCHES "opus")
  string(CONCAT VCPKG_CMAKE_CONFIGURE_OPTIONS
    "-DOPUS_INSTALL_PKG_CONFIG_MODULE=OFF"
    "-DOPUS_INSTALL_CMAKE_CONFIG_MODULE=OFF"
    "-DOPUS_ARM_MAY_HAVE_NEON=ON"
    "-DOPUS_ARM_MAY_HAVE_NEON_INTR=ON"
    "-DOPUS_ENABLE_FLOAT_API=ON"
    "-DOPUS_FLOAT_APPROX=ON"
    "-DOPUS_STACK_PROTECTOR=OFF"
    "-DOPUS_NONTHREADSAFE_PSEUDOSTACK=OFF"
    "-DOPUS_USE_ALLOCA=ON"
    "-DBUILD_TESTING=OFF"
  )
endif()