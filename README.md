# YATE - Yet Another Telephony Engine

The [YATE](http://yate.ro) project aims to be a fully featured software PBX.

It was created to alow developers and users to have more functionality and
scalability. To reach this goal YATE is built from two kinds of components:

1. The main engine - telengine
2. Modules 
    - routing modules
    - drivers
    - script language bindings
    - billing modules

Its license is GPL with exceptions (in case of linking with proprietary
software). We have chosen this license to help the growth of this project.

## Building YATE Software

> See [README-qt.md](README-qt.md) to build and run YateClient with Qmake.
> See [README-mac.md](README-mac.md) to build and run YateClient on macOS.

YATE have been tested on Linux and Windows and was ported to FreeBSD.
Please report bugs at bugs@voip.null.ro

To build Yate the quick way is:
```sh
./autogen.sh
./configure
make
make install
```

If you are lacking both doxygen and kdoc you will need to install without the
API documentation:
```sh
make install-noapi
```

1. Building the engine
    - You have just to run `make engine` in the main directory.
2. Building the modules.
    - Run `make modules` in the main directory or `make` in the modules directory.
3. Building the test modules.
    - Run `make test` in the main directory or `make` in the test directory.
    - After you have create the test modules use `mktestlinks` in the modules
directory to make links from test modules into modules directory.
4. Building the classes API documentation
    - Run `make apidocs` in the main directory. You will need to have kdoc or
doxygen installed.
    - Alternatively you can just `make everything` in the main directory which will
build them all.

## Running YATE

> See [README-qt.md](README-qt.md) to build and run YateClient with Qmake.
> See [README-mac.md](README-mac.md) to build and run YateClient on macOS.

You can run YATE directly from the build directory - just use the `run` script
from the main directory:
```sh
./run -vvv
```

You can also install YATE - then you can run it from anywhere:
```sh
yate -vvv
```

On the command line you can use `-v` to increase the verbosity level. If in
doubt run `run --help` (or `yate --help` if installed) to get a list of
possible options. There is also a manual page `man yate` to read.

While running the following signals and keys are trapped and used:

- SIGTERM and SIGINT (Ctrl-C) will cleanly stop the engine
- SIGHUP and SIGQUIT (Ctrl-\) will reinitialize the modules
- SIGUSR1 will gracefully restart a supervised engine
- SIGUSR2 will forcefully restart a supervised engine

## Configuring YATE

Some samples for the configuraton files can be found in the [`conf.d`](conf.d/) directory.
Note that you must rename them without the `.sample` extension or create symlinks
to them.

## Links

### Yate Official Documentation

- [Yate Wiki](https://docs.yate.ro/wiki/Main_Page)