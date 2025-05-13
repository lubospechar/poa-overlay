EAPI=8

DESCRIPTION="Audiolibrix Manager for Linux (.deb repack)"
HOMEPAGE="https://www.audiolibrix.com/"
SRC_URI="https://d2emjept89nv7b.cloudfront.net/assets/Manager/v220/audiolibrix-manager_2.2.0_amd64.deb -> ${P}.deb"

LICENSE="all-rights-reserved"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RESTRICT="mirror bindist"

S=${WORKDIR}

src_unpack() {
    ar x "${DISTDIR}/${P}.deb" || die "Failed to extract .deb package"
    mkdir "${S}/deb-extract" || die "Failed to create extraction directory"
    cd "${S}/deb-extract" || die
    tar -xf ../data.tar.* || die "Failed to extract data.tar.*"
}

src_install() {
    cp -r "${S}/deb-extract"/* "${D}" || die "Failed to copy files to destination"
}
