.include "macros.inc"

.section .text  # 0x80187970 - 0x8018839C

.global func_80187970
func_80187970:
/* 80187970 00184970  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80187974 00184974  7C 08 02 A6 */	mflr r0
/* 80187978 00184978  3C C0 80 24 */	lis r6, lbl_80245DD8@ha
/* 8018797C 0018497C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80187980 00184980  BF 01 00 10 */	stmw r24, 0x10(r1)
/* 80187984 00184984  7C 7C 1B 78 */	mr r28, r3
/* 80187988 00184988  7C BD 2B 78 */	mr r29, r5
/* 8018798C 0018498C  7C 9F 23 78 */	mr r31, r4
/* 80187990 00184990  3B 66 5D D8 */	addi r27, r6, lbl_80245DD8@l
/* 80187994 00184994  3B C0 00 00 */	li r30, 0
/* 80187998 00184998  38 60 00 00 */	li r3, 0
/* 8018799C 0018499C  48 00 00 A0 */	b lbl_80187A3C
lbl_801879A0:
/* 801879A0 001849A0  80 1B 00 00 */	lwz r0, 0(r27)
/* 801879A4 001849A4  2C 00 00 00 */	cmpwi r0, 0
/* 801879A8 001849A8  41 82 00 0C */	beq lbl_801879B4
/* 801879AC 001849AC  7F F9 FB 78 */	mr r25, r31
/* 801879B0 001849B0  48 00 00 08 */	b lbl_801879B8
lbl_801879B4:
/* 801879B4 001849B4  3B 21 00 08 */	addi r25, r1, 8
lbl_801879B8:
/* 801879B8 001849B8  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 801879BC 001849BC  3B 00 00 04 */	li r24, 4
/* 801879C0 001849C0  80 1C 00 08 */	lwz r0, 8(r28)
/* 801879C4 001849C4  3B 40 00 00 */	li r26, 0
/* 801879C8 001849C8  7C 03 00 50 */	subf r0, r3, r0
/* 801879CC 001849CC  7C 18 00 40 */	cmplw r24, r0
/* 801879D0 001849D0  40 81 00 0C */	ble lbl_801879DC
/* 801879D4 001849D4  3B 40 03 02 */	li r26, 0x302
/* 801879D8 001849D8  7C 18 03 78 */	mr r24, r0
lbl_801879DC:
/* 801879DC 001849DC  38 83 00 10 */	addi r4, r3, 0x10
/* 801879E0 001849E0  7F 23 CB 78 */	mr r3, r25
/* 801879E4 001849E4  7F 05 C3 78 */	mr r5, r24
/* 801879E8 001849E8  7C 9C 22 14 */	add r4, r28, r4
/* 801879EC 001849EC  4B E7 BA 9D */	bl TRK_memcpy
/* 801879F0 001849F0  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 801879F4 001849F4  7C 00 C2 14 */	add r0, r0, r24
/* 801879F8 001849F8  90 1C 00 0C */	stw r0, 0xc(r28)
/* 801879FC 001849FC  80 1B 00 00 */	lwz r0, 0(r27)
/* 80187A00 00184A00  2C 00 00 00 */	cmpwi r0, 0
/* 80187A04 00184A04  40 82 00 2C */	bne lbl_80187A30
/* 80187A08 00184A08  2C 1A 00 00 */	cmpwi r26, 0
/* 80187A0C 00184A0C  40 82 00 24 */	bne lbl_80187A30
/* 80187A10 00184A10  88 19 00 03 */	lbz r0, 3(r25)
/* 80187A14 00184A14  98 1F 00 00 */	stb r0, 0(r31)
/* 80187A18 00184A18  88 19 00 02 */	lbz r0, 2(r25)
/* 80187A1C 00184A1C  98 1F 00 01 */	stb r0, 1(r31)
/* 80187A20 00184A20  88 19 00 01 */	lbz r0, 1(r25)
/* 80187A24 00184A24  98 1F 00 02 */	stb r0, 2(r31)
/* 80187A28 00184A28  88 19 00 00 */	lbz r0, 0(r25)
/* 80187A2C 00184A2C  98 1F 00 03 */	stb r0, 3(r31)
lbl_80187A30:
/* 80187A30 00184A30  7F 43 D3 78 */	mr r3, r26
/* 80187A34 00184A34  3B FF 00 04 */	addi r31, r31, 4
/* 80187A38 00184A38  3B DE 00 01 */	addi r30, r30, 1
lbl_80187A3C:
/* 80187A3C 00184A3C  2C 03 00 00 */	cmpwi r3, 0
/* 80187A40 00184A40  40 82 00 0C */	bne lbl_80187A4C
/* 80187A44 00184A44  7C 1E E8 00 */	cmpw r30, r29
/* 80187A48 00184A48  41 80 FF 58 */	blt lbl_801879A0
lbl_80187A4C:
/* 80187A4C 00184A4C  BB 01 00 10 */	lmw r24, 0x10(r1)
/* 80187A50 00184A50  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80187A54 00184A54  7C 08 03 A6 */	mtlr r0
/* 80187A58 00184A58  38 21 00 30 */	addi r1, r1, 0x30
/* 80187A5C 00184A5C  4E 80 00 20 */	blr 

