# YateClient on macOS

## Install Qt5 from [MacPorts](https://www.macports.org)
```sh
# Using MacPorts install Qt5 and OpenSSL
sudo port install qt5 openssl
# Add /opt/local/libexec/qt4/bin to your shell env PATH for qmake and moc
export PATH="/opt/local/libexec/qt5/bin:$PATH"
```

## RECOMMENDED: Use Qmake to build YateClient

### Build

```sh
./autogen.sh 
./configure  # create yateversn.h
make yatepaths.h  # create yatepaths.h
qmake -o Makefile.qmake Yate.pro  # generate Makefile.qmake
make -f Makefile.qmake
```

### Run

```sh
cd build
DYLD_LIBRARY_PATH=. ./YateClient.app/Contents/MacOS/YateClient -e ../share -c client-conf.d
```

## Traditional Yate Makefile

### [Build Yate](https://docs.yate.ro/wiki/Compiling_and_installing_Yate_from_SVN)
```sh
./autogen.sh
./configure
make
```

### Run
```sh
cd clients
./run-qt4
```
