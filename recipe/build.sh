#!/bin/bash

set -xe

sed -i.bak 's,/usr/bin/perl -w,/usr/bin/env -S perl -w,' colordiff.pl

/usr/bin/env --help

make DESTDIR=$PREFIX INSTALL_DIR=/bin MAN_DIR=/man/man1 ETC_DIR=/etc install
