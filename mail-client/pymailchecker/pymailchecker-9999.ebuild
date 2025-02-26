EAPI=8

PYTHON_COMPAT=( python3_{11,12,13} )
inherit python-r1

DESCRIPTION="A Python application for checking emails"
HOMEPAGE="https://github.com/lubospechar/pymailchecker"
SRC_URI="https://github.com/lubospechar/pymailchecker/archive/refs/heads/main.tar.gz -> pymailchecker-9999.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

S="${WORKDIR}/pymailchecker-main"

RDEPEND="
    dev-python/requests
"
DEPEND="${RDEPEND}"

src_install() {
    # Instalace všech Python souborů jako modul
    python_foreach_impl python_domodule pymailchecker/

    # Instalace spustitelného souboru do /usr/bin
    newbin pymailchecker/main.py pymailchecker
}
