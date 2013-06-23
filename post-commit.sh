#!/usr/bin/env sh

pages=$(find . | grep '.md$' | grep -v 'README.md' | sort -r)
recent_pages=$(find . | grep '.md$' | grep -v 'README.md' | sort -r | head -n1)

echo '## Recent Posts\n';
for page in $recent_pages;
do
	label=${page:13};
	label=${label//-/ };
	label=${label//.md/};
	
	echo "### $label\n";
	cat $page
	echo '\n';
done

echo '## Table of Contents\n';

for page in $pages;
do
	label=${page:13};
	label=${label//-/ };
	label=${label//.md/};
	page=${page:2}
	echo "* [$label]($page)";
done
