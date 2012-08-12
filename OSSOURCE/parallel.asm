
;    MMURTL Operating System Source Code
;    Written by Richard A. Burgess
 
;    This code is released to the public domain. 
;     "Share and enjoy....."   ;) 


.DATA
EXTRN _AllocExch FWORD
EXTRN _InitDevDr FWORD
EXTRN _UnMaskIRQ FWORD
EXTRN _MaskIRQ FWORD
EXTRN _SetIRQVector FWORD
EXTRN _EndOfIRQ FWORD
EXTRN _SendMsg FWORD
EXTRN _ISendMsg FWORD
EXTRN _WaitMsg FWORD
EXTRN _CheckMsg FWORD
EXTRN _GetTimerTick FWORD
EXTRN _Alarm FWORD
EXTRN _KillAlarm FWORD
EXTRN _Sleep FWORD
EXTRN _MicroDelay FWORD
EXTRN _OutByte FWORD
EXTRN _InByte FWORD
EXTRN _CopyData FWORD
EXTRN _SpawnTask FWORD
EXTRN _GetJobNum FWORD
_xmit_timeout DD 100
_control_byte DB 0
PUBLIC _SendBuf DB 4096 DUP(0)
_head_send DD 0h
_tail_send DD 0h
_cSendBuf DD 0h
_sSendBuf DD 0h
_burstcount DD 0h
_strobecount DD 0h
_DAT DW 0h
_STA DW 0h
_STC DW 0h
_lptStk DD 200 DUP(0)
_lptStkTop DD 0h
_lptstat DB 61 DUP(0)
_pPS DD 0h
_lptdcb DB 64 DUP(0)


.CODE
_lpt_task:
	PUSH EBP
	MOV EBP,ESP
L_1:
	MOV EAX,1
	AND EAX,EAX
	JZ L_2
	MOVZX EAX,_STA
	PUSH EAX
	CALL FWORD PTR _InByte
	MOV _control_byte, AL
	MOV ESI,OFFSET _lptstat
	XOR EAX,EAX
	MOV AL,_control_byte
	MOV BYTE PTR [ESI+12], AL
	MOV EAX,_cSendBuf
	AND EAX,EAX
	JZ L_3
	MOV EAX,10
	MOV _burstcount, EAX
L_4:
	MOV EAX,_cSendBuf
	AND EAX,EAX
	JZ L_6
	MOV EAX,_burstcount
	DEC _burstcount
L_6:
	AND EAX,EAX
	JZ L_5
	MOVZX EAX,_STA
	PUSH EAX
	CALL FWORD PTR _InByte
	MOV _control_byte, AL
	MOV ESI,OFFSET _lptstat
	XOR EAX,EAX
	MOV AL,_control_byte
	MOV BYTE PTR [ESI+12], AL
	XOR EAX,EAX
	MOV AL,_control_byte
	MOV ECX,128
	AND EAX,ECX
	JZ L_7
	CLI
	MOV EAX,_tail_send
	MOV ESI,OFFSET _SendBuf
	ADD ESI,EAX
	XOR EAX,EAX
	MOV AL,BYTE PTR [ESI]
	PUSH EAX
	MOVZX EAX,_DAT
	PUSH EAX
	CALL FWORD PTR _OutByte
	INC _tail_send
	MOV EAX,_tail_send
	CMP EAX,_sSendBuf
	SETE AL
	AND AL,AL
	JZ L_8
	XOR EAX,EAX
	MOV _tail_send, EAX
L_8:
	DEC _cSendBuf
	MOV EAX,_cSendBuf
	STI
	PUSH 13
	MOVZX EAX,_STC
	PUSH EAX
	CALL FWORD PTR _OutByte
	PUSH 12
	MOVZX EAX,_STC
	PUSH EAX
	CALL FWORD PTR _OutByte
	JMP L_9
L_7:
	PUSH 2
	CALL FWORD PTR _Sleep
L_9:
	JMP L_4
L_5:
	PUSH 1
	CALL FWORD PTR _Sleep
	JMP L_10
L_3:
	PUSH 30
	CALL FWORD PTR _Sleep
L_10:
	JMP L_1
L_2:
	POP EBP
	RETN
