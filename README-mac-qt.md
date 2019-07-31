# Yate

> **Y**et **A**nother **T**elephony **E**ngine http://yate.ro

## macOS + Qt4

### Install [MacPorts](https://www.macports.org)
```sh
# Using MacPorts install Qt4
sudo port install qt4-mac
# Add /opt/local/libexec/qt4/bin to your shell env PATH for qmake and moc
export PATH="/opt/local/libexec/qt4/bin:$PATH"
```

### [Build Yate](https://docs.yate.ro/wiki/Compiling_and_installing_Yate_from_SVN)
```sh
./autogen.sh
./configure
make
```

### Run Yate Client
```sh
cd clients
./run-qt4
```

## Links

### Yate Official Documentation

- [Yate Wiki](https://docs.yate.ro/wiki/Main_Page)
