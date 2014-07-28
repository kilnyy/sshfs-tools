sshfs-tools
===========

Some bash scripts that help using sshfs simple.

Getting Start
--------

First, you need install `sshfs`.

Maybe http://osxfuse.github.io/ or https://github.com/fuse4x/sshfs

To use these routines,

1. Copy `addfs` and `rmfs` to `/usr/local/bin`.
2. Copy `sshfs-tools.sh` to somewhere (e.g. ~/.sshfs-tools.sh).
3. Add the following line to your .bashrc:
```
source ~/.ssh-tools.sh
```
4. Restart your bash

Then,

Run `addfs user@hostname:/path/to/somewhere` to mount remote file systems.

Run `rmfs hostname` to umount remote file systems.

Notes,

`addfs` history will be saved to auto-complete your remote file systems.

`rmfs` will also auto-complete current mounted remote file systems for you.

License
-------

The MIT License (MIT)

Copyright (c) 2014 Xu Mingzhao

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
