.include "macros.inc"

.section .text  # 0x8018D94C - 0x8018DDF8

.global func_8018D94C
func_8018D94C:
/* 8018D94C 0018A94C  80 03 00 00 */	lwz r0, 0(r3)
/* 8018D950 0018A950  80 23 00 04 */	lwz r1, 4(r3)
/* 8018D954 0018A954  80 43 00 08 */	lwz r2, 8(r3)
/* 8018D958 0018A958  A0 A3 01 A2 */	lhz r5, 0x1a2(r3)
/* 8018D95C 0018A95C  54 A6 07 BD */	rlwinm. r6, r5, 0, 0x1e, 0x1e
/* 8018D960 0018A960  41 82 00 14 */	beq lbl_8018D974
/* 8018D964 0018A964  54 A5 07 FA */	rlwinm r5, r5, 0, 0x1f, 0x1d
/* 8018D968 0018A968  B0 A3 01 A2 */	sth r5, 0x1a2(r3)
/* 8018D96C 0018A96C  B8 A3 00 14 */	lmw r5, 0x14(r3)
/* 8018D970 0018A970  48 00 00 08 */	b lbl_8018D978
lbl_8018D974:
/* 8018D974 0018A974  B9 A3 00 34 */	lmw r13, 0x34(r3)
lbl_8018D978:
/* 8018D978 0018A978  7C 7F 1B 78 */	mr r31, r3
/* 8018D97C 0018A97C  7C 83 23 78 */	mr r3, r4
/* 8018D980 0018A980  80 9F 00 80 */	lwz r4, 0x80(r31)
/* 8018D984 0018A984  7C 8F F1 20 */	mtcrf 0xff, r4
/* 8018D988 0018A988  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 8018D98C 0018A98C  7C 88 03 A6 */	mtlr r4
/* 8018D990 0018A990  80 9F 00 88 */	lwz r4, 0x88(r31)
/* 8018D994 0018A994  7C 89 03 A6 */	mtctr r4
/* 8018D998 0018A998  80 9F 00 8C */	lwz r4, 0x8c(r31)
/* 8018D99C 0018A99C  7C 81 03 A6 */	mtxer r4
/* 8018D9A0 0018A9A0  7C 80 00 A6 */	mfmsr r4
/* 8018D9A4 0018A9A4  54 84 04 5E */	rlwinm r4, r4, 0, 0x11, 0xf
/* 8018D9A8 0018A9A8  54 84 07 FA */	rlwinm r4, r4, 0, 0x1f, 0x1d
/* 8018D9AC 0018A9AC  7C 80 01 24 */	mtmsr r4
/* 8018D9B0 0018A9B0  7C 51 43 A6 */	mtspr 0x111, r2
/* 8018D9B4 0018A9B4  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8018D9B8 0018A9B8  7C 92 43 A6 */	mtspr 0x112, r4
/* 8018D9BC 0018A9BC  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 8018D9C0 0018A9C0  7C 93 43 A6 */	mtspr 0x113, r4
/* 8018D9C4 0018A9C4  80 5F 01 98 */	lwz r2, 0x198(r31)
/* 8018D9C8 0018A9C8  80 9F 01 9C */	lwz r4, 0x19c(r31)
/* 8018D9CC 0018A9CC  83 FF 00 7C */	lwz r31, 0x7c(r31)
/* 8018D9D0 0018A9D0  4B FF E2 10 */	b func_8018BBE0

.global func_8018D9D4
func_8018D9D4:
/* 8018D9D4 0018A9D4  4E 80 00 20 */	blr 

.global func_8018D9D8
func_8018D9D8:
/* 8018D9D8 0018A9D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018D9DC 0018A9DC  7C 08 02 A6 */	mflr r0
/* 8018D9E0 0018A9E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018D9E4 0018A9E4  4C C6 31 82 */	crclr 6
/* 8018D9E8 0018A9E8  4B FD 9E B1 */	bl func_80167898
/* 8018D9EC 0018A9EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018D9F0 0018A9F0  7C 08 03 A6 */	mtlr r0
/* 8018D9F4 0018A9F4  38 21 00 10 */	addi r1, r1, 0x10
/* 8018D9F8 0018A9F8  4E 80 00 20 */	blr 

