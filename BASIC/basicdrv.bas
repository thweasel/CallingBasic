# This BASIC file contains an outline for the File system driver
# Bootstrap a program at 27000, C code should be up at 32768
#   1 CLEAR VAL "26999" : LOAD ""CODE : RANDOMIZE USR VAL "27000" : RANDOMIZE USR VAL "0"
#   5 CLEAR VAL "32767" : LOAD ""CODE : RANDOMIZE USR VAL "32768" : RANDOMIZE USR VAL "0"
#
# The run on line 5 jumps back here
1 print at 0,0; "BASIC start..." : pause 100
2 let s$ = "" : let s = 4 : let f = 0 : let d = 0 : let n$ = "" : let a = 0 : let l = 0 : let o$ = ""
3 RANDOMIZE USR VAL "32768" : print at 0,0 "BASIC end..." : pause 100

# This is the line that load starts from
5 CLEAR VAL "32767" : LOAD "" CODE :  run

# Set default drive number (0)
10 print "default drive" : LET d = 0 : STOP  

# Query driver description
7499 print "driver description" : LET s$ = "Dummy driver" : STOP 

# OPEN sequential file (Stream s, Mode f *write, Drive d, Filename $n)
7500 print at 0,0; "OPEN" : pause 100 : STOP
#7500 STOP

# CLOSE sequential file (Stream s)
7550 print at 0,0; "CLOSE" : pause 100 : STOP 

# LOAD block (Address a, Length l, Drive d, Filename n$)
7600 print "LOAD BLOCK" : STOP  

# SAVE block (Address a, Length l, Drive d, Filename n$)
7650 print "SAVE BLOCK" : STOP 

7700 STOP : REM Init printer channel (open #3)
7750 STOP : REM Close printer channel (close #3)

# Hardcopy
7800 print "HARDCOPY" : STOP

# DELETE file (Drive d, Filename n$)
7900 print "DELETE" : STOP

# RENAME file (Drive d, newFilename n$, oldFilename o$)
7950 print "RENAME" : STOP
