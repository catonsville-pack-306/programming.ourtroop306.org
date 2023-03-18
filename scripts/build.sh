#!/bin/bash

work_dir='../public'

#find $work_dir -name '*.md' -print

# loop over all the md files and convert them to html
for i in $(find $work_dir -name '*.md' -type f -print) ; do
	base_name=$(echo $i | sed 's/\.md/\.html/')
	cat $i \
		| md2html -template $work_dir/template.html \
		> $base_name
done
