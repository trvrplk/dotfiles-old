#! /usr/bin/env bash

# Murder all processes matching a pattern -- from a gist by defunkt
k() { ps | grep $1 | grep -v grep  | awk '{print $1}' | xargs kill -9 }

# Change in to a project directory
c() { cd ~/src/$1/$2 }

rb() { ruby $1 }
rr() { rails $1 }
vt100() { open http://www.ascii-table.com/ansi-escape-sequences-vt-100.php }

ideas() { vim ~/etc/fluid/ideas.yaml }

e() { eval "mvim" }
rbrefs() { find app lib -iname '*.rb' | xargs grep -h '/^[[:space:]]*class\|module \b' | sed 's/^[[:space:]]*//' | cut =d ' ' -f 2 | while read class; do echo `grep -rl "\b$class\b" app lib --include='*.rb' | wc -l` $class; done | sort -n }
