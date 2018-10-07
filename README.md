# Quazip
Quazip library mirror on GitHub

[![Build Status](https://travis-ci.org/0xFEEDC0DE64/Quazip.svg?branch=master)](https://travis-ci.org/0xFEEDC0DE64/Quazip) [![Codacy Badge](https://api.codacy.com/project/badge/Grade/93eb4adf57874f3bbe883c3342e1f230)](https://www.codacy.com/app/0xFEEDC0DE64/Quazip?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=0xFEEDC0DE64/Quazip&amp;utm_campaign=Badge_Grade)

## Building from source
This project can only be built as part of the project structure [DbSoftware](https://github.com/0xFEEDC0DE64/DbSoftware)

```Shell
git clone https://github.com/0xFEEDC0DE64/DbSoftware.git
cd DbSoftware
git submodule update --init --recursive 3rdparty/Quazip
cd ..
mkdir build_DbSoftware
cd build_DbSoftware
qmake CONFIG+=ccache ../DbSoftware
make -j$(nproc) sub-libs
make sub-libs-install_subtargets
./bin/databasetree
```
