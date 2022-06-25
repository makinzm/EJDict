#!/bin/sh

file="word_meaning.db"
COMMAND='.separator "\t"\n.import src/'

touch $file

echo "create table myTable(word TEXT, meaning TEXT);" | sqlite3 $file

for i in a.txt  c.txt   e.txt   g.txt   i.txt   k.txt   m.txt   o.txt   q.txt   s.txt   u.txt   w.txt   y.txt b.txt   d.txt   f.txt   h.txt   j.txt   l.txt   n.txt   p.txt   r.txt   t.txt   v.txt   x.txt   z.txt
do
echo "${COMMAND}${i} myTable" | sqlite3 $file
done