.global func_80187A60
func_80187A60:
/* 80187A60 00184A60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80187A64 00184A64  7C 08 02 A6 */	mflr r0
/* 80187A68 00184A68  90 01 00 24 */	stw r0, 0x24(r1)
/* 80187A6C 00184A6C  BF 41 00 08 */	stmw r26, 8(r1)
/* 80187A70 00184A70  7C 7A 1B 78 */	mr r26, r3
/* 80187A74 00184A74  7C 9B 23 78 */	mr r27, r4
/* 80187A78 00184A78  7C BC 2B 78 */	mr r28, r5
/* 80187A7C 00184A7C  3B A0 00 00 */	li r29, 0
/* 80187A80 00184A80  38 60 00 00 */	li r3, 0
/* 80187A84 00184A84  48 00 00 50 */	b lbl_80187AD4
lbl_80187A88:
/* 80187A88 00184A88  80 7A 00 0C */	lwz r3, 0xc(r26)
/* 80187A8C 00184A8C  3B C0 00 01 */	li r30, 1
/* 80187A90 00184A90  80 1A 00 08 */	lwz r0, 8(r26)
/* 80187A94 00184A94  3B E0 00 00 */	li r31, 0
/* 80187A98 00184A98  7C 03 00 50 */	subf r0, r3, r0
/* 80187A9C 00184A9C  7C 1E 00 40 */	cmplw r30, r0
/* 80187AA0 00184AA0  40 81 00 0C */	ble lbl_80187AAC
/* 80187AA4 00184AA4  3B E0 03 02 */	li r31, 0x302
/* 80187AA8 00184AA8  7C 1E 03 78 */	mr r30, r0
lbl_80187AAC:
/* 80187AAC 00184AAC  38 83 00 10 */	addi r4, r3, 0x10
/* 80187AB0 00184AB0  7F C5 F3 78 */	mr r5, r30
/* 80187AB4 00184AB4  7C 7B EA 14 */	add r3, r27, r29
/* 80187AB8 00184AB8  7C 9A 22 14 */	add r4, r26, r4
/* 80187ABC 00184ABC  4B E7 B9 CD */	bl TRK_memcpy
/* 80187AC0 00184AC0  80 1A 00 0C */	lwz r0, 0xc(r26)
/* 80187AC4 00184AC4  7F E3 FB 78 */	mr r3, r31
/* 80187AC8 00184AC8  3B BD 00 01 */	addi r29, r29, 1
/* 80187ACC 00184ACC  7C 00 F2 14 */	add r0, r0, r30
/* 80187AD0 00184AD0  90 1A 00 0C */	stw r0, 0xc(r26)
lbl_80187AD4:
/* 80187AD4 00184AD4  2C 03 00 00 */	cmpwi r3, 0
/* 80187AD8 00184AD8  40 82 00 0C */	bne lbl_80187AE4
/* 80187ADC 00184ADC  7C 1D E0 00 */	cmpw r29, r28
/* 80187AE0 00184AE0  41 80 FF A8 */	blt lbl_80187A88
lbl_80187AE4:
/* 80187AE4 00184AE4  BB 41 00 08 */	lmw r26, 8(r1)
/* 80187AE8 00184AE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80187AEC 00184AEC  7C 08 03 A6 */	mtlr r0
/* 80187AF0 00184AF0  38 21 00 20 */	addi r1, r1, 0x20
/* 80187AF4 00184AF4  4E 80 00 20 */	blr 

.global func_80187AF8
func_80187AF8:
/* 80187AF8 00184AF8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80187AFC 00184AFC  7C 08 02 A6 */	mflr r0
/* 80187B00 00184B00  3C A0 80 24 */	lis r5, lbl_80245DD8@ha
/* 80187B04 00184B04  90 01 00 34 */	stw r0, 0x34(r1)
/* 80187B08 00184B08  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 80187B0C 00184B0C  7C 7B 1B 78 */	mr r27, r3
/* 80187B10 00184B10  7C 9E 23 78 */	mr r30, r4
/* 80187B14 00184B14  80 05 5D D8 */	lwz r0, lbl_80245DD8@l(r5)
/* 80187B18 00184B18  2C 00 00 00 */	cmpwi r0, 0
/* 80187B1C 00184B1C  41 82 00 0C */	beq lbl_80187B28
/* 80187B20 00184B20  7F DF F3 78 */	mr r31, r30
/* 80187B24 00184B24  48 00 00 08 */	b lbl_80187B2C
lbl_80187B28:
/* 80187B28 00184B28  3B E1 00 08 */	addi r31, r1, 8
lbl_80187B2C:
/* 80187B2C 00184B2C  80 7B 00 0C */	lwz r3, 0xc(r27)
/* 80187B30 00184B30  3B 80 00 08 */	li r28, 8
/* 80187B34 00184B34  80 1B 00 08 */	lwz r0, 8(r27)
/* 80187B38 00184B38  3B A0 00 00 */	li r29, 0
/* 80187B3C 00184B3C  7C 03 00 50 */	subf r0, r3, r0
/* 80187B40 00184B40  7C 1C 00 40 */	cmplw r28, r0
/* 80187B44 00184B44  40 81 00 0C */	ble lbl_80187B50
/* 80187B48 00184B48  3B A0 03 02 */	li r29, 0x302
/* 80187B4C 00184B4C  7C 1C 03 78 */	mr r28, r0
lbl_80187B50:
/* 80187B50 00184B50  38 83 00 10 */	addi r4, r3, 0x10
/* 80187B54 00184B54  7F E3 FB 78 */	mr r3, r31
/* 80187B58 00184B58  7F 85 E3 78 */	mr r5, r28
/* 80187B5C 00184B5C  7C 9B 22 14 */	add r4, r27, r4
/* 80187B60 00184B60  4B E7 B9 29 */	bl TRK_memcpy
/* 80187B64 00184B64  80 1B 00 0C */	lwz r0, 0xc(r27)
/* 80187B68 00184B68  3C 60 80 24 */	lis r3, lbl_80245DD8@ha
/* 80187B6C 00184B6C  7C 00 E2 14 */	add r0, r0, r28
/* 80187B70 00184B70  90 1B 00 0C */	stw r0, 0xc(r27)
/* 80187B74 00184B74  80 03 5D D8 */	lwz r0, lbl_80245DD8@l(r3)
/* 80187B78 00184B78  2C 00 00 00 */	cmpwi r0, 0
/* 80187B7C 00184B7C  40 82 00 4C */	bne lbl_80187BC8
/* 80187B80 00184B80  2C 1D 00 00 */	cmpwi r29, 0
/* 80187B84 00184B84  40 82 00 44 */	bne lbl_80187BC8
/* 80187B88 00184B88  88 1F 00 07 */	lbz r0, 7(r31)
/* 80187B8C 00184B8C  98 1E 00 00 */	stb r0, 0(r30)
/* 80187B90 00184B90  88 1F 00 06 */	lbz r0, 6(r31)
/* 80187B94 00184B94  98 1E 00 01 */	stb r0, 1(r30)
/* 80187B98 00184B98  88 1F 00 05 */	lbz r0, 5(r31)
/* 80187B9C 00184B9C  98 1E 00 02 */	stb r0, 2(r30)
/* 80187BA0 00184BA0  88 1F 00 04 */	lbz r0, 4(r31)
/* 80187BA4 00184BA4  98 1E 00 03 */	stb r0, 3(r30)
/* 80187BA8 00184BA8  88 1F 00 03 */	lbz r0, 3(r31)
/* 80187BAC 00184BAC  98 1E 00 04 */	stb r0, 4(r30)
/* 80187BB0 00184BB0  88 1F 00 02 */	lbz r0, 2(r31)
/* 80187BB4 00184BB4  98 1E 00 05 */	stb r0, 5(r30)
/* 80187BB8 00184BB8  88 1F 00 01 */	lbz r0, 1(r31)
/* 80187BBC 00184BBC  98 1E 00 06 */	stb r0, 6(r30)
/* 80187BC0 00184BC0  88 1F 00 00 */	lbz r0, 0(r31)
/* 80187BC4 00184BC4  98 1E 00 07 */	stb r0, 7(r30)
lbl_80187BC8:
/* 80187BC8 00184BC8  7F A3 EB 78 */	mr r3, r29
/* 80187BCC 00184BCC  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 80187BD0 00184BD0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80187BD4 00184BD4  7C 08 03 A6 */	mtlr r0
/* 80187BD8 00184BD8  38 21 00 30 */	addi r1, r1, 0x30
/* 80187BDC 00184BDC  4E 80 00 20 */	blr 

