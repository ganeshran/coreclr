include_directories("../../inc")

set(CLR_SOURCES
    mscoree.cpp
    unixinterface.cpp
)

if(WIN32)
list(APPEND CLR_SOURCES
    comcallunmarshal.cpp
    delayload.cpp
    Native.rc
)

set (DEF_SOURCES
  mscorwks_ntdef.src
)
else()
set (DEF_SOURCES
  mscorwks_unixexports.src
)
endif(WIN32)

convert_to_absolute_path(DEF_SOURCES ${DEF_SOURCES})
convert_to_absolute_path(CLR_SOURCES ${CLR_SOURCES})
add_subdirectory(coreclr)
