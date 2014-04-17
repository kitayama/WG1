#! /bin/sh
#----------------------------------------------------------------
# Script to create archive files to be distributed.
# Currently bz2 and zip are supported.
#---------------------------------------------------------------- 
NAME=pgecons-wg1-2013-report
VERSION=1.0
FULLNAME=${NAME}-${VERSION}
TARDIST=${FULLNAME}.tar.bz2
ZIPDIST=${FULLNAME}.zip
FILES="README wg1-2013-report.odt wg1-2013-report.pdf wg1-2013-appendix.odp wg1-2013-appendix.pdf"
tar cf - $FILES|bzip2 -9 -c > $TARDIST
zip -r $ZIPDIST $FILES