.global func_80187BE0
func_80187BE0:
/* 80187BE0 00184BE0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80187BE4 00184BE4  7C 08 02 A6 */	mflr r0
/* 80187BE8 00184BE8  3C A0 80 24 */	lis r5, lbl_80245DD8@ha
/* 80187BEC 00184BEC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80187BF0 00184BF0  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 80187BF4 00184BF4  7C 7B 1B 78 */	mr r27, r3
/* 80187BF8 00184BF8  7C 9F 23 78 */	mr r31, r4
/* 80187BFC 00184BFC  80 05 5D D8 */	lwz r0, lbl_80245DD8@l(r5)
/* 80187C00 00184C00  2C 00 00 00 */	cmpwi r0, 0
/* 80187C04 00184C04  41 82 00 0C */	beq lbl_80187C10
/* 80187C08 00184C08  7F FC FB 78 */	mr r28, r31
/* 80187C0C 00184C0C  48 00 00 08 */	b lbl_80187C14
lbl_80187C10:
/* 80187C10 00184C10  3B 81 00 08 */	addi r28, r1, 8
lbl_80187C14:
/* 80187C14 00184C14  80 7B 00 0C */	lwz r3, 0xc(r27)
/* 80187C18 00184C18  3B A0 00 04 */	li r29, 4
/* 80187C1C 00184C1C  80 1B 00 08 */	lwz r0, 8(r27)
/* 80187C20 00184C20  3B C0 00 00 */	li r30, 0
/* 80187C24 00184C24  7C 03 00 50 */	subf r0, r3, r0
/* 80187C28 00184C28  7C 1D 00 40 */	cmplw r29, r0
/* 80187C2C 00184C2C  40 81 00 0C */	ble lbl_80187C38
/* 80187C30 00184C30  3B C0 03 02 */	li r30, 0x302
/* 80187C34 00184C34  7C 1D 03 78 */	mr r29, r0
lbl_80187C38:
/* 80187C38 00184C38  38 83 00 10 */	addi r4, r3, 0x10
/* 80187C3C 00184C3C  7F 83 E3 78 */	mr r3, r28
/* 80187C40 00184C40  7F A5 EB 78 */	mr r5, r29
/* 80187C44 00184C44  7C 9B 22 14 */	add r4, r27, r4
/* 80187C48 00184C48  4B E7 B8 41 */	bl TRK_memcpy
/* 80187C4C 00184C4C  80 1B 00 0C */	lwz r0, 0xc(r27)
/* 80187C50 00184C50  3C 60 80 24 */	lis r3, lbl_80245DD8@ha
/* 80187C54 00184C54  7C 00 EA 14 */	add r0, r0, r29
/* 80187C58 00184C58  90 1B 00 0C */	stw r0, 0xc(r27)
/* 80187C5C 00184C5C  80 03 5D D8 */	lwz r0, lbl_80245DD8@l(r3)
/* 80187C60 00184C60  2C 00 00 00 */	cmpwi r0, 0
/* 80187C64 00184C64  40 82 00 2C */	bne lbl_80187C90
/* 80187C68 00184C68  2C 1E 00 00 */	cmpwi r30, 0
/* 80187C6C 00184C6C  40 82 00 24 */	bne lbl_80187C90
/* 80187C70 00184C70  88 1C 00 03 */	lbz r0, 3(r28)
/* 80187C74 00184C74  98 1F 00 00 */	stb r0, 0(r31)
/* 80187C78 00184C78  88 1C 00 02 */	lbz r0, 2(r28)
/* 80187C7C 00184C7C  98 1F 00 01 */	stb r0, 1(r31)
/* 80187C80 00184C80  88 1C 00 01 */	lbz r0, 1(r28)
/* 80187C84 00184C84  98 1F 00 02 */	stb r0, 2(r31)
/* 80187C88 00184C88  88 1C 00 00 */	lbz r0, 0(r28)
/* 80187C8C 00184C8C  98 1F 00 03 */	stb r0, 3(r31)
lbl_80187C90:
/* 80187C90 00184C90  7F C3 F3 78 */	mr r3, r30
/* 80187C94 00184C94  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 80187C98 00184C98  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80187C9C 00184C9C  7C 08 03 A6 */	mtlr r0
/* 80187CA0 00184CA0  38 21 00 30 */	addi r1, r1, 0x30
/* 80187CA4 00184CA4  4E 80 00 20 */	blr 

