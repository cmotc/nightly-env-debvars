#! /bin/sh
. export_deb_vars
pwd
dh_make --indep --createorig -p "$DEBFOLDERNAME"
ls
grep -v makefile debian/rules > debian/rules.new 
mv debian/rules.new debian/rules 
for line in $SOURCEBIN; do
	echo $line usr/bin > debian/install
done
\rm debian/*.ex
\rm debian/*.EX
MESSAGE="$DEBVERSION"
dpkg-source --commit . "$MESSAGE"
debuild -us -uc > ../log 

