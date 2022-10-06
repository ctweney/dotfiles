#!/bin/bash

LOGFILE="/Users/chris/mirror.log"

echo "`date`: starting mirror" >> $LOGFILE
/opt/homebrew/bin/rsync --archive --executability --xattrs -v --delete "/Users/chris/My Drive/" /Volumes/BigBoid/GoogleDriveMirror/ >> $LOGFILE 2>&1
echo "`date`: mirror complete" >> $LOGFILE
echo "-----------------------" >> $LOGFILE


