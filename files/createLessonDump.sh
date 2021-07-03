#!/bin/bash
# to be run at the top of a given lesson
#it needs html2text script, which can be easily installed
#dump the text of a lesson:
html2text -utf8 _site/aio/index.html > files/lessonDump.txt
#and trim the blank space at the beginning:
sed -i '/./,$!d' files/lessonDump.txt 
