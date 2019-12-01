#!/usr/bin/awk -f

{
  mass+=int($1/3)-2
}
END {
  print mass
}
