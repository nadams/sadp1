#!/bin/sh

FILES=$(ls | grep -vE '.pk3|.sh')

if [ -f sadp1.pk3 ]; then
	rm -rf sadp1.pk3
fi

zip -r9 sadp1.pk3 $FILES -x *.backup* *.dbs *.bak *.db

