#Programmer: Branden Hidalgo
#Program:    Assignment 2
#Course:     CSCI 463
#Instructor: John Winans
#Date Due:   10/15/19

00 0 0 0 0 0 0 0 0 00 00 00 # alu_q = r0 + r0, do nothing
00 0 0 0 0 0 0 0 0 00 00 00 # alu_q = r0 + r0, reset
00 0 0 0 0 0 0 0 0 00 00 00 # alu_q = r0 + r0, finish the reset

00 0 1 1 0 0 0 0 0 01 01 01 # r1 = r1 + r1 + 1, setup for store into r1
00 0 1 0 0 0 0 0 0 01 01 01 # r1 = r1 + r1 + 1, complete the store: r1=1

00 0 0 1 0 0 0 0 0 01 01 01 # r1 = r1 + r1 + 0, setup for store into r1
00 0 0 0 0 0 0 0 0 01 01 01 # r1 = r1 + r1 + 0, complete the store: r1=2

00 0 0 1 0 0 0 0 0 01 01 01 # r1 = r1 + r1 + 0, setup for store into r1
00 0 0 0 0 0 0 0 0 01 01 01 # r1 = r1 + r1 + 0, complete the store: r1=4

00 0 0 1 0 0 0 0 0 01 01 01 # r1 = r1 + r1 + 0, setup for store into r1
00 0 0 0 0 0 0 0 0 01 01 01 # r1 = r1 + r1 + 0, complete the store: r1=8

00 0 0 1 0 0 0 0 0 01 01 01 # r1 = r1 + r1 + 0, setup for store into r1
00 0 0 0 0 0 0 0 0 01 01 01 # r1 = r1 + r1 + 0, complete the store: r1=10

00 0 0 1 0 0 0 0 0 01 01 01 # r1 = r1 + r1 + 0, setup for store into r1
00 0 0 0 0 0 0 0 0 01 01 01 # r1 = r1 + r1 + 0, complete the store: r1=20

00 0 0 1 0 0 0 0 0 01 01 01 # r1 = r1 + r1 + 0, setup for store into r1
00 0 0 0 0 0 0 0 0 01 01 01 # r1 = r1 + r1 + 0, complete the store: r1=40


00 0 0 1 0 0 0 0 0 10 01 10 # r2 = r1 + r2 + 0, setup for store into r2
00 0 0 0 0 0 0 0 0 10 01 10 # r2 = r1 + r2 + 0, complete the store: r2=40


00 0 1 1 0 0 0 0 0 01 00 01 # r1 = r1 + r0 + 1, setup for store into r1
00 0 1 0 0 0 0 0 0 01 00 01 # r1 = r1 + r0 + 1, complete the store: r1=41


00 0 0 1 0 0 0 0 0 10 10 10 # r2 = r2 + r2 + 0, set up for store into r2
00 0 0 0 0 0 0 0 0 10 10 10 # r2 = r2 + r2 + 0, complete the store: r2=80

00 0 0 0 0 1 0 0 0 00 10 00 # mar = r2 + r0, setup to store into mar
00 0 0 0 0 0 0 0 0 00 10 00 # mar = r2 + r0, complete the store: mar=80

00 0 0 0 0 0 0 1 0 00 01 00 # mbr = r1 + r0, setup to store into mbr
00 0 0 0 0 0 0 0 0 00 01 00 # mbr = r1 + r0, complete the store: mbr=41

00 0 0 0 0 0 1 0 0 00 00 00 # mem = mbr, setup to store into mem(0)
00 0 0 0 0 0 0 0 0 00 00 00 # complete the store: mem(0) = 41

00 0 1 1 0 0 0 0 0 01 01 00 # r1 = r1 + r0 + 1, setup to store into r1
00 0 1 0 0 0 0 0 0 01 01 00 # r1 = r1 + r0 + 1, complete the store: r1=42

