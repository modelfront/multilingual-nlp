#!/usr/bin/env bash

set -e


echo "Downloading files from github repos"

mkdir -p /eager
mkdir -p /general
mkdir -p /italian
mkdir -p /lazy
mkdir -p /multilingual

curl -O https://raw.githubusercontent.com/modelfront/multilingual-nlp/main/data/eager/train_en.es.tsv

mv train_en.es.tsv /eager
