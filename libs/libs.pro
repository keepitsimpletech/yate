include(../YateGlobal.pri)

TEMPLATE = subdirs

SUBDIRS += yrtp ysdp ysip yjabber yiax

yrtp.makefile = Makefile.qmake
ysdp.makefile = Makefile.qmake
ysip.makefile = Makefile.qmake
yjabber.makefile = Makefile.qmake
yiax.makefile = Makefile.qmake