.global func_8018D9FC
func_8018D9FC:
/* 8018D9FC 0018A9FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018DA00 0018AA00  7C 08 02 A6 */	mflr r0
/* 8018DA04 0018AA04  3C 60 80 21 */	lis r3, lbl_80217BF0@ha
/* 8018DA08 0018AA08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018DA0C 0018AA0C  38 63 7B F0 */	addi r3, r3, lbl_80217BF0@l
/* 8018DA10 0018AA10  81 83 00 18 */	lwz r12, 0x18(r3)
/* 8018DA14 0018AA14  7D 89 03 A6 */	mtctr r12
/* 8018DA18 0018AA18  4E 80 04 21 */	bctrl 
/* 8018DA1C 0018AA1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018DA20 0018AA20  7C 08 03 A6 */	mtlr r0
/* 8018DA24 0018AA24  38 21 00 10 */	addi r1, r1, 0x10
/* 8018DA28 0018AA28  4E 80 00 20 */	blr 

.global func_8018DA2C
func_8018DA2C:
/* 8018DA2C 0018AA2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018DA30 0018AA30  7C 08 02 A6 */	mflr r0
/* 8018DA34 0018AA34  3C 60 80 21 */	lis r3, lbl_80217BF0@ha
/* 8018DA38 0018AA38  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018DA3C 0018AA3C  38 63 7B F0 */	addi r3, r3, lbl_80217BF0@l
/* 8018DA40 0018AA40  81 83 00 14 */	lwz r12, 0x14(r3)
/* 8018DA44 0018AA44  7D 89 03 A6 */	mtctr r12
/* 8018DA48 0018AA48  4E 80 04 21 */	bctrl 
/* 8018DA4C 0018AA4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018DA50 0018AA50  7C 08 03 A6 */	mtlr r0
/* 8018DA54 0018AA54  38 21 00 10 */	addi r1, r1, 0x10
/* 8018DA58 0018AA58  4E 80 00 20 */	blr 

