include(../YateGlobal.pri)

TARGET = yate
TEMPLATE = lib

DESTDIR = ../build
OBJECTS_DIR = $${DESTDIR}/engine

win32:DEFINES += LIBYATE_EXPORTS ATOMIC_OPS HAVE_DNS_NAPTR_DATA

mac|linux:DEFINES += ATOMIC_OPS HAVE_GMTOFF HAVE_INT_TZ HAVE_POLL HAVE_NTOP HAVE_PTON HAVE_GETCWD
# engine/regex/regex.c
mac:DEFINES += STDC_HEADERS
# engine/Mutex.cpp
mac:DEFINES += MUTEX_HACK
linux:DEFINES += HAVE_TIMEDLOCK HAVE_TIMEDWAIT
# engine/Thread.cpp
linux:DEFINES += HAVE_PRCTL
# engine/Socket.cpp
mac:DEFINES += HAVE_GHBN2 HAVE_SOCKADDR_LEN
linux:DEFINES += FDSIZE_HACK=8192 HAVE_GHBN_R HAVE_GHBN2_R HAVE_GHBN2

INCLUDEPATH += .. ./tables ./regex
mac:INCLUDEPATH += ./macosx
linux:INCLUDEPATH -= ./regex
win32:INCLUDEPATH += ../windows

LIBS += -lresolv -lpthread
mac:LIBS += -lobjc -framework Foundation

SOURCES += $$files(*.cpp) $$files(regex/*.c)
mac:SOURCES += $$files(macosx/*.mm)
linux:SOURCES -= $$files(regex/*.c)

HEADERS += $$files(*.h) $$files(tables/*.h) $$files(regex/*.h)
mac:HEADERS += $$files(macosx/*.h)
linux:HEADERS -= $$files(regex/*.h)