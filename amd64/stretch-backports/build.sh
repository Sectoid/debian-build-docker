#!/bin/bash

set -e

mk-build-deps --install --tool='apt -o Debug::pkgProblemResolver=yes --no-install-recommends --yes -t stretch-backports' debian/control
rm -f *-build-deps_*.deb

gbp buildpackage -uc -us