.global func_8018DA5C
func_8018DA5C:
/* 8018DA5C 0018AA5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8018DA60 0018AA60  7C 08 02 A6 */	mflr r0
/* 8018DA64 0018AA64  3C 80 80 24 */	lis r4, lbl_80247D48@ha
/* 8018DA68 0018AA68  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018DA6C 0018AA6C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8018DA70 0018AA70  7C 7F 1B 78 */	mr r31, r3
/* 8018DA74 0018AA74  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8018DA78 0018AA78  3B C4 7D 48 */	addi r30, r4, lbl_80247D48@l
/* 8018DA7C 0018AA7C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8018DA80 0018AA80  3B A0 00 04 */	li r29, 4
/* 8018DA84 0018AA84  80 7E 00 04 */	lwz r3, 4(r30)
/* 8018DA88 0018AA88  80 1E 00 08 */	lwz r0, 8(r30)
/* 8018DA8C 0018AA8C  7C 03 00 00 */	cmpw r3, r0
/* 8018DA90 0018AA90  41 80 00 74 */	blt lbl_8018DB04
/* 8018DA94 0018AA94  3C 60 80 21 */	lis r3, lbl_80217BF0@ha
/* 8018DA98 0018AA98  38 00 00 00 */	li r0, 0
/* 8018DA9C 0018AA9C  38 63 7B F0 */	addi r3, r3, lbl_80217BF0@l
/* 8018DAA0 0018AAA0  90 1E 00 04 */	stw r0, 4(r30)
/* 8018DAA4 0018AAA4  81 83 00 08 */	lwz r12, 8(r3)
/* 8018DAA8 0018AAA8  7D 89 03 A6 */	mtctr r12
/* 8018DAAC 0018AAAC  4E 80 04 21 */	bctrl 
/* 8018DAB0 0018AAB0  2C 03 00 00 */	cmpwi r3, 0
/* 8018DAB4 0018AAB4  90 7E 00 08 */	stw r3, 8(r30)
/* 8018DAB8 0018AAB8  40 81 00 4C */	ble lbl_8018DB04
/* 8018DABC 0018AABC  2C 03 11 0A */	cmpwi r3, 0x110a
/* 8018DAC0 0018AAC0  40 81 00 0C */	ble lbl_8018DACC
/* 8018DAC4 0018AAC4  38 00 11 0A */	li r0, 0x110a
/* 8018DAC8 0018AAC8  90 1E 00 08 */	stw r0, 8(r30)
lbl_8018DACC:
/* 8018DACC 0018AACC  3C 80 80 21 */	lis r4, lbl_80217BF0@ha
/* 8018DAD0 0018AAD0  38 7E 00 10 */	addi r3, r30, 0x10
/* 8018DAD4 0018AAD4  38 A4 7B F0 */	addi r5, r4, lbl_80217BF0@l
/* 8018DAD8 0018AAD8  80 9E 00 08 */	lwz r4, 8(r30)
/* 8018DADC 0018AADC  81 85 00 0C */	lwz r12, 0xc(r5)
/* 8018DAE0 0018AAE0  7D 89 03 A6 */	mtctr r12
/* 8018DAE4 0018AAE4  4E 80 04 21 */	bctrl 
/* 8018DAE8 0018AAE8  7C 03 00 D0 */	neg r0, r3
/* 8018DAEC 0018AAEC  7C 00 1B 78 */	or r0, r0, r3
/* 8018DAF0 0018AAF0  7C 00 FE 71 */	srawi. r0, r0, 0x1f
/* 8018DAF4 0018AAF4  7C 1D 03 78 */	mr r29, r0
/* 8018DAF8 0018AAF8  41 82 00 0C */	beq lbl_8018DB04
/* 8018DAFC 0018AAFC  38 00 00 00 */	li r0, 0
/* 8018DB00 0018AB00  90 1E 00 08 */	stw r0, 8(r30)
lbl_8018DB04:
/* 8018DB04 0018AB04  80 7E 00 04 */	lwz r3, 4(r30)
/* 8018DB08 0018AB08  80 1E 00 08 */	lwz r0, 8(r30)
/* 8018DB0C 0018AB0C  7C 03 00 00 */	cmpw r3, r0
/* 8018DB10 0018AB10  40 80 00 1C */	bge lbl_8018DB2C
/* 8018DB14 0018AB14  38 03 00 01 */	addi r0, r3, 1
/* 8018DB18 0018AB18  7C 7E 1A 14 */	add r3, r30, r3
/* 8018DB1C 0018AB1C  90 1E 00 04 */	stw r0, 4(r30)
/* 8018DB20 0018AB20  3B A0 00 00 */	li r29, 0
/* 8018DB24 0018AB24  88 03 00 10 */	lbz r0, 0x10(r3)
/* 8018DB28 0018AB28  98 1F 00 00 */	stb r0, 0(r31)
lbl_8018DB2C:
/* 8018DB2C 0018AB2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8018DB30 0018AB30  7F A3 EB 78 */	mr r3, r29
/* 8018DB34 0018AB34  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8018DB38 0018AB38  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8018DB3C 0018AB3C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8018DB40 0018AB40  7C 08 03 A6 */	mtlr r0
/* 8018DB44 0018AB44  38 21 00 20 */	addi r1, r1, 0x20
/* 8018DB48 0018AB48  4E 80 00 20 */	blr 