.global func_80187CA8
func_80187CA8:
/* 80187CA8 00184CA8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80187CAC 00184CAC  7C 08 02 A6 */	mflr r0
/* 80187CB0 00184CB0  3C A0 80 24 */	lis r5, lbl_80245DD8@ha
/* 80187CB4 00184CB4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80187CB8 00184CB8  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 80187CBC 00184CBC  7C 7B 1B 78 */	mr r27, r3
/* 80187CC0 00184CC0  7C 9C 23 78 */	mr r28, r4
/* 80187CC4 00184CC4  80 05 5D D8 */	lwz r0, lbl_80245DD8@l(r5)
/* 80187CC8 00184CC8  2C 00 00 00 */	cmpwi r0, 0
/* 80187CCC 00184CCC  41 82 00 0C */	beq lbl_80187CD8
/* 80187CD0 00184CD0  7F 9D E3 78 */	mr r29, r28
/* 80187CD4 00184CD4  48 00 00 08 */	b lbl_80187CDC
lbl_80187CD8:
/* 80187CD8 00184CD8  3B A1 00 08 */	addi r29, r1, 8
lbl_80187CDC:
/* 80187CDC 00184CDC  80 7B 00 0C */	lwz r3, 0xc(r27)
/* 80187CE0 00184CE0  3B C0 00 02 */	li r30, 2
/* 80187CE4 00184CE4  80 1B 00 08 */	lwz r0, 8(r27)
/* 80187CE8 00184CE8  3B E0 00 00 */	li r31, 0
/* 80187CEC 00184CEC  7C 03 00 50 */	subf r0, r3, r0
/* 80187CF0 00184CF0  7C 1E 00 40 */	cmplw r30, r0
/* 80187CF4 00184CF4  40 81 00 0C */	ble lbl_80187D00
/* 80187CF8 00184CF8  3B E0 03 02 */	li r31, 0x302
/* 80187CFC 00184CFC  7C 1E 03 78 */	mr r30, r0
lbl_80187D00:
/* 80187D00 00184D00  38 83 00 10 */	addi r4, r3, 0x10
/* 80187D04 00184D04  7F A3 EB 78 */	mr r3, r29
/* 80187D08 00184D08  7F C5 F3 78 */	mr r5, r30
/* 80187D0C 00184D0C  7C 9B 22 14 */	add r4, r27, r4
/* 80187D10 00184D10  4B E7 B7 79 */	bl TRK_memcpy
/* 80187D14 00184D14  80 1B 00 0C */	lwz r0, 0xc(r27)
/* 80187D18 00184D18  3C 60 80 24 */	lis r3, lbl_80245DD8@ha
/* 80187D1C 00184D1C  7C 00 F2 14 */	add r0, r0, r30
/* 80187D20 00184D20  90 1B 00 0C */	stw r0, 0xc(r27)
/* 80187D24 00184D24  80 03 5D D8 */	lwz r0, lbl_80245DD8@l(r3)
/* 80187D28 00184D28  2C 00 00 00 */	cmpwi r0, 0
/* 80187D2C 00184D2C  40 82 00 1C */	bne lbl_80187D48
/* 80187D30 00184D30  2C 1F 00 00 */	cmpwi r31, 0
/* 80187D34 00184D34  40 82 00 14 */	bne lbl_80187D48
/* 80187D38 00184D38  88 1D 00 01 */	lbz r0, 1(r29)
/* 80187D3C 00184D3C  98 1C 00 00 */	stb r0, 0(r28)
/* 80187D40 00184D40  88 1D 00 00 */	lbz r0, 0(r29)
/* 80187D44 00184D44  98 1C 00 01 */	stb r0, 1(r28)
lbl_80187D48:
/* 80187D48 00184D48  7F E3 FB 78 */	mr r3, r31
/* 80187D4C 00184D4C  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 80187D50 00184D50  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80187D54 00184D54  7C 08 03 A6 */	mtlr r0
/* 80187D58 00184D58  38 21 00 30 */	addi r1, r1, 0x30
/* 80187D5C 00184D5C  4E 80 00 20 */	blr 

.global func_80187D60
func_80187D60:
/* 80187D60 00184D60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80187D64 00184D64  7C 08 02 A6 */	mflr r0
/* 80187D68 00184D68  90 01 00 24 */	stw r0, 0x24(r1)
/* 80187D6C 00184D6C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80187D70 00184D70  3B E0 00 00 */	li r31, 0
/* 80187D74 00184D74  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80187D78 00184D78  3B C0 00 01 */	li r30, 1
/* 80187D7C 00184D7C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80187D80 00184D80  7C 7D 1B 78 */	mr r29, r3
/* 80187D84 00184D84  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 80187D88 00184D88  7C 83 23 78 */	mr r3, r4
/* 80187D8C 00184D8C  80 1D 00 08 */	lwz r0, 8(r29)
/* 80187D90 00184D90  7C 05 00 50 */	subf r0, r5, r0
/* 80187D94 00184D94  7C 1E 00 40 */	cmplw r30, r0
/* 80187D98 00184D98  40 81 00 0C */	ble lbl_80187DA4
/* 80187D9C 00184D9C  3B E0 03 02 */	li r31, 0x302
/* 80187DA0 00184DA0  7C 1E 03 78 */	mr r30, r0
lbl_80187DA4:
/* 80187DA4 00184DA4  38 85 00 10 */	addi r4, r5, 0x10
/* 80187DA8 00184DA8  7F C5 F3 78 */	mr r5, r30
/* 80187DAC 00184DAC  7C 9D 22 14 */	add r4, r29, r4
/* 80187DB0 00184DB0  4B E7 B6 D9 */	bl TRK_memcpy
/* 80187DB4 00184DB4  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 80187DB8 00184DB8  7F E3 FB 78 */	mr r3, r31
/* 80187DBC 00184DBC  7C 00 F2 14 */	add r0, r0, r30
/* 80187DC0 00184DC0  90 1D 00 0C */	stw r0, 0xc(r29)
/* 80187DC4 00184DC4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80187DC8 00184DC8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80187DCC 00184DCC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80187DD0 00184DD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80187DD4 00184DD4  7C 08 03 A6 */	mtlr r0
/* 80187DD8 00184DD8  38 21 00 20 */	addi r1, r1, 0x20
/* 80187DDC 00184DDC  4E 80 00 20 */	blr 

.global func_80187DE0
func_80187DE0:
/* 80187DE0 00184DE0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80187DE4 00184DE4  7C 08 02 A6 */	mflr r0
/* 80187DE8 00184DE8  3C C0 80 24 */	lis r6, lbl_80245DD8@ha
/* 80187DEC 00184DEC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80187DF0 00184DF0  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 80187DF4 00184DF4  7C 7B 1B 78 */	mr r27, r3
/* 80187DF8 00184DF8  7C BC 2B 78 */	mr r28, r5
/* 80187DFC 00184DFC  7C 9E 23 78 */	mr r30, r4
/* 80187E00 00184E00  3B E6 5D D8 */	addi r31, r6, lbl_80245DD8@l
/* 80187E04 00184E04  3B A0 00 00 */	li r29, 0
/* 80187E08 00184E08  38 60 00 00 */	li r3, 0
/* 80187E0C 00184E0C  48 00 00 58 */	b lbl_80187E64
lbl_80187E10:
/* 80187E10 00184E10  80 1F 00 00 */	lwz r0, 0(r31)
/* 80187E14 00184E14  80 7E 00 00 */	lwz r3, 0(r30)
/* 80187E18 00184E18  2C 00 00 00 */	cmpwi r0, 0
/* 80187E1C 00184E1C  90 61 00 08 */	stw r3, 8(r1)
/* 80187E20 00184E20  41 82 00 0C */	beq lbl_80187E2C
/* 80187E24 00184E24  38 81 00 08 */	addi r4, r1, 8
/* 80187E28 00184E28  48 00 00 28 */	b lbl_80187E50
lbl_80187E2C:
/* 80187E2C 00184E2C  88 C1 00 0B */	lbz r6, 0xb(r1)
/* 80187E30 00184E30  38 81 00 0C */	addi r4, r1, 0xc
/* 80187E34 00184E34  88 A1 00 0A */	lbz r5, 0xa(r1)
/* 80187E38 00184E38  88 61 00 09 */	lbz r3, 9(r1)
/* 80187E3C 00184E3C  88 01 00 08 */	lbz r0, 8(r1)
/* 80187E40 00184E40  98 C1 00 0C */	stb r6, 0xc(r1)
/* 80187E44 00184E44  98 A1 00 0D */	stb r5, 0xd(r1)
/* 80187E48 00184E48  98 61 00 0E */	stb r3, 0xe(r1)
/* 80187E4C 00184E4C  98 01 00 0F */	stb r0, 0xf(r1)
lbl_80187E50:
/* 80187E50 00184E50  7F 63 DB 78 */	mr r3, r27
/* 80187E54 00184E54  38 A0 00 04 */	li r5, 4
/* 80187E58 00184E58  48 00 02 65 */	bl func_801880BC
/* 80187E5C 00184E5C  3B DE 00 04 */	addi r30, r30, 4
/* 80187E60 00184E60  3B BD 00 01 */	addi r29, r29, 1
lbl_80187E64:
/* 80187E64 00184E64  2C 03 00 00 */	cmpwi r3, 0
/* 80187E68 00184E68  40 82 00 0C */	bne lbl_80187E74
/* 80187E6C 00184E6C  7C 1D E0 00 */	cmpw r29, r28
/* 80187E70 00184E70  41 80 FF A0 */	blt lbl_80187E10
lbl_80187E74:
/* 80187E74 00184E74  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 80187E78 00184E78  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80187E7C 00184E7C  7C 08 03 A6 */	mtlr r0
/* 80187E80 00184E80  38 21 00 30 */	addi r1, r1, 0x30
/* 80187E84 00184E84  4E 80 00 20 */	blr 

