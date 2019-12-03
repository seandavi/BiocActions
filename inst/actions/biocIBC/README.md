# biocIBC: a preliminary approach to install/build/check of a Bioconductor package in ubuntu-18.04

Artifacts are produced including logs for install and check, and a tarball of the source package, and a .tgz image of the binary installation for the runtime used.

## Inputs

### pkgname

**Required** The name of the package to process.  Default: ROC

### container

**Required** Must provide R runtime.  Default: bioconductor/bioconductor_full:devel

### ystbsll

**Required** Until better introspection is available, `[pkgname]_[version tag].tar.gz` must be supplied; default, which may become stale if it does not agree with the checked out source.  Default: ROC_1.63.0.tar.gz

## Outputs

There are no outputs per se.  Artifacts are produced: install log, check log, source .tar.gz, binary .tgz with a platform tag intercalated in the filename.

TO DO: Run for a matrix of environments (various flavors of linux), create the full library of dependencies, which are available in the install step when it succeeds.
