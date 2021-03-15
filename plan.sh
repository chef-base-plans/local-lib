pkg_name=local-lib
pkg_version=2.000024
pkg_origin=core
pkg_license=('Artistic-2.0')
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_description="create and use a local lib/ for perl modules with PERL5LIB"
pkg_upstream_url='https://github.com/Perl-Toolchain-Gang/local-lib'
pkg_source=https://cpan.metacpan.org/authors/id/H/HA/HAARG/${pkg_name}-${pkg_version}.tar.gz
pkg_filename=${pkg_name}-${pkg_version}.tar.gz
pkg_dirname=${pkg_name}-${pkg_version}
pkg_shasum=2e9b917bd48a0615e42633b2a327494e04610d8f710765b9493d306cead98a05
pkg_deps=(core/glibc core/perl)
pkg_build_deps=(core/gcc core/make core/coreutils core/perl)
pkg_lib_dirs=(lib)
pkg_bin_dirs=(bin)

do_build() {
  perl Makefile.PL --bootstrap=${pkg_prefix} --no-manpages
}
