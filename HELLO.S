; Hello, World! en assembleur pour Atari ST
; Par Vretrocomputing, 2019.

	move.l	#message,-(sp)
	move.w	#9,-(sp)	;Cconws
	trap	#1		;GEMDOS
	addq.l	#6,sp

	move.w	#8,-(sp)	;Cnecin
	trap	#1		;GEMDOS
	addq.l	#2,sp

	clr.w	-(sp)		;Pterm0
	trap	#1		;GEMDOS

message:
	DC.B	"Hello, World!",13,10,0

