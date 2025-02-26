EAPI=8

PYTHON_COMPAT=( python3_{11,12,13} )
inherit python-r1

DESCRIPTION="Python mail checker"
HOMEPAGE="https://github.com/lubospechar/pymailchecker"
SRC_URI="https://github.com/lubospechar/pymailchecker/archive/refs/heads/main.tar.gz -> pymailchecker-9999.tar.gz"

LICENSE="GPL-3.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

S="${WORKDIR}/pymailchecker-main"

# Pokud nejsou žádné další závislosti, RDEPEND zůstane prázdné.
RDEPEND=""
DEPEND="${RDEPEND}"

src_install() {
    # Instalace modulu z adresáře email_checker
    python_foreach_impl python_domodule email_checker/

    # Instalace spustitelného skriptu pymailchecker.py do /usr/bin jako pymailchecker
    newbin pymailchecker.py pymailchecker
}
