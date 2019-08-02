lessThan(QT_MAJOR_VERSION, 5) {
    error("YateClient requires Qt 5 or greater")
}

include(../YateGlobal.pri)

TARGET = YateClient
TEMPLATE = app

CONFIG += qt
QT += core gui widgets xml network multimedia uitools

DESTDIR = ../build
OBJECTS_DIR = $${DESTDIR}/clients
MOC_DIR = $${DESTDIR}/clients
RCC_DIR = $${DESTDIR}/clients
UI_DIR = $${DESTDIR}/clients

INCLUDEPATH += .. qt4 ../modules/qt4 
unix:!mac:LIBS += -lpthread  # Already included in macOS system lib
# macOS frameworks for coreaudio.cpp
mac:LIBS += -framework CoreFoundation -framework CoreServices -framework CoreAudio -framework AudioUnit -framework AudioToolbox
LIBS += -L$$DESTDIR -lyate -lbasemodules

SOURCES += main-qt4.cpp \
           qt4/qt4client.cpp \
           ../modules/qt4/widgetlist.cpp \
           ../modules/qt4/customtree.cpp \
           ../modules/qt4/customtable.cpp \
           ../modules/qt4/customtext.cpp \
           ../modules/qt4/clientarchive.cpp 
           # ../modules/qt4/updater.cpp    # Need to update to Qt5

mac:SOURCES += ../modules/client/coreaudio.cpp
win32:SOURCES += ../modules/client/dsoundchan.cpp
unix:!mac:SOURCES += ../modules/client/osschan.cpp

HEADERS += qt4/qt4client.h \
           ../modules/qt4/widgetlist.h \
           ../modules/qt4/customtree.h \
           ../modules/qt4/customtable.h \
           ../modules/qt4/customtext.h \
           ../modules/qt4/clientarchive.h 
           # ../modules/qt4/updater.h      # Need to update to Qt5

# Not necessary:
#FORMS += $$files(share/skins/default/*.ui)

CLIENTCONF = ../conf.d/callfork.* \
            ../conf.d/fileinfo.* \
            ../conf.d/moh.* \
            ../conf.d/tonegen.* \
            ../conf.d/ysipchan.* \
            ../conf.d/cdrbuild.* \
            ../conf.d/filetransfer.* \
            ../conf.d/mux.* \
            ../conf.d/yate-qt4.* \
            ../conf.d/ysockschan.* \
            ../conf.d/cdrfile.* \
            ../conf.d/gvoice.* \
            ../conf.d/openssl.* \
            ../conf.d/yiaxchan.* \
            ../conf.d/ystunchan.* \
            ../conf.d/enumroute.* \
            ../conf.d/jabberclient.* \
            ../conf.d/providers.* \
            ../conf.d/yjinglechan.* \
            ../conf.d/zlibcompress.* \
            ../conf.d/extmodule.* \
            ../conf.d/javascript.* \
            ../conf.d/regexroute.* \
            ../conf.d/yrtpchan.* \
            ../conf.d/rmanager.* \

# Generate client conf.d/
COPY_CLIENTCONF.name = Copy client conf.d files
COPY_CLIENTCONF.input = CLIENTCONF
COPY_CLIENTCONF.output = $${DESTDIR}/client-conf.d/${QMAKE_FILE_BASE}
COPY_CLIENTCONF.commands = $$QMAKE_COPY ${QMAKE_FILE_IN} ${QMAKE_FILE_OUT}
COPY_CLIENTCONF.CONFIG += no_link no_clean target_predeps no_check_exist
QMAKE_EXTRA_COMPILERS += COPY_CLIENTCONF

mac {
    ICON = null_team.icns

    CONTENTS_DIR = "Contents"
    RESOURCES_DIR = "Contents/Resources"
    FRAMEWORKS_DIR = "Contents/Frameworks"

    SKINS.files = ../share/skins/default
    SKINS.path = "$$RESOURCES_DIR/share/skins/"
    
    SOUNDS.files = $$files(../share/sounds/*.au) $$files(../share/sounds/*.wav)
    SOUNDS.path = "$$RESOURCES_DIR/share/sounds"

    HELP.files = $$files(../share/help/*.yhlp)
    HELP.path = "$$RESOURCES_DIR/share/help"

    CONFD.files = $${DESTDIR}/client-conf.d/
    CONFD.path = "$$RESOURCES_DIR/conf.d"

    QMAKE_BUNDLE_DATA += SKINS SOUNDS HELP CONFD
}

unix:!mac {
    QMAKE_POST_LINK += $$quote(ln -s libbasemodules.so.1.0.0 $${DESTDIR}/libbasemodules.yate $$escape_expand(\n\t))
}