.global func_8018DB4C
func_8018DB4C:
/* 8018DB4C 0018AB4C  3C A0 80 24 */	lis r5, lbl_80247D48@ha
/* 8018DB50 0018AB50  3C 80 80 25 */	lis r4, lbl_80248E64@ha
/* 8018DB54 0018AB54  38 C5 7D 48 */	addi r6, r5, lbl_80247D48@l
/* 8018DB58 0018AB58  80 A6 00 00 */	lwz r5, 0(r6)
/* 8018DB5C 0018AB5C  38 84 8E 64 */	addi r4, r4, lbl_80248E64@l
/* 8018DB60 0018AB60  38 05 00 01 */	addi r0, r5, 1
/* 8018DB64 0018AB64  7C 64 29 AE */	stbx r3, r4, r5
/* 8018DB68 0018AB68  38 60 00 00 */	li r3, 0
/* 8018DB6C 0018AB6C  90 06 00 00 */	stw r0, 0(r6)
/* 8018DB70 0018AB70  4E 80 00 20 */	blr 

.global func_8018DB74
func_8018DB74:
/* 8018DB74 0018AB74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018DB78 0018AB78  7C 08 02 A6 */	mflr r0
/* 8018DB7C 0018AB7C  3C 60 80 24 */	lis r3, lbl_80247D48@ha
/* 8018DB80 0018AB80  3C A0 80 25 */	lis r5, lbl_80248E64@ha
/* 8018DB84 0018AB84  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018DB88 0018AB88  38 83 7D 48 */	addi r4, r3, lbl_80247D48@l
/* 8018DB8C 0018AB8C  38 05 8E 64 */	addi r0, r5, lbl_80248E64@l
/* 8018DB90 0018AB90  38 60 00 00 */	li r3, 0
/* 8018DB94 0018AB94  80 84 00 00 */	lwz r4, 0(r4)
/* 8018DB98 0018AB98  38 E0 00 00 */	li r7, 0
/* 8018DB9C 0018AB9C  2C 04 08 00 */	cmpwi r4, 0x800
/* 8018DBA0 0018ABA0  7D 00 22 14 */	add r8, r0, r4
/* 8018DBA4 0018ABA4  20 C4 08 00 */	subfic r6, r4, 0x800
/* 8018DBA8 0018ABA8  40 80 00 58 */	bge lbl_8018DC00
/* 8018DBAC 0018ABAC  54 C5 E8 FF */	rlwinm. r5, r6, 0x1d, 3, 0x1f
/* 8018DBB0 0018ABB0  7C C0 33 78 */	mr r0, r6
/* 8018DBB4 0018ABB4  7C A9 03 A6 */	mtctr r5
/* 8018DBB8 0018ABB8  41 82 00 34 */	beq lbl_8018DBEC
lbl_8018DBBC:
/* 8018DBBC 0018ABBC  98 E8 00 00 */	stb r7, 0(r8)
/* 8018DBC0 0018ABC0  98 E8 00 01 */	stb r7, 1(r8)
/* 8018DBC4 0018ABC4  98 E8 00 02 */	stb r7, 2(r8)
/* 8018DBC8 0018ABC8  98 E8 00 03 */	stb r7, 3(r8)
/* 8018DBCC 0018ABCC  98 E8 00 04 */	stb r7, 4(r8)
/* 8018DBD0 0018ABD0  98 E8 00 05 */	stb r7, 5(r8)
/* 8018DBD4 0018ABD4  98 E8 00 06 */	stb r7, 6(r8)
/* 8018DBD8 0018ABD8  98 E8 00 07 */	stb r7, 7(r8)
/* 8018DBDC 0018ABDC  39 08 00 08 */	addi r8, r8, 8
/* 8018DBE0 0018ABE0  42 00 FF DC */	bdnz lbl_8018DBBC
/* 8018DBE4 0018ABE4  70 C6 00 07 */	andi. r6, r6, 7
/* 8018DBE8 0018ABE8  41 82 00 14 */	beq lbl_8018DBFC
lbl_8018DBEC:
/* 8018DBEC 0018ABEC  7C C9 03 A6 */	mtctr r6
lbl_8018DBF0:
/* 8018DBF0 0018ABF0  98 E8 00 00 */	stb r7, 0(r8)
/* 8018DBF4 0018ABF4  39 08 00 01 */	addi r8, r8, 1
/* 8018DBF8 0018ABF8  42 00 FF F8 */	bdnz lbl_8018DBF0
lbl_8018DBFC:
/* 8018DBFC 0018ABFC  7C 84 02 14 */	add r4, r4, r0
lbl_8018DC00:
/* 8018DC00 0018AC00  3C A0 80 24 */	lis r5, lbl_80247D48@ha
/* 8018DC04 0018AC04  2C 04 00 00 */	cmpwi r4, 0
/* 8018DC08 0018AC08  90 85 7D 48 */	stw r4, lbl_80247D48@l(r5)
/* 8018DC0C 0018AC0C  41 82 00 38 */	beq lbl_8018DC44
/* 8018DC10 0018AC10  3C 60 80 21 */	lis r3, lbl_80217BF0@ha
/* 8018DC14 0018AC14  3C A0 80 25 */	lis r5, lbl_80248E64@ha
/* 8018DC18 0018AC18  38 63 7B F0 */	addi r3, r3, lbl_80217BF0@l
/* 8018DC1C 0018AC1C  81 83 00 10 */	lwz r12, 0x10(r3)
/* 8018DC20 0018AC20  38 65 8E 64 */	addi r3, r5, lbl_80248E64@l
/* 8018DC24 0018AC24  7D 89 03 A6 */	mtctr r12
/* 8018DC28 0018AC28  4E 80 04 21 */	bctrl 
/* 8018DC2C 0018AC2C  7C A3 00 D0 */	neg r5, r3
/* 8018DC30 0018AC30  3C 80 80 24 */	lis r4, lbl_80247D48@ha
/* 8018DC34 0018AC34  38 00 00 00 */	li r0, 0
/* 8018DC38 0018AC38  7C A3 1B 78 */	or r3, r5, r3
/* 8018DC3C 0018AC3C  90 04 7D 48 */	stw r0, lbl_80247D48@l(r4)
/* 8018DC40 0018AC40  7C 63 FE 70 */	srawi r3, r3, 0x1f
lbl_8018DC44:
/* 8018DC44 0018AC44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018DC48 0018AC48  7C 08 03 A6 */	mtlr r0
/* 8018DC4C 0018AC4C  38 21 00 10 */	addi r1, r1, 0x10
/* 8018DC50 0018AC50  4E 80 00 20 */	blr 