PUBLIC _lpt_setup:
	PUSH EBP
	MOV EBP,ESP
	SUB ESP,4
	MOV ESI,OFFSET _lptdcb
	MOV EAX,76
	MOV BYTE PTR [ESI], AL
	MOV ESI,OFFSET _lptdcb
	MOV EAX,1
	ADD ESI,EAX
	MOV EAX,80
	MOV BYTE PTR [ESI], AL
	MOV ESI,OFFSET _lptdcb
	MOV EAX,2
	ADD ESI,EAX
	MOV EAX,84
	MOV BYTE PTR [ESI], AL
	MOV ESI,OFFSET _lptdcb
	MOV EAX,3
	MOV BYTE PTR [ESI+12], AL
	MOV ESI,OFFSET _lptdcb
	MOV EAX,2
	MOV BYTE PTR [ESI+13], AL
	MOV ESI,OFFSET _lptdcb
	MOV EAX,1
	MOV WORD PTR [ESI+14], AX
	MOV ESI,OFFSET _lptdcb
	XOR EAX,EAX
	MOV DWORD PTR [ESI+20], EAX
	MOV ESI,OFFSET _lptdcb
	MOV EAX,OFFSET _lptdev_op
	MOV DWORD PTR [ESI+24], EAX
	MOV ESI,OFFSET _lptdcb
	MOV EAX,OFFSET _lptdev_init
	MOV DWORD PTR [ESI+28], EAX
	MOV ESI,OFFSET _lptdcb
	MOV EAX,OFFSET _lptdev_stat
	MOV DWORD PTR [ESI+32], EAX
	MOV ESI,OFFSET _lptstat
	MOV EAX,100
	MOV DWORD PTR [ESI+29], EAX
	MOV ESI,OFFSET _lptstat
	MOV EAX,888
	MOV DWORD PTR [ESI+21], EAX
	MOV ESI,OFFSET _lptstat
	MOV EAX,7
	MOV BYTE PTR [ESI+20], AL
	MOV ESI,OFFSET _lptstat
	MOV EAX,4096
	MOV DWORD PTR [ESI+25], EAX
	MOV EAX,4096
	MOV _sSendBuf, EAX
	MOV ESI,OFFSET _lptstat
	MOV EAX,DWORD PTR [ESI+21]
	MOV _DAT, AX
	MOV ESI,OFFSET _lptstat
	MOV EAX,DWORD PTR [ESI+21]
	ADD EAX,1
	MOV _STA, AX
	MOV ESI,OFFSET _lptstat
	MOV EAX,DWORD PTR [ESI+21]
	ADD EAX,2
	MOV _STC, AX
	XOR EAX,EAX
	MOV _cSendBuf, EAX
	XOR EAX,EAX
	MOV _head_send, EAX
	XOR EAX,EAX
	MOV _tail_send, EAX
	PUSH 8
	MOVZX EAX,_STC
	PUSH EAX
	CALL FWORD PTR _OutByte
	PUSH 100
	CALL FWORD PTR _MicroDelay
	PUSH 12
	MOVZX EAX,_STC
	PUSH EAX
	CALL FWORD PTR _OutByte
	PUSH OFFSET _lpt_task
	PUSH 19
	XOR EAX,EAX
	PUSH EAX
	PUSH OFFSET _lptStkTop
	PUSH 1
	CALL FWORD PTR _SpawnTask
	MOV DWORD PTR [EBP-4], EAX
	MOV EAX,DWORD PTR [EBP-4]
	AND EAX,EAX
	JZ L_11
	MOV EAX,DWORD PTR [EBP-4]
	JMP L_12
L_11:
	PUSH 3
	PUSH OFFSET _lptdcb
	PUSH 1
	PUSH 1
	CALL FWORD PTR _InitDevDr
	MOV DWORD PTR [EBP-4], EAX
L_12:
	MOV ESP,EBP
	POP EBP
	RETN
_WriteByteL:
	PUSH EBP
	MOV EBP,ESP
	SUB ESP,12
	XOR EAX,EAX
	MOV DWORD PTR [EBP-4], EAX
	MOV ESI,OFFSET _lptstat
	MOV EAX,DWORD PTR [ESI+29]
	MOV DWORD PTR [EBP-8], EAX
L_13:
	MOV EAX,_cSendBuf
	CMP EAX,_sSendBuf
	SETE AL
	AND AL,AL
	JZ L_14
	PUSH 1
	CALL FWORD PTR _Sleep
	MOV EAX,DWORD PTR [EBP-8]
	DEC DWORD PTR [EBP-8]
	MOV EAX,DWORD PTR [EBP-8]
	AND EAX,EAX
	JNZ L_15
	MOV EAX,901
	JMP L_16