00 0 1 1 0 0 0 0 0 10 10 00 # r2 = r2 + r0 + 1, setup for store into r2
00 0 1 0 0 0 0 0 0 10 10 00 # r2 = r2 + r0 + 1, complete the store: r2=81

00 0 0 0 0 1 0 0 0 00 10 00 # mar = r2 + r0, setup to store into mar
00 0 0 0 0 0 0 0 0 00 10 00 # mar = r2 + r0, complete the store: mar=81

00 0 0 0 0 0 0 1 0 00 01 00 # mbr = r1 + r0, setup to store into mbr
00 0 0 0 0 0 0 0 0 00 01 00 # mbr = r1 + r0, complete the store: mbr=42

00 0 0 0 0 0 1 0 0 00 00 00 # mem = mbr, setup to store into mem(1)
00 0 0 0 0 0 0 0 0 00 00 00 # complete the store: mem(1) = 42

00 0 1 1 0 0 0 0 0 01 01 00 # r1 = r1 + r0 + 1, setup to store into r1
00 0 1 0 0 0 0 0 0 01 01 00 # r1 = r1 + r0 + 1, complete the store: r1=42

00 0 1 1 0 0 0 0 0 10 10 00 # r2 = r2 + r0 + 1, setup for store into r2
00 0 1 0 0 0 0 0 0 10 10 00 # r2 = r2 + r0 + 1, complete the store: r2=82

00 0 0 0 0 1 0 0 0 00 10 00 # mar = r2 + r0, setup to store into mar
00 0 0 0 0 0 0 0 0 00 10 00 # mar = r2 + r0, complete the store: mar=82

00 0 0 0 0 0 0 1 0 00 01 00 # mbr = r1 + r0, setup to store into mbr
00 0 0 0 0 0 0 0 0 00 01 00 # mbr = r1 + r0, complete the store: mbr=43

00 0 0 0 0 0 1 0 0 00 00 00 # mem = mbr, setup to store into mem(1)
00 0 0 0 0 0 0 0 0 00 00 00 # complete the store: mem(1) = 43

00 0 1 1 0 0 0 0 0 01 01 00 # r1 = r1 + r0 + 1, setup to store into r1
00 0 1 0 0 0 0 0 0 01 01 00 # r1 = r1 + r0 + 1, complete the store: r1=44

00 0 1 1 0 0 0 0 0 10 10 00 # r2 = r2 + r0 + 1, setup for store into r2
00 0 1 0 0 0 0 0 0 10 10 00 # r2 = r2 + r0 + 1, complete the store: r2=83

00 0 0 0 0 1 0 0 0 00 10 00 # mar = r2 + r0, setup to store into mar
00 0 0 0 0 0 0 0 0 00 10 00 # mar = r2 + r0, complete the store: mar=83

00 0 0 0 0 0 0 1 0 00 01 00 # mbr = r1 + r0, setup to store into mbr
00 0 0 0 0 0 0 0 0 00 01 00 # mbr = r1 + r0, complete the store: mbr=44

00 0 0 0 0 0 1 0 0 00 00 00 # mem = mbr, setup to store into mem(1)
00 0 0 0 0 0 0 0 0 00 00 00 # complete the store: mem(1) = 44

00 0 1 1 0 0 0 0 0 01 01 00 # r1 = r1 + r0 + 1, setup to store into r1
00 0 1 0 0 0 0 0 0 01 01 00 # r1 = r1 + r0 + 1, complete the store: r1=45

00 0 1 1 0 0 0 0 0 10 10 00 # r2 = r2 + r0 + 1, setup for store into r2
00 0 1 0 0 0 0 0 0 10 10 00 # r2 = r2 + r0 + 1, complete the store: r2=84

00 0 0 0 0 1 0 0 0 00 10 00 # mar = r2 + r0, setup to store into mar
00 0 0 0 0 0 0 0 0 00 10 00 # mar = r2 + r0, complete the store: mar=84

