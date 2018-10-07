project(Quazip)

find_package(ZLIB REQUIRED)

set(HEADERS
    crypt.h
    ioapi.h
    JlCompress.h
    quaadler32.h
    quachecksum32.h
    quacrc32.h
    quagzipfile.h
    quaziodevice.h
    quazipdir.h
    quazipfile.h
    quazipfileinfo.h
    quazip_global.h
    quazip.h
    quazipnewinfo.h
    unzip.h
    zip.h
)

set(SOURCES
    JlCompress.cpp
    qioapi.cpp
    quaadler32.cpp
    quacrc32.cpp
    quagzipfile.cpp
    quaziodevice.cpp
    quazip.cpp
    quazipdir.cpp
    quazipfile.cpp
    quazipfileinfo.cpp
    quazipnewinfo.cpp
)

add_library(quazip SHARED ${HEADERS} ${SOURCES})

target_compile_definitions(quazip PRIVATE QUAZIP_BUILD)

target_link_libraries(quazip Qt5::Core z)

target_include_directories(quazip PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
