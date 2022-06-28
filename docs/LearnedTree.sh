#!/bin/bash

# make LearnedTree.md file
echo "" > source/LearnedTree.md
echo "# Learned tree" >> source/LearnedTree.md
echo '```' >> source/LearnedTree.md
tree source -I "*.nouse|_*|mytheme|index.rst|image" >> source/LearnedTree.md
echo '```' >> source/LearnedTree.md