00 0 0 0 0 0 0 1 0 00 01 00 # mbr = r1 + r0, setup to store into mbr
00 0 0 0 0 0 0 0 0 00 01 00 # mbr = r1 + r0, complete the store: mbr=45

00 0 0 0 0 0 1 0 0 00 00 00 # mem = mbr, setup to store into mem(1)
00 0 0 0 0 0 0 0 0 00 00 00 # complete the store: mem(1) = 45

00 0 1 1 0 0 0 0 0 01 01 00 # r1 = r1 + r0 + 1, setup to store into r1
00 0 1 0 0 0 0 0 0 01 01 00 # r1 = r1 + r0 + 1, complete the store: r1=46

00 0 1 1 0 0 0 0 0 10 10 00 # r2 = r2 + r0 + 1, setup for store into r2
00 0 1 0 0 0 0 0 0 10 10 00 # r2 = r2 + r0 + 1, complete the store: r2=85

00 0 0 0 0 1 0 0 0 00 10 00 # mar = r2 + r0, setup to store into mar
00 0 0 0 0 0 0 0 0 00 10 00 # mar = r2 + r0, complete the store: mar=85

00 0 0 0 0 0 0 1 0 00 01 00 # mbr = r1 + r0, setup to store into mbr
00 0 0 0 0 0 0 0 0 00 01 00 # mbr = r1 + r0, complete the store: mbr=46

00 0 0 0 0 0 1 0 0 00 00 00 # mem = mbr, setup to store into mem(1)
00 0 0 0 0 0 0 0 0 00 00 00 # complete the store: mem(1) = 46

00 0 1 1 0 0 0 0 0 01 01 00 # r1 = r1 + r0 + 1, setup to store into r1
00 0 1 0 0 0 0 0 0 01 01 00 # r1 = r1 + r0 + 1, complete the store: r1=47

00 0 1 1 0 0 0 0 0 10 10 00 # r2 = r2 + r0 + 1, setup for store into r2
00 0 1 0 0 0 0 0 0 10 10 00 # r2 = r2 + r0 + 1, complete the store: r2=86

00 0 0 0 0 1 0 0 0 00 10 00 # mar = r2 + r0, setup to store into mar
00 0 0 0 0 0 0 0 0 00 10 00 # mar = r2 + r0, complete the store: mar=86

00 0 0 0 0 0 0 1 0 00 01 00 # mbr = r1 + r0, setup to store into mbr
00 0 0 0 0 0 0 0 0 00 01 00 # mbr = r1 + r0, complete the store: mbr=47

00 0 0 0 0 0 1 0 0 00 00 00 # mem = mbr, setup to store into mem(1)
00 0 0 0 0 0 0 0 0 00 00 00 # complete the store: mem(1) = 47

00 0 1 1 0 0 0 0 0 01 01 00 # r1 = r1 + r0 + 1, setup to store into r1
00 0 1 0 0 0 0 0 0 01 01 00 # r1 = r1 + r0 + 1, complete the store: r1=48

00 0 1 1 0 0 0 0 0 10 10 00 # r2 = r2 + r0 + 1, setup for store into r2
00 0 1 0 0 0 0 0 0 10 10 00 # r2 = r2 + r0 + 1, complete the store: r2=87

00 0 0 0 0 1 0 0 0 00 10 00 # mar = r2 + r0, setup to store into mar
00 0 0 0 0 0 0 0 0 00 10 00 # mar = r2 + r0, complete the store: mar=87

00 0 0 0 0 0 0 1 0 00 01 00 # mbr = r1 + r0, setup to store into mbr
00 0 0 0 0 0 0 0 0 00 01 00 # mbr = r1 + r0, complete the store: mbr=48

00 0 0 0 0 0 1 0 0 00 00 00 # mem = mbr, setup to store into mem(1)
00 0 0 0 0 0 0 0 0 00 00 00 # complete the store: mem(1) = 48

