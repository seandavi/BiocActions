#!/bin/bash -l

echo "Getting deps for $1"

deps=`/usr/local/bin/Rscript -e "v=BiocManager::version(); library(BiocPkgTools); library(dplyr); library(rjson); z=filter(buildPkgDependencyDataFrame(), dependency=='$1'); cat(toJSON(list(biocvers=as.character(v), query='$1', deps=z[[1]])))" > deps.json`

#cat(toJSON(list(biocvers=as.character(v), query='$1', deps=z[[1]])))

#echo $deps
echo "::set-output name=deps::$deps"

