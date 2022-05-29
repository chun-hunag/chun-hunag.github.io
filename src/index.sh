#!/bin/bash
if [ -f .env ]; then
    # Load Environment Variables
    export $(cat .env | grep -v '#' | sed 's/\r$//' | awk '/=/ {print $1}' )
fi
set HEXO_ALGOLIA_INDEXING_KEY=$HEXO_ALGOLIA_INDEXING_KEY
hexo clean
hexo generate
hexo algolia