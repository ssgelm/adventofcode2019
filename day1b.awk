#!/usr/bin/awk -f

{
  mass=int($1/3)-2
  while (mass > 0) {
    total_mass+=mass
    mass=int(mass/3)-2
  }
}
END {
  print total_mass
}
