#!/usr/bin/env sh

function extract_label () {
	page=$1;
	label=${page:13};
	label=${label//-/ };
	label=${label//.md/};
}

function extract_date () {
	page=$1;
	date=${page:2:10};
	date=${date//\//-};
}

pages=$(find . | grep '.md$' | grep -v 'README.md' | sort -r)
recent_pages=$(find . | grep '.md$' | grep -v 'README.md' | sort -r | head -n10)
index=README.md

echo '## Recent Posts\n' > $index;
for page in $recent_pages;
do
	extract_date $page
	extract_label $page;
	echo "### $label ($date)\n" >> $index;
	cat $page >> $index
	echo '\n' >> $index;
done

echo '## Table of Contents\n' >> $index;

for page in $pages;
do
	extract_label $page;	
	page=${page:2}
	echo "* [$label]($page)" >> $index;
done
exit
