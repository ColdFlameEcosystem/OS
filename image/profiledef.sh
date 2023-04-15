#!/usr/bin/env bash
# shellcheck disable=SC2034
version="pa0.1"
iso_name="igniteos"
iso_label="IGNITE_$version"
iso_publisher="Coldflame Ecosystem <https://github.com/ColdflameEcosystem>"
iso_application="Ignite OS"
iso_version="$version"
install_dir="ignite"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito'
           'uefi-ia32.grub.esp' 'uefi-x64.grub.esp'
           'uefi-ia32.grub.eltorito' 'uefi-x64.grub.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="erofs"
airootfs_image_tool_options=('-zlzma,9' -E ztailpacking)
file_permissions=(
  ["/etc/shadow"]="0:0:400"
)
