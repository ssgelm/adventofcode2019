#!/usr/local/bin/gawk -f
BEGIN {
  RS=","
  FS="\n"
}
{
  intcode[NR-1] = $1
}
END {
  if (noun) intcode[1] = noun
  if (verb) intcode[2] = verb
  for (num in intcode) {
    if (num % 4 != 0) {
      continue
    }
    opcode=intcode[num]
    if (opcode == "99") {
      break
    }

    p1 = intcode[num+1]
    n1 = intcode[p1]
    p2 = intcode[num+2]
    n2 = intcode[p2]
    answerpos = intcode[num+3]

    switch (opcode) {
      case "1":
      total = n1 + n2
      break
      case "2":
      total = n1 * n2
      break
    }

    intcode[answerpos]=total
  }

  print intcode[0]
}