.global func_80187E88
func_80187E88:
/* 80187E88 00184E88  39 20 00 00 */	li r9, 0
/* 80187E8C 00184E8C  38 00 00 00 */	li r0, 0
/* 80187E90 00184E90  48 00 00 48 */	b lbl_80187ED8
lbl_80187E94:
/* 80187E94 00184E94  80 E3 00 0C */	lwz r7, 0xc(r3)
/* 80187E98 00184E98  89 04 00 00 */	lbz r8, 0(r4)
/* 80187E9C 00184E9C  28 07 08 80 */	cmplwi r7, 0x880
/* 80187EA0 00184EA0  41 80 00 0C */	blt lbl_80187EAC
/* 80187EA4 00184EA4  38 E0 03 01 */	li r7, 0x301
/* 80187EA8 00184EA8  48 00 00 24 */	b lbl_80187ECC
lbl_80187EAC:
/* 80187EAC 00184EAC  38 C7 00 01 */	addi r6, r7, 1
/* 80187EB0 00184EB0  38 07 00 10 */	addi r0, r7, 0x10
/* 80187EB4 00184EB4  90 C3 00 0C */	stw r6, 0xc(r3)
/* 80187EB8 00184EB8  38 E0 00 00 */	li r7, 0
/* 80187EBC 00184EBC  7D 03 01 AE */	stbx r8, r3, r0
/* 80187EC0 00184EC0  80 C3 00 08 */	lwz r6, 8(r3)
/* 80187EC4 00184EC4  38 06 00 01 */	addi r0, r6, 1
/* 80187EC8 00184EC8  90 03 00 08 */	stw r0, 8(r3)
lbl_80187ECC:
/* 80187ECC 00184ECC  7C E0 3B 78 */	mr r0, r7
/* 80187ED0 00184ED0  39 29 00 01 */	addi r9, r9, 1
/* 80187ED4 00184ED4  38 84 00 01 */	addi r4, r4, 1
lbl_80187ED8:
/* 80187ED8 00184ED8  2C 00 00 00 */	cmpwi r0, 0
/* 80187EDC 00184EDC  40 82 00 0C */	bne lbl_80187EE8
/* 80187EE0 00184EE0  7C 09 28 00 */	cmpw r9, r5
/* 80187EE4 00184EE4  41 80 FF B0 */	blt lbl_80187E94
lbl_80187EE8:
/* 80187EE8 00184EE8  7C 03 03 78 */	mr r3, r0
/* 80187EEC 00184EEC  4E 80 00 20 */	blr 

.global func_80187EF0
func_80187EF0:
/* 80187EF0 00184EF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80187EF4 00184EF4  7C 08 02 A6 */	mflr r0
/* 80187EF8 00184EF8  3C 80 80 24 */	lis r4, lbl_80245DD8@ha
/* 80187EFC 00184EFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80187F00 00184F00  80 04 5D D8 */	lwz r0, lbl_80245DD8@l(r4)
/* 80187F04 00184F04  90 A1 00 08 */	stw r5, 8(r1)
/* 80187F08 00184F08  2C 00 00 00 */	cmpwi r0, 0
/* 80187F0C 00184F0C  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80187F10 00184F10  41 82 00 0C */	beq lbl_80187F1C
/* 80187F14 00184F14  38 81 00 08 */	addi r4, r1, 8
/* 80187F18 00184F18  48 00 00 48 */	b lbl_80187F60
lbl_80187F1C:
/* 80187F1C 00184F1C  89 61 00 0F */	lbz r11, 0xf(r1)
/* 80187F20 00184F20  38 81 00 10 */	addi r4, r1, 0x10
/* 80187F24 00184F24  89 41 00 0E */	lbz r10, 0xe(r1)
/* 80187F28 00184F28  89 21 00 0D */	lbz r9, 0xd(r1)
/* 80187F2C 00184F2C  89 01 00 0C */	lbz r8, 0xc(r1)
/* 80187F30 00184F30  88 E1 00 0B */	lbz r7, 0xb(r1)
/* 80187F34 00184F34  88 C1 00 0A */	lbz r6, 0xa(r1)
/* 80187F38 00184F38  88 A1 00 09 */	lbz r5, 9(r1)
/* 80187F3C 00184F3C  88 01 00 08 */	lbz r0, 8(r1)
/* 80187F40 00184F40  99 61 00 10 */	stb r11, 0x10(r1)
/* 80187F44 00184F44  99 41 00 11 */	stb r10, 0x11(r1)
/* 80187F48 00184F48  99 21 00 12 */	stb r9, 0x12(r1)
/* 80187F4C 00184F4C  99 01 00 13 */	stb r8, 0x13(r1)
/* 80187F50 00184F50  98 E1 00 14 */	stb r7, 0x14(r1)
/* 80187F54 00184F54  98 C1 00 15 */	stb r6, 0x15(r1)
/* 80187F58 00184F58  98 A1 00 16 */	stb r5, 0x16(r1)
/* 80187F5C 00184F5C  98 01 00 17 */	stb r0, 0x17(r1)
lbl_80187F60:
/* 80187F60 00184F60  38 A0 00 08 */	li r5, 8
/* 80187F64 00184F64  48 00 01 59 */	bl func_801880BC
/* 80187F68 00184F68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80187F6C 00184F6C  7C 08 03 A6 */	mtlr r0
/* 80187F70 00184F70  38 21 00 20 */	addi r1, r1, 0x20
/* 80187F74 00184F74  4E 80 00 20 */	blr 

