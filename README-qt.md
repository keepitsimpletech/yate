# YateClient with Qt5

> See [README-mac.md](README-mac.md) to run YateClient on macOS.

## Ubuntu Linux Dependecies (tested on Ubuntu 18.04.2 LTS)

`sudo apt install <dep>`
- libz-dev
- libasound2-dev
- libssl-dev
- qt5-default
- qttools5-dev
- qtmultimedia5-dev

## Centos Linux Dependencies (tested on Centos8)

Enable Powertools repository on Centos 8

- qt5-qtbase-devel
- qt5-devel (From Powertools repository)
- qt5-qtmultimedia-devel
- alsa-lib-devel
- openssl-devel
- zlib-devel
- autoconf
- make
- gcc-c++

## Qmake project to generate Makefile

```sh
./autogen.sh 
./configure  # create yateversn.h
make yatepaths.h  # create yatepaths.h
qmake -o Makefile.qmake Yate.pro  # generate Makefile.qmake (in case of Centos8 command os qmake-qt5)
make -f Makefile.qmake
```

### Run Yate Client

> See [README-mac.md](README-mac.md) to run YateClient on macOS.

On Linux:
```sh
cd build
LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH ./YateClient -e ../share -c client-conf.d -m .
```

## Links

### Reference Links

- https://doc.qt.io/qt-5/qmake-manual.html
- https://doc.qt.io/qt-5.9/osx-deployment.html
- https://wiki.qt.io/Undocumented_QMake

### Blogs

- https://www.toptal.com/qt/vital-guide-qmake
- https://www.ics.com/blog/your-guide-deploying-qt-applications-macos
- https://hodapple.com/blag/posts/2011-11-13-qmake-hackery-dependencies-external-preprocessing.html
- http://colby.id.au/pre-pre-build-commands-with-qmake/

### Real world

- https://github.com/wereturtle/ghostwriter/blob/master/ghostwriter.pro
- https://github.com/OpenBoard-org/OpenBoard/blob/master/OpenBoard.pro
- https://chromium.googlesource.com/chromium/blink/+/9a94733bb98bd2a2b61d3e54ce0d2b8aac316ee2/Tools/qmake/mkspecs/features/default_pre.prf
