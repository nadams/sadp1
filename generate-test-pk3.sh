#!/bin/sh

FILES=$(ls | grep -vE '.pk3|.sh')
CURRENT_REVISION=$(git log --pretty=format:'%h' -n 1)

if [ -f sadp1-$CURRENT_REVISION.pk3 ]; then
	rm -rf sadp1-$CURRENT_REVISION.pk3
fi

zip -9r sadp1-$CURRENT_REVISION.pk3 $FILES -x *.backup* *.dbs *.bak *.db