L_15:
	JMP L_13
L_14:
	CLI
	MOV EAX,_head_send
	MOV ESI,OFFSET _SendBuf
	ADD ESI,EAX
	XOR EAX,EAX
	MOV AL,BYTE PTR [EBP+8]
	MOV BYTE PTR [ESI], AL
	INC _head_send
	MOV EAX,_head_send
	CMP EAX,_sSendBuf
	SETE AL
	AND AL,AL
	JZ L_17
	XOR EAX,EAX
	MOV _head_send, EAX
L_17:
	INC _cSendBuf
	MOV EAX,_cSendBuf
	STI
	MOV EAX,DWORD PTR [EBP-4]
L_16:
	MOV ESP,EBP
	POP EBP
	RETN 4
_WriteRecordL:
	PUSH EBP
	MOV EBP,ESP
	SUB ESP,2
	XOR EAX,EAX
	MOV WORD PTR [EBP-2], AX
L_18:
	MOVZX EAX,WORD PTR [EBP+8]
	AND EAX,EAX
	JZ L_20
	MOVSX EAX,WORD PTR [EBP-2]
	AND EAX,EAX
	SETZ AL
	AND AL,AL
L_20:
	JZ L_19
	MOV ESI,DWORD PTR [EBP+12]
	INC DWORD PTR [EBP+12]
	XOR EAX,EAX
	MOV AL,BYTE PTR [ESI]
	PUSH EAX
	CALL _WriteByteL
	MOV WORD PTR [EBP-2], AX
	DEC WORD PTR [EBP+8]
	MOVZX EAX,WORD PTR [EBP+8]
	JMP L_18
L_19:
	MOVSX EAX,WORD PTR [EBP-2]
	MOV ESP,EBP
	POP EBP
	RETN 8
_OpenLPT:
	PUSH EBP
	MOV EBP,ESP
	SUB ESP,11
	LEA EAX,DWORD PTR [EBP-8]
	PUSH EAX
	CALL FWORD PTR _GetJobNum
	MOV ESI,OFFSET _lptstat
	MOV EAX,DWORD PTR [ESI]
	AND EAX,EAX
	JZ L_22
	MOV ESI,OFFSET _lptstat
	MOV EAX,DWORD PTR [EBP-8]
	CMP EAX,DWORD PTR [ESI]
	SETNE AL
	AND AL,AL
	JZ L_23
	MOV EAX,909
	JMP L_24
L_23:
	XOR EAX,EAX
	JMP L_24
L_25:
L_22:
	MOV ESI,OFFSET _lptstat
	MOV EAX,DWORD PTR [EBP-8]
	MOV DWORD PTR [ESI], EAX
	MOV EAX,_cSendBuf
	AND EAX,EAX
	JNZ L_26
	XOR EAX,EAX
	MOV _cSendBuf, EAX
	XOR EAX,EAX
	MOV _head_send, EAX
	XOR EAX,EAX
	MOV _tail_send, EAX
L_26:
	MOV ESI,OFFSET _lptstat
	MOV EAX,DWORD PTR [ESI+21]
	MOV WORD PTR [EBP-10], AX
	MOVZX EAX,WORD PTR [EBP-10]
	MOV _DAT, AX
	MOVZX EAX,WORD PTR [EBP-10]
	MOV ECX,1
	ADD EAX,ECX
	MOV _STA, AX
	MOVZX EAX,WORD PTR [EBP-10]
	MOV ECX,2
	ADD EAX,ECX
	MOV _STC, AX
	XOR EAX,EAX
L_24:
	MOV ESP,EBP
	POP EBP
	RETN
_CloseLPT:
	PUSH EBP
	MOV EBP,ESP
	SUB ESP,8
	LEA EAX,DWORD PTR [EBP-8]
	PUSH EAX
	CALL FWORD PTR _GetJobNum
	MOV ESI,OFFSET _lptstat
	MOV EAX,DWORD PTR [ESI]
	AND EAX,EAX
	JZ L_27
	MOV ESI,OFFSET _lptstat
	MOV EAX,DWORD PTR [EBP-8]
	CMP EAX,DWORD PTR [ESI]
	SETNE AL
	AND AL,AL
	JZ L_28
	MOV EAX,912
	JMP L_29
L_28:
	XOR EAX,EAX
	JMP L_29
L_30:
	JMP L_31
L_27:
	MOV EAX,907
	JMP L_29
