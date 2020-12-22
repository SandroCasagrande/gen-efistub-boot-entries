# gen-efistub-boot-entries
 
This repository consists mainly of a script for maintenance tasks that are useful
for booting Linux EFISTUB kernels. The single purpose is to generate EFI boot
entries from scratch during automatic kernel installation and removal.

The script makes a few assupmtions about the placement of the EFISTUB kernels.
Adaptions to other setups should be easily possible directly in the script. There
exist no separate configuration files.

This project is in experimental status and only sporadically tested.
DO NOT EXPECT STABILITY OR REGULAR FIXES.

## Installation

  * Install gen-efistub-boot-entries form within this directory with `sudo make install`
  * Run it once manually `sudo gen-efistub-boot-entries`

After the initial setup, the EFI boot entries will be generated (from scratch)
automatically when you install or update kernels using apt.

## Requirements

  - Requires bash version 4.4 or later (c.f. mapfile with delimiter)
  - The boot-order is set according to the symlinks maintained by
    linux-update-symlinks from the debian package linux-base. If those
    symlinks are absent, as a fallback, boot-order is sorted by version.

