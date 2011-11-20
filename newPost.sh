#!/bin/bash

Date=$(date "+%Y-%m-%d-")
File="_posts/"$Date$1".textile"
touch $File
Content="---\n"
Content=$Content"layout: post\n"
Content=$Content"title: "$2"\n"
Content=$Content"category: sitelog\n"
Content=$Content"---\n\n"
Content=$Content"h3.$2"
echo "blog \"$File\" has created!"
echo $Content >> $File

