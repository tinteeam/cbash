#!/bin/bash
set -e

build_dir="iso"

echo "Creating build directory: $build_dir"
mkdir -p $build_dir/boot


echo "Creating init.cpio..."

cd bin

cp cbash init
find . | cpio -o -H newc > ../$build_dir/boot/init.cpio
cd ..

echo "Building bootable ISO image..."

cp iso/bzImage $build_dir/boot/bzImage

mkdir -p $build_dir/boot/grub
cp boot/grub.cfg $build_dir/boot/grub/grub.cfg


grub-mkrescue -o tinosle.iso $build_dir

echo "Bootable ISO image created: tinosle.iso"