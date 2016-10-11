SET(SDL2_SEARCH_PATHS
	~/Library/Frameworks
	/Library/Frameworks
	/usr/local
	/usr
	/sw # Fink
	/opt/local # DarwinPorts
	/opt/csw # Blastwave
	/opt
)

FIND_PATH(SDL2IMAGE_INCLUDE_DIR SDL_image.h
	HINTS
	$ENV{SDL2DIR}
	PATH_SUFFIXES include/SDL2 include
	PATHS ${SDL2_SEARCH_PATHS}
)

FIND_LIBRARY(SDL2IMAGE_LIBRARY
	NAMES SDL2_image
	HINTS
	$ENV{SDL2DIR}
	PATH_SUFFIXES lib64 lib
	PATHS ${SDL2_SEARCH_PATHS}
)

INCLUDE(FindPackageHandleStandardArgs)

FIND_PACKAGE_HANDLE_STANDARD_ARGS(SDL2IMAGE REQUIRED_VARS SDL2IMAGE_LIBRARY SDL2IMAGE_INCLUDE_DIR)
