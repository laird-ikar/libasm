#!/bin/bash

make &> /dev/null
prefix=srcs/testers/test_

echo -n "" > trace.log

printf	"\e[1m\e[38;5;51mstrlen\n\e[0m"
"$prefix"strlen.sh 1 ""
"$prefix"strlen.sh 2 "abcdefghijklmnopqrstuvwxyz"
"$prefix"strlen.sh 3 NULL
printf "\n\n\n\e[0m" >> trace.log
echo ""

printf	"\e[1m\e[38;5;51mstrdup\n\e[0m"
"$prefix"strdup.sh 1		NULL
"$prefix"strdup.sh 1		""
"$prefix"strdup.sh 1		"abcdefghijklmnopqrstuvwxyz"
echo ""

printf	"\e[1m\e[38;5;51mstrcpy\n\e[0m"
"$prefix"strcpy.sh 1 "" ""
"$prefix"strcpy.sh 2 "abcdefghijklmnopqrstuvwxyz" "abcdefghijklmnopqrstuvwxyz"
"$prefix"strcpy.sh 3 "abcdefghijklmnopqrstuvwxyz" "lorem ipsum"
"$prefix"strcpy.sh 4 "lorem ipsum" "abcdefghijklmnopqrstuvwxyz"
"$prefix"strcpy.sh 5 "" "lorem ipsum"
"$prefix"strcpy.sh 6 "lorem ipsum" ""
"$prefix"strcpy.sh 7 NULL "abcdefghijklmnopqrstuvwxyz"
"$prefix"strcpy.sh 8 "abcdefghijklmnopqrstuvwxyz" NULL
"$prefix"strcpy.sh 9 NULL NULL
printf "\n\n\n\e[0m" >> trace.log
echo ""

printf	"\e[1m\e[38;5;51mstrcmp\n\e[0m"
"$prefix"strcmp.sh 1 "" ""
"$prefix"strcmp.sh 2 "abcdefghijklmnopqrstuvwxyz" "abcdefghijklmnopqrstuvwxyz"
"$prefix"strcmp.sh 3 "abcdefghijklmnopqrstuvwxyz" "lorem ipsum"
"$prefix"strcmp.sh 4 "lorem ipsum" "abcdefghijklmnopqrstuvwxyz"
"$prefix"strcmp.sh 5 "" "lorem ipsum"
"$prefix"strcmp.sh 6 "lorem ipsum" ""
"$prefix"strcmp.sh 7 NULL "abcdefghijklmnopqrstuvwxyz"
"$prefix"strcmp.sh 8 "abcdefghijklmnopqrstuvwxyz" NULL
"$prefix"strcmp.sh 9 NULL NULL
printf "\n\n\n\e[0m" >> trace.log
echo ""

printf	"\e[1m\e[38;5;51mwrite\n\e[0m"
"$prefix"write.sh 1		1 "" 0
"$prefix"write.sh 2		1 "bla" 0
"$prefix"write.sh 3		1 "bla" 3
"$prefix"write.sh 4		1 "abcdefghijklmnopqrstuvwxyz" 3
"$prefix"write.sh 5		1 "abcdefghijklmnopqrstuvwxyz" 26
"$prefix"write.sh 6		1 NULL 0
"$prefix"write.sh 7		1 NULL 3
"$prefix"write.sh 8		2 "" 0
"$prefix"write.sh 9		2 "bla" 0
"$prefix"write.sh 10	2 "bla" 3
"$prefix"write.sh 11	2 "abcdefghijklmnopqrstuvwxyz" 3
"$prefix"write.sh 12	2 "abcdefghijklmnopqrstuvwxyz" 26
"$prefix"write.sh 13	2 NULL 0
"$prefix"write.sh 14	2 NULL 3
"$prefix"write.sh 15	-1 "" 0
"$prefix"write.sh 16	-1 "bla" 0
"$prefix"write.sh 17	-1 "bla" 3
"$prefix"write.sh 18	-1 "abcdefghijklmnopqrstuvwxyz" 3
"$prefix"write.sh 19	-1 "abcdefghijklmnopqrstuvwxyz" 26
"$prefix"write.sh 20	-1 NULL 0
"$prefix"write.sh 21	-1 NULL 3
"$prefix"write.sh 22	BROKEN "" 0
"$prefix"write.sh 23	BROKEN "bla" 0
"$prefix"write.sh 24	BROKEN "bla" 3
"$prefix"write.sh 25	BROKEN "abcdefghijklmnopqrstuvwxyz" 3
"$prefix"write.sh 26	BROKEN "abcdefghijklmnopqrstuvwxyz" 26
"$prefix"write.sh 27	BROKEN NULL 0
"$prefix"write.sh 28	BROKEN NULL 3
printf "\n\n\n\e[0m" >> trace.log
echo ""

printf "\e[1m\e[38;5;51mread\n\e[0m"
"$prefix"read.sh 1		EMPTY		10		0
"$prefix"read.sh 2		EMPTY		10		10
"$prefix"read.sh 3		EMPTY		10		20
"$prefix"read.sh 4		EMPTY		20		10
"$prefix"read.sh 5		ALPHABET	10		0
"$prefix"read.sh 6		ALPHABET	10		10
"$prefix"read.sh 7		ALPHABET	20		10
"$prefix"read.sh 8		ALPHABET	10		20
"$prefix"read.sh 9		1			10		0
"$prefix"read.sh 10		1			10		10
"$prefix"read.sh 11		1			20		10
"$prefix"read.sh 12		1			10		20
"$prefix"read.sh 13		2			10		0
"$prefix"read.sh 14		2			10		10
"$prefix"read.sh 15		2			20		10
"$prefix"read.sh 16		2			10		20
"$prefix"read.sh 17		-1			10		0
"$prefix"read.sh 18		-1			10		10
"$prefix"read.sh 19		-1			20		10
"$prefix"read.sh 20		-1			10		20
"$prefix"read.sh 21		BROKEN		10		10
"$prefix"read.sh 22		BROKEN		20		10
"$prefix"read.sh 23		BROKEN		10		20
"$prefix"read.sh 24		WRONLY		10		10
"$prefix"read.sh 25		WRONLY		20		10
"$prefix"read.sh 26		WRONLY		10		20
"$prefix"read.sh 27		ALPHABET	NULL	0
"$prefix"read.sh 28		ALPHABET	NULL	10
"$prefix"read.sh 29		ALPHABET	NULL	20
printf "\n\n\n\e[0m" >> trace.log
echo ""
