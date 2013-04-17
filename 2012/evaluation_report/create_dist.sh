#! /bin/sh
#----------------------------------------------------------------
# Script to create archive files to be distributed.
# Currently bz2 and zip are supported.
#---------------------------------------------------------------- 
NAME=pgecons-wg1-2012-report
VERSION=1.0
FULLNAME=${NAME}-${VERSION}
TARDIST=${FULLNAME}.tar.bz2
ZIPDIST=${FULLNAME}.zip
FILES="README report.odt report.pdf appendix.odt appendix.pdf 2_scaleup"
tar cf - $FILES|bzip2 -9 -c > $TARDIST
zip -r $ZIPDIST $FILES
