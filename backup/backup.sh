#!/bin/bash

SOURCE=/mnt/library
DEST=/mnt/backup
CMD="rsync -vry --progress --partial --size-only -e ssh -T -c arcfour -o Compression=no -x --exclude *.dmg" -n
DIRS=$(cat <<-END
Android
Audio Books
Backup
Books
Documents
Home
Music
Pictures
Seagate
Software
Taxes
Torrent
Videos
END
)


for d in $DIRS
do
    echo $CMD $SOURCE/$d $DEST/
done

