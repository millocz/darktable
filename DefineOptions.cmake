option(USE_CAMERA_SUPPORT "Detect and use camera support if available." ON)
option(USE_NLS "Build Native Language Support (using gettext)" ON)
option(USE_COLORD "Enable colord support" ON)
option(USE_MAP "Build Map View parts" ON)
option(USE_LUA "Build lua scripting support" ON)
option(DONT_USE_INTERNAL_LUA "Never fall back to the intree copy of lua" ON)
option(USE_FLICKR "Enable Flickr support" ON)
option(USE_KWALLET "Build kwallet password storage back-end" ON)
option(USE_LIBSECRET "Build libsecret password storage back-end" ON)
option(USE_UNITY "Use libunity to report progress in the launcher" OFF)
option(USE_OPENMP "Use openmp threading support." ON)
option(USE_OPENCL "Use OpenCL support." ON)
option(USE_GRAPHICSMAGICK "Use GraphicsMagick library for image import." ON)
option(USE_IMAGEMAGICK "Use ImageMagick library for image import." OFF)
option(USE_DARKTABLE_PROFILING OFF)
option(CUSTOM_CFLAGS "Don't override compiler optimization flags." OFF)
option(BUILD_USERMANUAL "Build all the versions of the usermanual." OFF)
option(BINARY_PACKAGE_BUILD "Sets march optimization to generic" OFF)
option(USE_XMLLINT "Run xmllint to test if darktableconfig.xml is valid" ON)
option(USE_PORTMIDI "Enable MIDI device support using PortMidi" ON)
option(USE_OPENJPEG "Enable JPEG 2000 support" ON)
option(USE_JXL "Enable JPEG XL support" ON)
option(USE_WEBP "Enable WebP export support" ON)
option(USE_AVIF "Enable AVIF support" ON)
option(USE_HEIF "Enable HEIF/HEIC support" ON)
option(USE_XCF "Enable XCF support" ON)
option(USE_ISOBMFF "Enable ISOBMFF support" ON)
option(USE_LIBRAW "Enable LibRAW support" ON)
option(BUILD_CMSTEST "Build a test program to check your system's color management setup" ON)
option(USE_OPENEXR "Enable OpenEXR support" ON)
option(BUILD_PRINT "Build the print module" ON)
option(BUILD_RS_IDENTIFY "Build the darktable-rs-identify debug aid" ON)
option(BUILD_SSE2_CODEPATHS "(EXPERIMENTAL OPTION, DO NOT DISABLE) Building SSE2-optimized codepaths" ON)
option(VALIDATE_APPDATA_FILE "Use appstream-util (if found) to validate the .appdata file" OFF)
option(BUILD_BATTERY_INDICATOR "Add an icon to the top toolbar showing the state of a laptop battery" OFF)
option(BUILD_MSYS2_INSTALL "Build an MSYS2 version of the install, aka for Windows platform, but without dependency installs" OFF)
option(BUILD_NOISE_TOOLS "Build tools for generating noise profiles" OFF)
option(BUILD_CURVE_TOOLS "Build tools for generating base and tone curves" OFF)
option(USE_LENSFUN "Enable LensFun support" ON)
option(USE_GMIC "Use G'MIC image processing framework." ON)
option(USE_ICU "Use ICU - International Components for Unicode." ON)
option(USE_GAME "Build 1st April easter egg game" ON)
option(FORCE_COLORED_OUTPUT "Always produce ANSI-colored output (GNU/Clang only)." OFF)

if (USE_OPENCL)
    option(TESTBUILD_OPENCL_PROGRAMS "Test-compile opencl programs (needs llvm and clang 3.9+)" ON)
else ()
    set(TESTBUILD_OPENCL_PROGRAMS OFF)
endif ()

if(APPLE)
    option(USE_MAC_INTEGRATION "Enable OS X integration" ON)
else(APPLE)
    set(USE_MAC_INTEGRATION OFF)
endif(APPLE)
