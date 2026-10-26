# Cbash
Cbash is/was the userspace shell for tinosle before forgotten and restored. The goal of this project is to revive it and bring tinosle alive again!

## Modifying
If you want to use this on your linux distro then go ahead, but please change the tinos version to be your OS version and remove any and all refrences to tinos

## Building
To build simply run:
```Shell
make
```

## Building TinosLE
TinosLE is basicly just cbash. So why not include cbash, but in a different branch?

You'll need to compile the kernel before doing anything else.

Compiling cbash is simple, just run `make` in the root of this project.

Then you need to copy the compiled kernel into a folder called `iso` in the root of this project. Then run the buildISoFromKernelToBootWith.sh script to create a bootable iso image.

### Why not include the kernel?
Well... Because the kernel is a whole different project and I don't want to include it in this project. So if you want to build tinosle then you'll need to compile the kernel first. Also note that you're going to be configuring the kernel.