.global func_80187F78
func_80187F78:
/* 80187F78 00184F78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80187F7C 00184F7C  7C 08 02 A6 */	mflr r0
/* 80187F80 00184F80  3C A0 80 24 */	lis r5, lbl_80245DD8@ha
/* 80187F84 00184F84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80187F88 00184F88  80 05 5D D8 */	lwz r0, lbl_80245DD8@l(r5)
/* 80187F8C 00184F8C  90 81 00 08 */	stw r4, 8(r1)
/* 80187F90 00184F90  2C 00 00 00 */	cmpwi r0, 0
/* 80187F94 00184F94  41 82 00 0C */	beq lbl_80187FA0
/* 80187F98 00184F98  38 81 00 08 */	addi r4, r1, 8
/* 80187F9C 00184F9C  48 00 00 28 */	b lbl_80187FC4
lbl_80187FA0:
/* 80187FA0 00184FA0  88 E1 00 0B */	lbz r7, 0xb(r1)
/* 80187FA4 00184FA4  38 81 00 0C */	addi r4, r1, 0xc
/* 80187FA8 00184FA8  88 C1 00 0A */	lbz r6, 0xa(r1)
/* 80187FAC 00184FAC  88 A1 00 09 */	lbz r5, 9(r1)
/* 80187FB0 00184FB0  88 01 00 08 */	lbz r0, 8(r1)
/* 80187FB4 00184FB4  98 E1 00 0C */	stb r7, 0xc(r1)
/* 80187FB8 00184FB8  98 C1 00 0D */	stb r6, 0xd(r1)
/* 80187FBC 00184FBC  98 A1 00 0E */	stb r5, 0xe(r1)
/* 80187FC0 00184FC0  98 01 00 0F */	stb r0, 0xf(r1)
lbl_80187FC4:
/* 80187FC4 00184FC4  38 A0 00 04 */	li r5, 4
/* 80187FC8 00184FC8  48 00 00 F5 */	bl func_801880BC
/* 80187FCC 00184FCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80187FD0 00184FD0  7C 08 03 A6 */	mtlr r0
/* 80187FD4 00184FD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80187FD8 00184FD8  4E 80 00 20 */	blr 

.global func_80187FDC
func_80187FDC:
/* 80187FDC 00184FDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80187FE0 00184FE0  7C 08 02 A6 */	mflr r0
/* 80187FE4 00184FE4  3C A0 80 24 */	lis r5, lbl_80245DD8@ha
/* 80187FE8 00184FE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80187FEC 00184FEC  80 05 5D D8 */	lwz r0, lbl_80245DD8@l(r5)
/* 80187FF0 00184FF0  B0 81 00 08 */	sth r4, 8(r1)
/* 80187FF4 00184FF4  2C 00 00 00 */	cmpwi r0, 0
/* 80187FF8 00184FF8  41 82 00 0C */	beq lbl_80188004
/* 80187FFC 00184FFC  38 81 00 08 */	addi r4, r1, 8
/* 80188000 00185000  48 00 00 18 */	b lbl_80188018
lbl_80188004:
/* 80188004 00185004  88 A1 00 09 */	lbz r5, 9(r1)
/* 80188008 00185008  38 81 00 0C */	addi r4, r1, 0xc
/* 8018800C 0018500C  88 01 00 08 */	lbz r0, 8(r1)
/* 80188010 00185010  98 A1 00 0C */	stb r5, 0xc(r1)
/* 80188014 00185014  98 01 00 0D */	stb r0, 0xd(r1)
lbl_80188018:
/* 80188018 00185018  38 A0 00 02 */	li r5, 2
/* 8018801C 0018501C  48 00 00 A1 */	bl func_801880BC
/* 80188020 00185020  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80188024 00185024  7C 08 03 A6 */	mtlr r0
/* 80188028 00185028  38 21 00 10 */	addi r1, r1, 0x10
/* 8018802C 0018502C  4E 80 00 20 */	blr 

.global func_80188030
func_80188030:
/* 80188030 00185030  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80188034 00185034  7C 08 02 A6 */	mflr r0
/* 80188038 00185038  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018803C 0018503C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80188040 00185040  3B E0 00 00 */	li r31, 0
/* 80188044 00185044  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80188048 00185048  7C BE 2B 79 */	or. r30, r5, r5
/* 8018804C 0018504C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80188050 00185050  7C 7D 1B 78 */	mr r29, r3
/* 80188054 00185054  7C 83 23 78 */	mr r3, r4
/* 80188058 00185058  40 82 00 0C */	bne lbl_80188064
/* 8018805C 0018505C  38 60 00 00 */	li r3, 0
/* 80188060 00185060  48 00 00 40 */	b lbl_801880A0
lbl_80188064:
/* 80188064 00185064  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 80188068 00185068  80 1D 00 08 */	lwz r0, 8(r29)
/* 8018806C 0018506C  7C 04 00 50 */	subf r0, r4, r0
/* 80188070 00185070  7C 1E 00 40 */	cmplw r30, r0
/* 80188074 00185074  40 81 00 0C */	ble lbl_80188080
/* 80188078 00185078  3B E0 03 02 */	li r31, 0x302
/* 8018807C 0018507C  7C 1E 03 78 */	mr r30, r0
lbl_80188080:
/* 80188080 00185080  38 84 00 10 */	addi r4, r4, 0x10
/* 80188084 00185084  7F C5 F3 78 */	mr r5, r30
/* 80188088 00185088  7C 9D 22 14 */	add r4, r29, r4
/* 8018808C 0018508C  4B E7 B3 FD */	bl TRK_memcpy
/* 80188090 00185090  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 80188094 00185094  7F E3 FB 78 */	mr r3, r31
/* 80188098 00185098  7C 00 F2 14 */	add r0, r0, r30
/* 8018809C 0018509C  90 1D 00 0C */	stw r0, 0xc(r29)
lbl_801880A0:
/* 801880A0 001850A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801880A4 001850A4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801880A8 001850A8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801880AC 001850AC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801880B0 001850B0  7C 08 03 A6 */	mtlr r0
/* 801880B4 001850B4  38 21 00 20 */	addi r1, r1, 0x20
/* 801880B8 001850B8  4E 80 00 20 */	blr 

