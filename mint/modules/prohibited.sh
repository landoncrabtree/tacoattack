#!/bin/bash

# Find prohibited media files and save them to a file

FILENAME="prohibited_media_files.txt"

find /home -type f -name "*.mp3" 2>/dev/null >> ./$FILENAME
find /home -type f -name "*.mov" 2>/dev/null >> ./$FILENAME
find /home -type f -name "*.mp4" 2>/dev/null >> ./$FILENAME
find /home -type f -name "*.avi" 2>/dev/null >> ./$FILENAME
find /home -type f -name "*.mpg" 2>/dev/null >> ./$FILENAME
find /home -type f -name "*.mpeg" 2>/dev/null >> ./$FILENAME
find /home -type f -name "*.flac" 2>/dev/null >> ./$FILENAME
find /home -type f -name "*.m4a" 2>/dev/null >> ./$FILENAME
find /home -type f -name "*.flv" 2>/dev/null >> ./$FILENAME
find /home -type f -name "*.ogg" 2>/dev/null >> ./$FILENAME
find /home -type f -name "*.oga" 2>/dev/null >> ./$FILENAME
find /home -type f -name "*.ogv" 2>/dev/null >> ./$FILENAME
find /home -type f -name "*.png" 2>/dev/null >> ./$FILENAME
find /home -type f -name "*.gif" 2>/dev/null >> ./$FILENAME
find /home -type f -name "*.jpg" 2>/dev/null >> ./$FILENAME
find /home -type f -name "*.jpeg" 2>/dev/null >> ./$FILENAME
find /home -type f -name "*.bmp" 2>/dev/null >> ./$FILENAME
find /home -type f -name "*.svg" 2>/dev/null >> ./$FILENAME
find /home -type f -name "*.csv" 2>/dev/null >> ./$FILENAME
find /home -type f -name "*.xls" 2>/dev/null >> ./$FILENAME
find /home -type f -name "*.xlsx" 2>/dev/null >> ./$FILENAME
find /home -type f -name "*.doc" 2>/dev/null >> ./$FILENAME
find /home -type f -name "*.docx" 2>/dev/null >> ./$FILENAME
find /home -type f -name "*.ppt" 2>/dev/null >> ./$FILENAME
find /home -type f -name "*.pptx" 2>/dev/null >> ./$FILENAME
find /home -type f -name "*.pdf" 2>/dev/null >> ./$FILENAME
find /home -type f -name "*.txt" 2>/dev/null >> ./$FILENAME
find /home -type f -name "*.sh" 2>/dev/null >> ./$FILENAME
find /home -type f -name "*.py" 2>/dev/null >> ./$FILENAME
find /home -type f -name "*.rb" 2>/dev/null >> ./$FILENAME
find /home -type f -name "*.pl" 2>/dev/null >> ./$FILENAME
find /home -type f -name "*.php" 2>/dev/null >> ./$FILENAME
find /home -type f -name "*.html" 2>/dev/null >> ./$FILENAME
find /home -type f -name "*.css" 2>/dev/null >> ./$FILENAME
find /home -type f -name "*.js" 2>/dev/null >> ./$FILENAME
find /home -type f -name "*.xml" 2>/dev/null >> ./$FILENAME
find /home -type f -name "*.json" 2>/dev/null >> ./$FILENAME
find /home -type f -name "*.zip" 2>/dev/null >> ./$FILENAME
find /home -type f -name "*.tar" 2>/dev/null >> ./$FILENAME