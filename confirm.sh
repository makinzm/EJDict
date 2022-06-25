#!/bin/sh

file="word_meaning.db"

echo "select count(word) from myTable" | sqlite3 $file