.global func_801880BC
func_801880BC:
/* 801880BC 001850BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801880C0 001850C0  7C 08 02 A6 */	mflr r0
/* 801880C4 001850C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801880C8 001850C8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801880CC 001850CC  3B E0 00 00 */	li r31, 0
/* 801880D0 001850D0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801880D4 001850D4  7C BE 2B 79 */	or. r30, r5, r5
/* 801880D8 001850D8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801880DC 001850DC  7C 7D 1B 78 */	mr r29, r3
/* 801880E0 001850E0  40 82 00 0C */	bne lbl_801880EC
/* 801880E4 001850E4  38 60 00 00 */	li r3, 0
/* 801880E8 001850E8  48 00 00 5C */	b lbl_80188144
lbl_801880EC:
/* 801880EC 001850EC  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 801880F0 001850F0  20 03 08 80 */	subfic r0, r3, 0x880
/* 801880F4 001850F4  7C 00 F0 40 */	cmplw r0, r30
/* 801880F8 001850F8  40 80 00 0C */	bge lbl_80188104
/* 801880FC 001850FC  3B E0 03 01 */	li r31, 0x301
/* 80188100 00185100  7C 1E 03 78 */	mr r30, r0
lbl_80188104:
/* 80188104 00185104  28 1E 00 01 */	cmplwi r30, 1
/* 80188108 00185108  40 82 00 14 */	bne lbl_8018811C
/* 8018810C 0018510C  88 04 00 00 */	lbz r0, 0(r4)
/* 80188110 00185110  7C 7D 1A 14 */	add r3, r29, r3
/* 80188114 00185114  98 03 00 10 */	stb r0, 0x10(r3)
/* 80188118 00185118  48 00 00 14 */	b lbl_8018812C
lbl_8018811C:
/* 8018811C 0018511C  38 63 00 10 */	addi r3, r3, 0x10
/* 80188120 00185120  7F C5 F3 78 */	mr r5, r30
/* 80188124 00185124  7C 7D 1A 14 */	add r3, r29, r3
/* 80188128 00185128  4B E7 B3 61 */	bl TRK_memcpy
lbl_8018812C:
/* 8018812C 0018512C  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 80188130 00185130  7F E3 FB 78 */	mr r3, r31
/* 80188134 00185134  7C 00 F2 14 */	add r0, r0, r30
/* 80188138 00185138  90 1D 00 0C */	stw r0, 0xc(r29)
/* 8018813C 0018513C  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 80188140 00185140  90 1D 00 08 */	stw r0, 8(r29)
lbl_80188144:
/* 80188144 00185144  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80188148 00185148  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8018814C 0018514C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80188150 00185150  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80188154 00185154  7C 08 03 A6 */	mtlr r0
/* 80188158 00185158  38 21 00 20 */	addi r1, r1, 0x20
/* 8018815C 0018515C  4E 80 00 20 */	blr 

.global func_80188160
func_80188160:
/* 80188160 00185160  28 04 08 80 */	cmplwi r4, 0x880
/* 80188164 00185164  38 A0 00 00 */	li r5, 0
/* 80188168 00185168  40 81 00 0C */	ble lbl_80188174
/* 8018816C 0018516C  38 A0 03 01 */	li r5, 0x301
/* 80188170 00185170  48 00 00 18 */	b lbl_80188188
lbl_80188174:
/* 80188174 00185174  90 83 00 0C */	stw r4, 0xc(r3)
/* 80188178 00185178  80 03 00 08 */	lwz r0, 8(r3)
/* 8018817C 0018517C  7C 04 00 40 */	cmplw r4, r0
/* 80188180 00185180  40 81 00 08 */	ble lbl_80188188
/* 80188184 00185184  90 83 00 08 */	stw r4, 8(r3)
lbl_80188188:
/* 80188188 00185188  7C A3 2B 78 */	mr r3, r5
/* 8018818C 0018518C  4E 80 00 20 */	blr 

.global func_80188190
func_80188190:
/* 80188190 00185190  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80188194 00185194  7C 08 02 A6 */	mflr r0
/* 80188198 00185198  38 A0 00 00 */	li r5, 0
/* 8018819C 0018519C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801881A0 001851A0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 801881A4 001851A4  90 A3 00 08 */	stw r5, 8(r3)
/* 801881A8 001851A8  90 A3 00 0C */	stw r5, 0xc(r3)
/* 801881AC 001851AC  40 82 00 14 */	bne lbl_801881C0
/* 801881B0 001851B0  38 63 00 10 */	addi r3, r3, 0x10
/* 801881B4 001851B4  38 80 00 00 */	li r4, 0
/* 801881B8 001851B8  38 A0 08 80 */	li r5, 0x880
/* 801881BC 001851BC  4B E7 B2 9D */	bl TRK_memset
lbl_801881C0:
/* 801881C0 001851C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801881C4 001851C4  7C 08 03 A6 */	mtlr r0
/* 801881C8 001851C8  38 21 00 10 */	addi r1, r1, 0x10
/* 801881CC 001851CC  4E 80 00 20 */	blr 

.global func_801881D0
func_801881D0:
/* 801881D0 001851D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801881D4 001851D4  7C 08 02 A6 */	mflr r0
/* 801881D8 001851D8  2C 03 FF FF */	cmpwi r3, -1
/* 801881DC 001851DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801881E0 001851E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801881E4 001851E4  41 82 00 3C */	beq lbl_80188220
/* 801881E8 001851E8  2C 03 00 00 */	cmpwi r3, 0
/* 801881EC 001851EC  41 80 00 34 */	blt lbl_80188220
/* 801881F0 001851F0  2C 03 00 03 */	cmpwi r3, 3
/* 801881F4 001851F4  40 80 00 2C */	bge lbl_80188220
/* 801881F8 001851F8  1C 83 08 90 */	mulli r4, r3, 0x890
/* 801881FC 001851FC  3C 60 80 24 */	lis r3, lbl_80245DE0@ha
/* 80188200 00185200  38 03 5D E0 */	addi r0, r3, lbl_80245DE0@l
/* 80188204 00185204  7F E0 22 14 */	add r31, r0, r4
/* 80188208 00185208  7F E3 FB 78 */	mr r3, r31
/* 8018820C 0018520C  48 00 37 AD */	bl func_8018B9B8
/* 80188210 00185210  38 00 00 00 */	li r0, 0
/* 80188214 00185214  7F E3 FB 78 */	mr r3, r31
/* 80188218 00185218  90 1F 00 04 */	stw r0, 4(r31)
/* 8018821C 0018521C  48 00 37 95 */	bl func_8018B9B0
lbl_80188220:
/* 80188220 00185220  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80188224 00185224  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80188228 00185228  7C 08 03 A6 */	mtlr r0
/* 8018822C 0018522C  38 21 00 10 */	addi r1, r1, 0x10
/* 80188230 00185230  4E 80 00 20 */	blr 

