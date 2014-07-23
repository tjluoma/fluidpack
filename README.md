fluidpack
=========

Two scripts to “pack" (read: archive) and “unpack” (read: unarchive) a Fluid.app browser so it can be copied from one Mac to another.


### fluidpack.sh

`fluidpack.sh` will save all of the necessary files, including the app itself and all of its related files, into a `tar.bz2` file on your Desktop. You can then (manually) copy it to another Mac and install it using `fluidunpack.sh`

### fluidunpack.sh

`fluidunpack.sh` will “unpack”  the `tar.bz2` file and install the necessary pieces and parts to use it (and its related settings) on another Mac.