.global func_8018DC54
func_8018DC54:
/* 8018DC54 0018AC54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018DC58 0018AC58  7C 08 02 A6 */	mflr r0
/* 8018DC5C 0018AC5C  3C 60 80 21 */	lis r3, lbl_80217BF0@ha
/* 8018DC60 0018AC60  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018DC64 0018AC64  38 63 7B F0 */	addi r3, r3, lbl_80217BF0@l
/* 8018DC68 0018AC68  81 83 00 04 */	lwz r12, 4(r3)
/* 8018DC6C 0018AC6C  7D 89 03 A6 */	mtctr r12
/* 8018DC70 0018AC70  4E 80 04 21 */	bctrl 
/* 8018DC74 0018AC74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018DC78 0018AC78  7C 08 03 A6 */	mtlr r0
/* 8018DC7C 0018AC7C  38 21 00 10 */	addi r1, r1, 0x10
/* 8018DC80 0018AC80  4E 80 00 20 */	blr 

.global func_8018DC84
func_8018DC84:
/* 8018DC84 0018AC84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018DC88 0018AC88  7C 08 02 A6 */	mflr r0
/* 8018DC8C 0018AC8C  3C 80 80 19 */	lis r4, lbl_8018DDC0@ha
/* 8018DC90 0018AC90  3C 60 80 21 */	lis r3, lbl_80217BF0@ha
/* 8018DC94 0018AC94  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018DC98 0018AC98  38 84 DD C0 */	addi r4, r4, lbl_8018DDC0@l
/* 8018DC9C 0018AC9C  81 83 7B F0 */	lwz r12, lbl_80217BF0@l(r3)
/* 8018DCA0 0018ACA0  7C C3 33 78 */	mr r3, r6
/* 8018DCA4 0018ACA4  7D 89 03 A6 */	mtctr r12
/* 8018DCA8 0018ACA8  4E 80 04 21 */	bctrl 
/* 8018DCAC 0018ACAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018DCB0 0018ACB0  38 60 00 00 */	li r3, 0
/* 8018DCB4 0018ACB4  7C 08 03 A6 */	mtlr r0
/* 8018DCB8 0018ACB8  38 21 00 10 */	addi r1, r1, 0x10
/* 8018DCBC 0018ACBC  4E 80 00 20 */	blr 

