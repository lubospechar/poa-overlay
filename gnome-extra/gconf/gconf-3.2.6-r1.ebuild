EAPI=8

GNOME_TARBALL_SUFFIX="xz"
inherit gnome2

DESCRIPTION="GConf is a configuration database system (needed for older binary apps)"
HOMEPAGE="https://download.gnome.org/sources/GConf/"
SRC_URI="https://download.gnome.org/sources/GConf/3.2/GConf-3.2.6.tar.xz"

LICENSE="LGPL-2+"
SLOT="2"
KEYWORDS="~amd64"
IUSE="introspection"

DEPEND="
    >=dev-libs/glib-2.36:2
    >=dev-libs/dbus-glib-0.76
    >=dev-libs/libxml2-2.6
    introspection? ( >=dev-libs/gobject-introspection-0.10.1 )
"
RDEPEND="${DEPEND}"

S="${WORKDIR}/GConf-3.2.6"

src_prepare() {
    default
    gnome2_src_prepare
}

src_configure() {
    gnome2_src_configure \
        --disable-static \
        --disable-orbit \
        --disable-defaults-service \
        $(use_enable introspection)
}

src_install() {
    gnome2_src_install
}