L_31:
	MOVSX EAX,WORD PTR [EBP+8]
	AND EAX,EAX
	JZ L_32
	XOR EAX,EAX
	MOV _cSendBuf, EAX
	XOR EAX,EAX
	MOV _head_send, EAX
	XOR EAX,EAX
	MOV _tail_send, EAX
L_32:
	MOV ESI,OFFSET _lptstat
	XOR EAX,EAX
	MOV DWORD PTR [ESI], EAX
	XOR EAX,EAX
L_29:
	MOV ESP,EBP
	POP EBP
	RETN 4
_lptdev_op:
	PUSH EBP
	MOV EBP,ESP
	SUB ESP,9
	LEA EAX,DWORD PTR [EBP-8]
	PUSH EAX
	CALL FWORD PTR _GetJobNum
	MOV ESI,OFFSET _lptstat
	MOV EAX,DWORD PTR [ESI]
	AND EAX,EAX
	SETZ AL
	AND AL,AL
	JZ L_33
	MOV EAX,DWORD PTR [EBP+20]
	CMP EAX,10
	SETNE AL
	AND AL,AL
L_33:
	JZ L_34
	MOV EAX,907
	JMP L_35
L_34:
	MOV ESI,OFFSET _lptstat
	MOV EAX,DWORD PTR [ESI]
	AND EAX,EAX
	JZ L_36
	MOV ESI,OFFSET _lptstat
	MOV EAX,DWORD PTR [ESI]
	CMP EAX,DWORD PTR [EBP-8]
	SETNE AL
	AND AL,AL
	JZ L_37
	MOV EAX,DWORD PTR [EBP-8]
	CMP EAX,1
	SETNE AL
	AND AL,AL
L_37:
	JZ L_38
	MOV EAX,912
	JMP L_35
L_38:
L_36:
	XOR EAX,EAX
	MOV DWORD PTR [EBP-4], EAX
	MOV EAX,DWORD PTR [EBP+20]
	JMP L_40
L_41:
	JMP L_39
L_42:
	MOV ESI,DWORD PTR [EBP+8]
	XOR EAX,EAX
	MOV AL,BYTE PTR [ESI]
	PUSH EAX
	CALL _WriteByteL
	MOV DWORD PTR [EBP-4], EAX
	JMP L_39
L_43:
	PUSH DWORD PTR [EBP+8]
	PUSH DWORD PTR [EBP+12]
	CALL _WriteRecordL
	MOV DWORD PTR [EBP-4], EAX
	JMP L_39
L_44:
	MOV ESI,OFFSET _lptstat
	MOV EAX,DWORD PTR [EBP+16]
	MOV DWORD PTR [ESI+29], EAX
	JMP L_39
L_45:
	CALL _OpenLPT
	MOV DWORD PTR [EBP-4], EAX
	JMP L_39
L_46:
	XOR EAX,EAX
	PUSH EAX
	CALL _CloseLPT
	MOV DWORD PTR [EBP-4], EAX
	JMP L_39
L_47:
	PUSH 1
	CALL _CloseLPT
	MOV DWORD PTR [EBP-4], EAX
	JMP L_39
L_48:
	MOV EAX,503
	MOV DWORD PTR [EBP-4], EAX
	JMP L_39
L_40:
	CMP EAX,12
	JE L_47
	CMP EAX,11
	JE L_46
	CMP EAX,10
	JE L_45
	CMP EAX,14
	JE L_44
	CMP EAX,2
	JE L_43
	CMP EAX,32
	JE L_42
	CMP EAX,0
	JE L_41
	JMP L_48
L_39:
	MOV ESI,OFFSET _lptstat
	MOV EAX,DWORD PTR [EBP-4]
	MOV DWORD PTR [ESI+4], EAX
	MOV EAX,DWORD PTR [EBP-4]
L_35:
	MOV ESP,EBP
	POP EBP
	RETN 20
_lptdev_stat:
	PUSH EBP
	MOV EBP,ESP
	SUB ESP,4
	MOV EAX,DWORD PTR [EBP+12]
	CMP EAX,64
	SETA AL
	AND AL,AL
	JZ L_49
	MOV EAX,64
	MOV DWORD PTR [EBP-4], EAX
	JMP L_50
L_49:
	MOV EAX,DWORD PTR [EBP+12]
	MOV DWORD PTR [EBP-4], EAX