.global func_8018DCC0
func_8018DCC0:
/* 8018DCC0 0018ACC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018DCC4 0018ACC4  7C 08 02 A6 */	mflr r0
/* 8018DCC8 0018ACC8  2C 03 00 01 */	cmpwi r3, 1
/* 8018DCCC 0018ACCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018DCD0 0018ACD0  40 82 00 74 */	bne lbl_8018DD44
/* 8018DCD4 0018ACD4  3C 60 80 20 */	lis r3, lbl_80205340@ha
/* 8018DCD8 0018ACD8  38 63 53 40 */	addi r3, r3, lbl_80205340@l
/* 8018DCDC 0018ACDC  4C C6 31 82 */	crclr 6
/* 8018DCE0 0018ACE0  4B FD 9B B9 */	bl func_80167898
/* 8018DCE4 0018ACE4  48 00 8B 71 */	bl func_80196854
/* 8018DCE8 0018ACE8  3D 60 80 19 */	lis r11, func_80196C40@ha
/* 8018DCEC 0018ACEC  3D 20 80 19 */	lis r9, func_80196BEC@ha
/* 8018DCF0 0018ACF0  39 6B 6C 40 */	addi r11, r11, func_80196C40@l
/* 8018DCF4 0018ACF4  3D 40 80 21 */	lis r10, lbl_80217BF0@ha
/* 8018DCF8 0018ACF8  3D 00 80 19 */	lis r8, func_80196B50@ha
/* 8018DCFC 0018ACFC  3C E0 80 19 */	lis r7, func_80196AC4@ha
/* 8018DD00 0018AD00  3C C0 80 19 */	lis r6, func_80196864@ha
/* 8018DD04 0018AD04  3C A0 80 19 */	lis r5, func_80196860@ha
/* 8018DD08 0018AD08  3C 80 80 19 */	lis r4, func_8019685C@ha
/* 8018DD0C 0018AD0C  95 6A 7B F0 */	stwu r11, lbl_80217BF0@l(r10)
/* 8018DD10 0018AD10  39 29 6B EC */	addi r9, r9, func_80196BEC@l
/* 8018DD14 0018AD14  39 08 6B 50 */	addi r8, r8, func_80196B50@l
/* 8018DD18 0018AD18  38 E7 6A C4 */	addi r7, r7, func_80196AC4@l
/* 8018DD1C 0018AD1C  38 C6 68 64 */	addi r6, r6, func_80196864@l
/* 8018DD20 0018AD20  38 A5 68 60 */	addi r5, r5, func_80196860@l
/* 8018DD24 0018AD24  38 04 68 5C */	addi r0, r4, func_8019685C@l
/* 8018DD28 0018AD28  91 2A 00 04 */	stw r9, 4(r10)
/* 8018DD2C 0018AD2C  91 0A 00 08 */	stw r8, 8(r10)
/* 8018DD30 0018AD30  90 EA 00 0C */	stw r7, 0xc(r10)
/* 8018DD34 0018AD34  90 CA 00 10 */	stw r6, 0x10(r10)
/* 8018DD38 0018AD38  90 AA 00 14 */	stw r5, 0x14(r10)
/* 8018DD3C 0018AD3C  90 0A 00 18 */	stw r0, 0x18(r10)
/* 8018DD40 0018AD40  48 00 00 70 */	b lbl_8018DDB0
lbl_8018DD44:
/* 8018DD44 0018AD44  3C 60 80 20 */	lis r3, lbl_80205364@ha
/* 8018DD48 0018AD48  38 63 53 64 */	addi r3, r3, lbl_80205364@l
/* 8018DD4C 0018AD4C  4C C6 31 82 */	crclr 6
/* 8018DD50 0018AD50  4B FD 9B 49 */	bl func_80167898
/* 8018DD54 0018AD54  48 00 8A F9 */	bl func_8019684C
/* 8018DD58 0018AD58  3D 60 80 19 */	lis r11, func_80196824@ha
/* 8018DD5C 0018AD5C  3D 20 80 19 */	lis r9, func_80196828@ha
/* 8018DD60 0018AD60  39 6B 68 24 */	addi r11, r11, func_80196824@l
/* 8018DD64 0018AD64  3D 40 80 21 */	lis r10, lbl_80217BF0@ha
/* 8018DD68 0018AD68  3D 00 80 19 */	lis r8, func_8019682C@ha
/* 8018DD6C 0018AD6C  3C E0 80 19 */	lis r7, func_80196834@ha
/* 8018DD70 0018AD70  3C C0 80 19 */	lis r6, func_8019683C@ha
/* 8018DD74 0018AD74  3C A0 80 19 */	lis r5, func_80196844@ha
/* 8018DD78 0018AD78  3C 80 80 19 */	lis r4, func_80196848@ha
/* 8018DD7C 0018AD7C  95 6A 7B F0 */	stwu r11, lbl_80217BF0@l(r10)
/* 8018DD80 0018AD80  39 29 68 28 */	addi r9, r9, func_80196828@l
/* 8018DD84 0018AD84  39 08 68 2C */	addi r8, r8, func_8019682C@l
/* 8018DD88 0018AD88  38 E7 68 34 */	addi r7, r7, func_80196834@l
/* 8018DD8C 0018AD8C  38 C6 68 3C */	addi r6, r6, func_8019683C@l
/* 8018DD90 0018AD90  38 A5 68 44 */	addi r5, r5, func_80196844@l
/* 8018DD94 0018AD94  38 04 68 48 */	addi r0, r4, func_80196848@l
/* 8018DD98 0018AD98  91 2A 00 04 */	stw r9, 4(r10)
/* 8018DD9C 0018AD9C  91 0A 00 08 */	stw r8, 8(r10)
/* 8018DDA0 0018ADA0  90 EA 00 0C */	stw r7, 0xc(r10)
/* 8018DDA4 0018ADA4  90 CA 00 10 */	stw r6, 0x10(r10)
/* 8018DDA8 0018ADA8  90 AA 00 14 */	stw r5, 0x14(r10)
/* 8018DDAC 0018ADAC  90 0A 00 18 */	stw r0, 0x18(r10)
lbl_8018DDB0:
/* 8018DDB0 0018ADB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018DDB4 0018ADB4  7C 08 03 A6 */	mtlr r0
/* 8018DDB8 0018ADB8  38 21 00 10 */	addi r1, r1, 0x10
/* 8018DDBC 0018ADBC  4E 80 00 20 */	blr 
lbl_8018DDC0:
/* 8018DDC0 0018ADC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018DDC4 0018ADC4  7C 08 02 A6 */	mflr r0
/* 8018DDC8 0018ADC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018DDCC 0018ADCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018DDD0 0018ADD0  7C 9F 23 78 */	mr r31, r4
/* 8018DDD4 0018ADD4  4B FD E1 35 */	bl func_8016BF08
/* 8018DDD8 0018ADD8  7F E3 FB 78 */	mr r3, r31
/* 8018DDDC 0018ADDC  38 80 05 00 */	li r4, 0x500
/* 8018DDE0 0018ADE0  4B FF FB 6D */	bl func_8018D94C
/* 8018DDE4 0018ADE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018DDE8 0018ADE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018DDEC 0018ADEC  7C 08 03 A6 */	mtlr r0
/* 8018DDF0 0018ADF0  38 21 00 10 */	addi r1, r1, 0x10
/* 8018DDF4 0018ADF4  4E 80 00 20 */	blr 