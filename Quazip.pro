QT += core
QT -= gui widgets

TARGET = quazip

PROJECT_ROOT = ../..

DEFINES += QUAZIP_BUILD
LIBS += -lz

SOURCES += \
    qioapi.cpp \
    JlCompress.cpp \
    quaadler32.cpp \
    quacrc32.cpp \
    quagzipfile.cpp \
    quaziodevice.cpp \
    quazip.cpp \
    quazipdir.cpp \
    quazipfile.cpp \
    quazipfileinfo.cpp \
    quazipnewinfo.cpp \
    unzip.c \
    zip.c

HEADERS += \
    crypt.h \
    ioapi.h \
    JlCompress.h \
    quaadler32.h \
    quachecksum32.h \
    quacrc32.h \
    quagzipfile.h \
    quaziodevice.h \
    quazipdir.h \
    quazipfile.h \
    quazipfileinfo.h \
    quazip_global.h \
    quazip.h \
    quazipnewinfo.h \
    unzip.h \
    zip.h

FORMS +=

RESOURCES +=

TRANSLATIONS +=

include($${PROJECT_ROOT}/lib.pri)
