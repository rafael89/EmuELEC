# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2017-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="pcre2"
PKG_VERSION="10.40"
PKG_SHA256="14e4b83c4783933dc17e964318e6324f7cae1bc75d8f3c79bc6969f00c159d68"
PKG_LICENSE="BSD"
PKG_SITE="https://github.com/PCRE2Project/pcre2/releases/download"
PKG_URL="${PKG_SITE}/pcre2-${PKG_VERSION}/pcre2-${PKG_VERSION}.tar.bz2"
PKG_DEPENDS_HOST="gcc:host"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="A set of functions that implement regular expression pattern matching."
PKG_TOOLCHAIN="configure"
PKG_BUILD_FLAGS="+pic"

PKG_CONFIGURE_OPTS_HOST="--prefix=${TOOLCHAIN} \
             --enable-static \
             --enable-utf8 \
             --enable-unicode-properties \
             --with-gnu-ld"

PKG_CONFIGURE_OPTS_TARGET="--disable-shared \
             --enable-static \
             --enable-utf8 \
             --enable-pcre2-16 \
             --enable-unicode-properties \
             --with-gnu-ld"

post_makeinstall_target() {
  safe_remove ${INSTALL}/usr/bin
  sed -e "s:\(['= ]\)/usr:\\1${SYSROOT_PREFIX}/usr:g" -i ${SYSROOT_PREFIX}/usr/bin/${PKG_NAME}-config
}