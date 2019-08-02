include(../../YateGlobal.pri)

TARGET = $$basename(OUT_PWD)
TEMPLATE = lib

CONFIG += staticlib

DESTDIR = ../../build/libs
OBJECTS_DIR = $${DESTDIR}/$$TARGET

INCLUDEPATH += ../..

SOURCES += $$files(*.cpp)
HEADERS += $$files(*.h)
