TERMUX_PKG_HOMEPAGE=https://github.com/denisidoro/skyscraper
TERMUX_PKG_DESCRIPTION="An interactive cheatsheet tool for the command-line"
TERMUX_PKG_LICENSE="Apache-2.0"
TERMUX_PKG_MAINTAINER="@denisidoro"
TERMUX_PKG_VERSION=4.1.0
TERMUX_PKG_REVISION=2
TERMUX_PKG_SRCURL=https://github.com/denisidoro/skyscraper/archive/v$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=87735659c1c6dac8cd35cc1bb4c49b5a27c78ce59715cafb4c8d4f067c5ed07e
TERMUX_PKG_DEPENDS="qt5-qtbase"
TERMUX_PKG_BUILD_DEPENDS="qt5-qtbase-cross-tools"

termux_step_make_install() {
   pwd
   ls
   export PATH="${TERMUX_PREFIX}/opt/qt/cross/bin:${PATH}"
cd 
   ./scripts/install
	install -Dm755 -t $TERMUX_PREFIX/bin Skyscraper
}
