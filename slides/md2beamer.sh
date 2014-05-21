#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
FILE=$1
EXTENSION=${FILE##*.}

if [[ $EXTENSION == "md" ]]
then
    pandoc -t slidy -s $FILE -o ${FILE/%.md/.html} -H $DIR/header --mathjax
    perl -pi -e 's/http:\/\/www.w3.org\/Talks/https:\/\/www.w3.org\/Talks/' ${FILE/%.md/.html}
    perl -pi -e 's/http:\/\/cdn.mathjax.org/https:\/\/c328740.ssl.cf1.rackcdn.com/' ${FILE/%.md/.html}
else
    echo "Please specify a Markdown file with .md extension"
fi
