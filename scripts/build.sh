#!/bin/bash

work_dir='../public'

for f in $work_dir/*.md ; do
	base_name="$(basename $f .md)"
	cat $work_dir/$f | \
		md2html -template $work_dir/template.html > \
        $work_dir/$base_name.html
done

