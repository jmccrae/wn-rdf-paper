#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
FILE=$1
EXTENSION=${FILE##*.}

if [[ $EXTENSION == "md" ]]
then
    pandoc -t slidy -s $FILE -o ${FILE/%.md/.html} -H $DIR/header --mathjax
    if [[ -z $1 ]]
    then
        perl -pi -e 's/http:\/\/www.w3.org\/Talks/\/\/www.w3.org\/Talks/' ${FILE/%.md/.html}
        perl -pi -e 's/http:\/\/cdn/\/\/cdn/' ${FILE/%.md/.html}
    fi
else
    echo "Please specify a Markdown file with .md extension"
fi
