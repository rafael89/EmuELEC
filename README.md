# EmuELEC

[![GPL-2.0 Licensed](https://shields.io/badge/license-GPL2-blue)](https://github.com/rafael89/EmuELEC/blob/main/licenses/GPL2.txt)
[![GitHub Release](https://img.shields.io/github/release/rafael89/EmuELEC.svg)](https://github.com/rafael89/EmuELEC/releases/latest)

### ⚠️**IMPORTANT**⚠️
#### This fork is a continuation of EmuELEC v3.9, the last one released with 32-bit support.
---

## Development

### Build prerequisites

These instructions are only for Debian/Ubuntu based systems.

```
sudo apt install gcc make git unzip wget xz-utils libsdl2-dev libsdl2-mixer-dev libfreeimage-dev libfreetype6-dev libcurl4-openssl-dev rapidjson-dev libasound2-dev libgl1-mesa-dev build-essential libboost-all-dev cmake fonts-droid-fallback libvlc-dev libvlccore-dev vlc-bin texinfo premake4 golang libssl-dev curl patchelf xmlstarlet default-jre xsltproc
```

### Building EmuELEC
To build EmuELEC locally do the following:

```
git clone https://github.com/rafael89/EmuELEC.git EmuELEC
cd EmuELEC
git checkout main
PROJECT=Amlogic ARCH=arm DISTRO=EmuELEC make image
```

**Remember to use the proper DTB for your device!**

### Submitting patches
Please create a pull request with the changes you made in the dev branch and make sure to include a brief description of what you changed and why you did it.

## License

EmuELEC is based on CoreELEC, which in turn is licensed under the GPLv2 (and GPLv2-or-later). All original files created by the EmuELEC team are licensed as GPLv2-or-later and marked as such.

However, the distro contains many non-commercial emulators/libraries/cores/binaries and therefore **cannot be sold, bundled, offered, included in commercial products/applications or anything similar, including but not limited to Android devices, smart TVs, TV boxes, handheld devices, computers, SBCs or anything else that can run EmuELEC** with the included emulators/libraries/cores/binaries.

Also note the license section from the README from the CoreELEC team, which has been adapted for EmuELEC:

As EmuELEC includes code from many upstream projects it includes many copyright owners. EmuELEC makes NO claim of copyright on any upstream code. Patches to upstream code have the same license as the upstream project, unless specified otherwise. For a complete copyright list please checkout the source code to examine license headers. Unless expressly stated otherwise all code submitted to the EmuELEC project (in any form) is licensed under GPLv2-or-later. You are absolutely free to retain copyright. To retain copyright simply add a copyright header to each submitted code page. If you submit code that is not your own work it is your responsibility to place a header stating the copyright.

## Branding

All EmuELEC related logos, videos, images and branding in general are the sole property of EmuELEC. They are all copyrighted by the EmuELEC team and may not be included in any commercial application without proper permission (yes, that includes EmuELEC bundled with ROMS for donations!).

However, you have permission to include/modify them in your forks/projects as long as they are fully open source and freely available (i.e. not under a bunch of "click on this sponsored ad to get the link!" buttons) and do not violate any copyright laws, even if you receive donations for such a project (we are not against donations for honest people!), we just ask that you give us the appropriate credits and if possible a link to this repo.

Happy retrogaming!
