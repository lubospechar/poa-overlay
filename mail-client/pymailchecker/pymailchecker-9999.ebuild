EAPI=8

PYTHON_COMPAT=( python3_{11,12,13} )
inherit distutils-r1 git-r3

DESCRIPTION="A Python application for checking emails"
HOMEPAGE="https://github.com/lubos.pechar/pymailchecker"
EGIT_REPO_URI="https://github.com/lubos.pechar/pymailchecker.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""
KEYWORDS="~amd64"


RDEPEND="
    dev-python/requests
"
DEPEND="${RDEPEND}"
