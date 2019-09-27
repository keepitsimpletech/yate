TEMPLATE = subdirs

engine.makefile = Makefile.qmake

libs.makefile = Makefile.qmake
libs.depends += engine

modules.makefile = Makefile.qmake
modules.depends += libs

clients.file = clients/qtclient.pro
clients.makefile = Makefile.qmake
clients.depends = modules

SUBDIRS += engine libs modules clients

ALLXCODEPROJS.target = allxcodeprojs
# Note that you have to escape quotes and slashes and $$ in .pro files
ALLXCODEPROJS.commands = find engine libs modules clients -name \"Makefile.qmake\" -print0 | \ 
    while IFS= read -r -d \'\' pathname; do \
    make -f `basename \"\$$pathname\"` -C `dirname \"\$$pathname\"` xcodeproj; \
    done; \
    make -f Makefile.qmake xcodeproj
QMAKE_EXTRA_TARGETS += ALLXCODEPROJS