.global func_80188234
func_80188234:
/* 80188234 00185234  2C 03 00 00 */	cmpwi r3, 0
/* 80188238 00185238  38 00 00 00 */	li r0, 0
/* 8018823C 0018523C  41 80 00 1C */	blt lbl_80188258
/* 80188240 00185240  2C 03 00 03 */	cmpwi r3, 3
/* 80188244 00185244  40 80 00 14 */	bge lbl_80188258
/* 80188248 00185248  1C 83 08 90 */	mulli r4, r3, 0x890
/* 8018824C 0018524C  3C 60 80 24 */	lis r3, lbl_80245DE0@ha
/* 80188250 00185250  38 03 5D E0 */	addi r0, r3, lbl_80245DE0@l
/* 80188254 00185254  7C 00 22 14 */	add r0, r0, r4
lbl_80188258:
/* 80188258 00185258  7C 03 03 78 */	mr r3, r0
/* 8018825C 0018525C  4E 80 00 20 */	blr 

.global func_80188260
func_80188260:
/* 80188260 00185260  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80188264 00185264  7C 08 02 A6 */	mflr r0
/* 80188268 00185268  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018826C 0018526C  38 00 00 00 */	li r0, 0
/* 80188270 00185270  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 80188274 00185274  7C 9C 23 78 */	mr r28, r4
/* 80188278 00185278  7C 7B 1B 78 */	mr r27, r3
/* 8018827C 0018527C  3B C0 03 00 */	li r30, 0x300
/* 80188280 00185280  3B A0 00 00 */	li r29, 0
/* 80188284 00185284  90 04 00 00 */	stw r0, 0(r4)
/* 80188288 00185288  48 00 00 6C */	b lbl_801882F4
lbl_8018828C:
/* 8018828C 0018528C  2C 1D 00 00 */	cmpwi r29, 0
/* 80188290 00185290  3B E0 00 00 */	li r31, 0
/* 80188294 00185294  41 80 00 1C */	blt lbl_801882B0
/* 80188298 00185298  2C 1D 00 03 */	cmpwi r29, 3
/* 8018829C 0018529C  40 80 00 14 */	bge lbl_801882B0
/* 801882A0 001852A0  1C 9D 08 90 */	mulli r4, r29, 0x890
/* 801882A4 001852A4  3C 60 80 24 */	lis r3, lbl_80245DE0@ha
/* 801882A8 001852A8  38 03 5D E0 */	addi r0, r3, lbl_80245DE0@l
/* 801882AC 001852AC  7F E0 22 14 */	add r31, r0, r4
lbl_801882B0:
/* 801882B0 001852B0  7F E3 FB 78 */	mr r3, r31
/* 801882B4 001852B4  48 00 37 05 */	bl func_8018B9B8
/* 801882B8 001852B8  80 1F 00 04 */	lwz r0, 4(r31)
/* 801882BC 001852BC  2C 00 00 00 */	cmpwi r0, 0
/* 801882C0 001852C0  40 82 00 28 */	bne lbl_801882E8
/* 801882C4 001852C4  38 60 00 00 */	li r3, 0
/* 801882C8 001852C8  38 00 00 01 */	li r0, 1
/* 801882CC 001852CC  90 7F 00 08 */	stw r3, 8(r31)
/* 801882D0 001852D0  3B C0 00 00 */	li r30, 0
/* 801882D4 001852D4  90 7F 00 0C */	stw r3, 0xc(r31)
/* 801882D8 001852D8  90 1F 00 04 */	stw r0, 4(r31)
/* 801882DC 001852DC  93 FC 00 00 */	stw r31, 0(r28)
/* 801882E0 001852E0  93 BB 00 00 */	stw r29, 0(r27)
/* 801882E4 001852E4  3B A0 00 03 */	li r29, 3
lbl_801882E8:
/* 801882E8 001852E8  7F E3 FB 78 */	mr r3, r31
/* 801882EC 001852EC  48 00 36 C5 */	bl func_8018B9B0
/* 801882F0 001852F0  3B BD 00 01 */	addi r29, r29, 1
lbl_801882F4:
/* 801882F4 001852F4  2C 1D 00 03 */	cmpwi r29, 3
/* 801882F8 001852F8  41 80 FF 94 */	blt lbl_8018828C
/* 801882FC 001852FC  2C 1E 03 00 */	cmpwi r30, 0x300
/* 80188300 00185300  40 82 00 10 */	bne lbl_80188310
/* 80188304 00185304  3C 60 80 20 */	lis r3, lbl_80205298@ha
/* 80188308 00185308  38 63 52 98 */	addi r3, r3, lbl_80205298@l
/* 8018830C 0018530C  48 00 04 61 */	bl func_8018876C
lbl_80188310:
/* 80188310 00185310  7F C3 F3 78 */	mr r3, r30
/* 80188314 00185314  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 80188318 00185318  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8018831C 0018531C  7C 08 03 A6 */	mtlr r0
/* 80188320 00185320  38 21 00 20 */	addi r1, r1, 0x20
/* 80188324 00185324  4E 80 00 20 */	blr 

.global func_80188328
func_80188328:
/* 80188328 00185328  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8018832C 0018532C  7C 08 02 A6 */	mflr r0
/* 80188330 00185330  3C 60 80 24 */	lis r3, lbl_80245DE0@ha
/* 80188334 00185334  90 01 00 24 */	stw r0, 0x24(r1)
/* 80188338 00185338  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8018833C 0018533C  3B E0 00 00 */	li r31, 0
/* 80188340 00185340  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80188344 00185344  3B C3 5D E0 */	addi r30, r3, lbl_80245DE0@l
/* 80188348 00185348  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8018834C 0018534C  3B A0 00 00 */	li r29, 0
lbl_80188350:
/* 80188350 00185350  7F C3 F3 78 */	mr r3, r30
/* 80188354 00185354  48 00 36 6D */	bl func_8018B9C0
/* 80188358 00185358  7F C3 F3 78 */	mr r3, r30
/* 8018835C 0018535C  48 00 36 5D */	bl func_8018B9B8
/* 80188360 00185360  93 FE 00 04 */	stw r31, 4(r30)
/* 80188364 00185364  7F C3 F3 78 */	mr r3, r30
/* 80188368 00185368  48 00 36 49 */	bl func_8018B9B0
/* 8018836C 0018536C  3B BD 00 01 */	addi r29, r29, 1
/* 80188370 00185370  3B DE 08 90 */	addi r30, r30, 0x890
/* 80188374 00185374  2C 1D 00 03 */	cmpwi r29, 3
/* 80188378 00185378  41 80 FF D8 */	blt lbl_80188350
/* 8018837C 0018537C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80188380 00185380  38 60 00 00 */	li r3, 0
/* 80188384 00185384  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80188388 00185388  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8018838C 0018538C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80188390 00185390  7C 08 03 A6 */	mtlr r0
/* 80188394 00185394  38 21 00 20 */	addi r1, r1, 0x20
/* 80188398 00185398  4E 80 00 20 */	blr 