L_50:
	MOV ESI,OFFSET _lptstat
	MOV EAX,_cSendBuf
	MOV DWORD PTR [ESI+13], EAX
	PUSH OFFSET _lptstat
	PUSH DWORD PTR [EBP+16]
	PUSH DWORD PTR [EBP-4]
	CALL FWORD PTR _CopyData
	MOV ESI,DWORD PTR [EBP+8]
	MOV EAX,DWORD PTR [EBP+12]
	MOV DWORD PTR [ESI], EAX
	XOR EAX,EAX
	MOV ESP,EBP
	POP EBP
	RETN 16
_lptdev_init:
	PUSH EBP
	MOV EBP,ESP
	SUB ESP,19
	XOR EAX,EAX
	MOV DWORD PTR [EBP-4], EAX
	LEA EAX,DWORD PTR [EBP-16]
	PUSH EAX
	CALL FWORD PTR _GetJobNum
	MOV ESI,OFFSET _lptstat
	MOV EAX,DWORD PTR [ESI]
	AND EAX,EAX
	JZ L_52
	MOV ESI,OFFSET _lptstat
	MOV EAX,DWORD PTR [ESI]
	CMP EAX,DWORD PTR [EBP-16]
	SETNE AL
	AND AL,AL
L_52:
	JZ L_53
	MOV EAX,912
	JMP L_54
L_53:
	MOV EAX,DWORD PTR [EBP+8]
	CMP EAX,40
	SETB AL
	AND AL,AL
	JZ L_55
	MOV EAX,927
	JMP L_54
L_55:
	MOV EAX,DWORD PTR [EBP+12]
	MOV _pPS, EAX
	MOV ESI,_pPS
	MOV EAX,DWORD PTR [ESI+29]
	MOV DWORD PTR [EBP-12], EAX
	MOV ESI,_pPS
	MOV EAX,DWORD PTR [ESI+21]
	MOV WORD PTR [EBP-18], AX
	MOV ESI,OFFSET _lptstat
	MOV EAX,DWORD PTR [ESI]
	AND EAX,EAX
	JZ L_56
	MOV ESI,OFFSET _lptstat
	MOV EAX,DWORD PTR [ESI+21]
	MOVZX ECX,WORD PTR [EBP-18]
	CMP EAX,ECX
	SETNE AL
	AND AL,AL
	JZ L_57
	MOV EAX,909
	MOV DWORD PTR [EBP-4], EAX
L_57:
L_56:
	MOV EAX,DWORD PTR [EBP-12]
	AND EAX,EAX
	JNZ L_58
	MOV EAX,100
	MOV DWORD PTR [EBP-12], EAX
L_58:
	MOV ESI,OFFSET _lptstat
	MOV EAX,DWORD PTR [EBP-12]
	MOV DWORD PTR [ESI+29], EAX
	MOVZX EAX,WORD PTR [EBP-18]
	AND EAX,EAX
	JNZ L_59
	MOV EAX,924
	JMP L_54
L_59:
	MOV ESI,OFFSET _lptstat
	MOVZX EAX,WORD PTR [EBP-18]
	MOV DWORD PTR [ESI+21], EAX
	MOV ESI,OFFSET _lptstat
	MOV EAX,DWORD PTR [ESI+21]
	MOV _DAT, AX
	MOV ESI,OFFSET _lptstat
	MOV EAX,DWORD PTR [ESI+21]
	ADD EAX,1
	MOV _STA, AX
	MOV ESI,OFFSET _lptstat
	MOV EAX,DWORD PTR [ESI+21]
	ADD EAX,2
	MOV _STC, AX
	MOV ESI,OFFSET _lptstat
	MOV EAX,DWORD PTR [ESI]
	AND EAX,EAX
	JZ L_60
	MOV EAX,_cSendBuf
	AND EAX,EAX
	SETZ AL
	AND AL,AL
L_60:
	JNZ L_61
	MOV ESI,OFFSET _lptstat
	MOV EAX,DWORD PTR [ESI]
	AND EAX,EAX
	SETZ AL
	AND AL,AL
L_61:
	JZ L_62
	PUSH 8
	MOVZX EAX,_STC
	PUSH EAX
	CALL FWORD PTR _OutByte
	PUSH 100
	CALL FWORD PTR _MicroDelay
	PUSH 12
	MOVZX EAX,_STC
	PUSH EAX
	CALL FWORD PTR _OutByte
L_62:
	XOR EAX,EAX
	MOV DWORD PTR [EBP-4], EAX
	MOV EAX,DWORD PTR [EBP-4]
L_54:
	MOV ESP,EBP
	POP EBP
	RETN 12