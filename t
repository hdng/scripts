#!/usr/bin/python
# transpose

import sys
nLines = 10000000
sep = '\t'
if len(sys.argv) == 2:
	nLines = int(sys.argv[1])
if len(sys.argv) == 3:
    sep = sys.argv[2]
ss = []
for l in sys.stdin.readlines():
	l = l.strip()
	ws = l.split(sep)
	n = len(ws)
	if ss == []:
		for i in range(n):
			#ss.append('  ' + str(i+1) + '. ' + ws[i])
			ss.append(ws[i])
	else:
		for i in range(n):
			ss[i] += ('\t' + ws[i])
	nLines = nLines - 1
	if nLines == 0: break

for i in range(len(ss)):
	print ss[i]
		
