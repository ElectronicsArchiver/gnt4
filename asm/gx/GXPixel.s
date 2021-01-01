.include "macros.inc"

.section .text  # 0x80185AD0 - 0x801862B8

.global func_80185AD0
func_80185AD0:
/* 80185AD0 00182AD0  7C 08 02 A6 */	mflr r0
/* 80185AD4 00182AD4  90 01 00 04 */	stw r0, 4(r1)
/* 80185AD8 00182AD8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80185ADC 00182ADC  DB E1 00 58 */	stfd f31, 0x58(r1)
/* 80185AE0 00182AE0  BE E1 00 34 */	stmw r23, 0x34(r1)
/* 80185AE4 00182AE4  3B C0 00 00 */	li r30, 0
/* 80185AE8 00182AE8  54 7F EF FF */	rlwinm. r31, r3, 0x1d, 0x1f, 0x1f
/* 80185AEC 00182AEC  3B 04 00 00 */	addi r24, r4, 0
/* 80185AF0 00182AF0  3B BE 00 00 */	addi r29, r30, 0
/* 80185AF4 00182AF4  54 79 07 7E */	clrlwi r25, r3, 0x1d
/* 80185AF8 00182AF8  3B 80 00 00 */	li r28, 0
/* 80185AFC 00182AFC  3B 60 00 00 */	li r27, 0
/* 80185B00 00182B00  3B 40 00 00 */	li r26, 0
/* 80185B04 00182B04  41 82 00 4C */	beq lbl_80185B50
/* 80185B08 00182B08  FC 04 18 00 */	fcmpu cr0, f4, f3
/* 80185B0C 00182B0C  41 82 00 0C */	beq lbl_80185B18
/* 80185B10 00182B10  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 80185B14 00182B14  40 82 00 14 */	bne lbl_80185B28
lbl_80185B18:
/* 80185B18 00182B18  C0 02 BA F8 */	lfs f0, lbl_8027B798-_SDA2_BASE_(r2)
/* 80185B1C 00182B1C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80185B20 00182B20  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80185B24 00182B24  48 00 01 18 */	b lbl_80185C3C
lbl_80185B28:
/* 80185B28 00182B28  EC A2 08 28 */	fsubs f5, f2, f1
/* 80185B2C 00182B2C  C0 C2 BA FC */	lfs f6, lbl_8027B79C-_SDA2_BASE_(r2)
/* 80185B30 00182B30  EC 44 18 28 */	fsubs f2, f4, f3
/* 80185B34 00182B34  EC 01 18 28 */	fsubs f0, f1, f3
/* 80185B38 00182B38  EC 66 28 24 */	fdivs f3, f6, f5
/* 80185B3C 00182B3C  EC 23 00 B2 */	fmuls f1, f3, f2
/* 80185B40 00182B40  EC 03 00 32 */	fmuls f0, f3, f0
/* 80185B44 00182B44  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80185B48 00182B48  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80185B4C 00182B4C  48 00 00 F0 */	b lbl_80185C3C
lbl_80185B50:
/* 80185B50 00182B50  FC 04 18 00 */	fcmpu cr0, f4, f3
/* 80185B54 00182B54  41 82 00 0C */	beq lbl_80185B60
/* 80185B58 00182B58  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 80185B5C 00182B5C  40 82 00 14 */	bne lbl_80185B70
lbl_80185B60:
/* 80185B60 00182B60  C0 62 BA F8 */	lfs f3, lbl_8027B798-_SDA2_BASE_(r2)
/* 80185B64 00182B64  C0 82 BB 00 */	lfs f4, lbl_8027B7A0-_SDA2_BASE_(r2)
/* 80185B68 00182B68  FF E0 18 90 */	fmr f31, f3
/* 80185B6C 00182B6C  48 00 00 20 */	b lbl_80185B8C
lbl_80185B70:
/* 80185B70 00182B70  EC 04 18 28 */	fsubs f0, f4, f3
/* 80185B74 00182B74  EC A2 08 28 */	fsubs f5, f2, f1
/* 80185B78 00182B78  EC 44 00 F2 */	fmuls f2, f4, f3
/* 80185B7C 00182B7C  EC 84 00 24 */	fdivs f4, f4, f0
/* 80185B80 00182B80  EC 00 01 72 */	fmuls f0, f0, f5
/* 80185B84 00182B84  EF E1 28 24 */	fdivs f31, f1, f5
/* 80185B88 00182B88  EC 62 00 24 */	fdivs f3, f2, f0
lbl_80185B8C:
/* 80185B8C 00182B8C  C0 22 BB 00 */	lfs f1, lbl_8027B7A0-_SDA2_BASE_(r2)
/* 80185B90 00182B90  38 60 00 00 */	li r3, 0
/* 80185B94 00182B94  C8 02 BB 08 */	lfd f0, lbl_8027B7A8-_SDA2_BASE_(r2)
/* 80185B98 00182B98  48 00 00 0C */	b lbl_80185BA4
lbl_80185B9C:
/* 80185B9C 00182B9C  EC 84 00 72 */	fmuls f4, f4, f1
/* 80185BA0 00182BA0  38 63 00 01 */	addi r3, r3, 1
lbl_80185BA4:
/* 80185BA4 00182BA4  FC 04 00 40 */	.byte 0xFC, 0x04, 0x00, 0x40  /* unknown instruction */
/* 80185BA8 00182BA8  41 81 FF F4 */	bgt lbl_80185B9C
/* 80185BAC 00182BAC  C8 02 BB 18 */	lfd f0, lbl_8027B7B8-_SDA2_BASE_(r2)
/* 80185BB0 00182BB0  C0 42 BB 10 */	lfs f2, lbl_8027B7B0-_SDA2_BASE_(r2)
/* 80185BB4 00182BB4  C0 22 BA F8 */	lfs f1, lbl_8027B798-_SDA2_BASE_(r2)
/* 80185BB8 00182BB8  48 00 00 0C */	b lbl_80185BC4
lbl_80185BBC:
/* 80185BBC 00182BBC  EC 84 00 B2 */	fmuls f4, f4, f2
/* 80185BC0 00182BC0  38 63 FF FF */	addi r3, r3, -1
lbl_80185BC4:
/* 80185BC4 00182BC4  FC 04 08 40 */	.byte 0xFC, 0x04, 0x08, 0x40  /* unknown instruction */
/* 80185BC8 00182BC8  40 81 00 0C */	ble lbl_80185BD4
/* 80185BCC 00182BCC  FC 04 00 40 */	.byte 0xFC, 0x04, 0x00, 0x40  /* unknown instruction */
/* 80185BD0 00182BD0  41 80 FF EC */	blt lbl_80185BBC
lbl_80185BD4:
/* 80185BD4 00182BD4  3A E3 00 01 */	addi r23, r3, 1
/* 80185BD8 00182BD8  C0 02 BB 20 */	lfs f0, lbl_8027B7C0-_SDA2_BASE_(r2)
/* 80185BDC 00182BDC  38 00 00 01 */	li r0, 1
/* 80185BE0 00182BE0  C8 42 BB 28 */	lfd f2, lbl_8027B7C8-_SDA2_BASE_(r2)
/* 80185BE4 00182BE4  7C 00 B8 30 */	slw r0, r0, r23
/* 80185BE8 00182BE8  EC 20 01 32 */	fmuls f1, f0, f4
/* 80185BEC 00182BEC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80185BF0 00182BF0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80185BF4 00182BF4  3C 00 43 30 */	lis r0, 0x4330
/* 80185BF8 00182BF8  90 01 00 28 */	stw r0, 0x28(r1)
/* 80185BFC 00182BFC  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80185C00 00182C00  EC 00 10 28 */	fsubs f0, f0, f2
/* 80185C04 00182C04  EC 03 00 24 */	fdivs f0, f3, f0
/* 80185C08 00182C08  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80185C0C 00182C0C  48 00 85 49 */	bl func_8018E154
/* 80185C10 00182C10  50 7E 02 3E */	rlwimi r30, r3, 0, 8, 0x1f
/* 80185C14 00182C14  D3 E1 00 20 */	stfs f31, 0x20(r1)
/* 80185C18 00182C18  52 FD 06 FE */	rlwimi r29, r23, 0, 0x1b, 0x1f
/* 80185C1C 00182C1C  38 00 00 EF */	li r0, 0xef
/* 80185C20 00182C20  38 7E 00 00 */	addi r3, r30, 0
/* 80185C24 00182C24  50 03 C0 0E */	rlwimi r3, r0, 0x18, 0, 7
/* 80185C28 00182C28  38 00 00 F0 */	li r0, 0xf0
/* 80185C2C 00182C2C  38 9D 00 00 */	addi r4, r29, 0
/* 80185C30 00182C30  50 04 C0 0E */	rlwimi r4, r0, 0x18, 0, 7
/* 80185C34 00182C34  3B C3 00 00 */	addi r30, r3, 0
/* 80185C38 00182C38  3B A4 00 00 */	addi r29, r4, 0
lbl_80185C3C:
/* 80185C3C 00182C3C  80 E1 00 24 */	lwz r7, 0x24(r1)
/* 80185C40 00182C40  38 00 00 61 */	li r0, 0x61
/* 80185C44 00182C44  81 38 00 00 */	lwz r9, 0(r24)
/* 80185C48 00182C48  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 80185C4C 00182C4C  50 FB A5 7E */	rlwimi r27, r7, 0x14, 0x15, 0x1f
/* 80185C50 00182C50  38 DB 00 00 */	addi r6, r27, 0
/* 80185C54 00182C54  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 80185C58 00182C58  50 E6 A3 68 */	rlwimi r6, r7, 0x14, 0xd, 0x14
/* 80185C5C 00182C5C  81 01 00 20 */	lwz r8, 0x20(r1)
/* 80185C60 00182C60  38 A0 00 EE */	li r5, 0xee
/* 80185C64 00182C64  80 62 BA 70 */	lwz r3, lbl_8027B710-_SDA2_BASE_(r2)
/* 80185C68 00182C68  50 E6 A3 18 */	rlwimi r6, r7, 0x14, 0xc, 0xc
/* 80185C6C 00182C6C  50 A6 C0 0E */	rlwimi r6, r5, 0x18, 0, 7
/* 80185C70 00182C70  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 80185C74 00182C74  51 1A A5 7E */	rlwimi r26, r8, 0x14, 0x15, 0x1f
/* 80185C78 00182C78  7F 46 D3 78 */	mr r6, r26
/* 80185C7C 00182C7C  98 04 80 00 */	stb r0, -0x8000(r4)
/* 80185C80 00182C80  51 06 A3 68 */	rlwimi r6, r8, 0x14, 0xd, 0x14
/* 80185C84 00182C84  51 06 A3 18 */	rlwimi r6, r8, 0x14, 0xc, 0xc
/* 80185C88 00182C88  93 C4 80 00 */	stw r30, -0x8000(r4)
/* 80185C8C 00182C8C  53 E6 A2 D6 */	rlwimi r6, r31, 0x14, 0xb, 0xb
/* 80185C90 00182C90  38 A0 00 F1 */	li r5, 0xf1
/* 80185C94 00182C94  98 04 80 00 */	stb r0, -0x8000(r4)
/* 80185C98 00182C98  53 26 AA 14 */	rlwimi r6, r25, 0x15, 8, 0xa
/* 80185C9C 00182C9C  50 A6 C0 0E */	rlwimi r6, r5, 0x18, 0, 7
/* 80185CA0 00182CA0  93 A4 80 00 */	stw r29, -0x8000(r4)
/* 80185CA4 00182CA4  51 3C C2 3E */	rlwimi r28, r9, 0x18, 8, 0x1f
/* 80185CA8 00182CA8  38 A0 00 F2 */	li r5, 0xf2
/* 80185CAC 00182CAC  98 04 80 00 */	stb r0, -0x8000(r4)
/* 80185CB0 00182CB0  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 80185CB4 00182CB4  38 DC 00 00 */	addi r6, r28, 0
/* 80185CB8 00182CB8  50 A6 C0 0E */	rlwimi r6, r5, 0x18, 0, 7
/* 80185CBC 00182CBC  98 04 80 00 */	stb r0, -0x8000(r4)
/* 80185CC0 00182CC0  38 00 00 00 */	li r0, 0
/* 80185CC4 00182CC4  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 80185CC8 00182CC8  B0 03 00 02 */	sth r0, 2(r3)
/* 80185CCC 00182CCC  BA E1 00 34 */	lmw r23, 0x34(r1)
/* 80185CD0 00182CD0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80185CD4 00182CD4  CB E1 00 58 */	lfd f31, 0x58(r1)
/* 80185CD8 00182CD8  38 21 00 60 */	addi r1, r1, 0x60
/* 80185CDC 00182CDC  7C 08 03 A6 */	mtlr r0
/* 80185CE0 00182CE0  4E 80 00 20 */	blr 

.global func_80185CE4
func_80185CE4:
/* 80185CE4 00182CE4  7C 08 02 A6 */	mflr r0
/* 80185CE8 00182CE8  90 01 00 04 */	stw r0, 4(r1)
/* 80185CEC 00182CEC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80185CF0 00182CF0  DB E1 00 78 */	stfd f31, 0x78(r1)
/* 80185CF4 00182CF4  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 80185CF8 00182CF8  DB A1 00 68 */	stfd f29, 0x68(r1)
/* 80185CFC 00182CFC  DB 81 00 60 */	stfd f28, 0x60(r1)
/* 80185D00 00182D00  DB 61 00 58 */	stfd f27, 0x58(r1)
/* 80185D04 00182D04  DB 41 00 50 */	stfd f26, 0x50(r1)
/* 80185D08 00182D08  DB 21 00 48 */	stfd f25, 0x48(r1)
/* 80185D0C 00182D0C  DB 01 00 40 */	stfd f24, 0x40(r1)
/* 80185D10 00182D10  DA E1 00 38 */	stfd f23, 0x38(r1)
/* 80185D14 00182D14  93 E1 00 34 */	stw r31, 0x34(r1)
/* 80185D18 00182D18  93 C1 00 30 */	stw r30, 0x30(r1)
/* 80185D1C 00182D1C  93 A1 00 2C */	stw r29, 0x2c(r1)
/* 80185D20 00182D20  C8 22 BB 30 */	lfd f1, lbl_8027B7D0-_SDA2_BASE_(r2)
/* 80185D24 00182D24  C0 05 00 3C */	lfs f0, 0x3c(r5)
/* 80185D28 00182D28  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80185D2C 00182D2C  40 82 00 28 */	bne lbl_80185D54
/* 80185D30 00182D30  C0 25 00 28 */	lfs f1, 0x28(r5)
/* 80185D34 00182D34  C0 02 BA FC */	lfs f0, lbl_8027B79C-_SDA2_BASE_(r2)
/* 80185D38 00182D38  C0 45 00 2C */	lfs f2, 0x2c(r5)
/* 80185D3C 00182D3C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80185D40 00182D40  C0 05 00 00 */	lfs f0, 0(r5)
/* 80185D44 00182D44  EC 22 08 24 */	fdivs f1, f2, f1
/* 80185D48 00182D48  EF 01 00 24 */	fdivs f24, f1, f0
/* 80185D4C 00182D4C  FC 00 08 90 */	fmr f0, f1
/* 80185D50 00182D50  48 00 00 1C */	b lbl_80185D6C
lbl_80185D54:
/* 80185D54 00182D54  C0 42 BA FC */	lfs f2, lbl_8027B79C-_SDA2_BASE_(r2)
/* 80185D58 00182D58  C0 25 00 00 */	lfs f1, 0(r5)
/* 80185D5C 00182D5C  C0 02 BB 38 */	lfs f0, lbl_8027B7D8-_SDA2_BASE_(r2)
/* 80185D60 00182D60  EC 22 08 24 */	fdivs f1, f2, f1
/* 80185D64 00182D64  FF 00 08 90 */	fmr f24, f1
/* 80185D68 00182D68  EC 00 00 72 */	fmuls f0, f0, f1
lbl_80185D6C:
/* 80185D6C 00182D6C  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 80185D70 00182D70  CB 62 BB 50 */	lfd f27, lbl_8027B7F0-_SDA2_BASE_(r2)
/* 80185D74 00182D74  90 01 00 24 */	stw r0, 0x24(r1)
/* 80185D78 00182D78  3F E0 43 30 */	lis r31, 0x4330
/* 80185D7C 00182D7C  C0 22 BB 10 */	lfs f1, lbl_8027B7B0-_SDA2_BASE_(r2)
/* 80185D80 00182D80  EF 40 00 32 */	fmuls f26, f0, f0
/* 80185D84 00182D84  93 E1 00 20 */	stw r31, 0x20(r1)
/* 80185D88 00182D88  C3 82 BA FC */	lfs f28, lbl_8027B79C-_SDA2_BASE_(r2)
/* 80185D8C 00182D8C  7C 7E 1B 78 */	mr r30, r3
/* 80185D90 00182D90  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80185D94 00182D94  C3 A2 BA F8 */	lfs f29, lbl_8027B798-_SDA2_BASE_(r2)
/* 80185D98 00182D98  3B A0 00 00 */	li r29, 0
/* 80185D9C 00182D9C  EC 00 D8 28 */	fsubs f0, f0, f27
/* 80185DA0 00182DA0  CB C2 BB 18 */	lfd f30, lbl_8027B7B8-_SDA2_BASE_(r2)
/* 80185DA4 00182DA4  CB E2 BB 40 */	lfd f31, lbl_8027B7E0-_SDA2_BASE_(r2)
/* 80185DA8 00182DA8  C2 E2 BB 48 */	lfs f23, lbl_8027B7E8-_SDA2_BASE_(r2)
/* 80185DAC 00182DAC  EF 21 00 24 */	fdivs f25, f1, f0
lbl_80185DB0:
/* 80185DB0 00182DB0  38 1D 00 01 */	addi r0, r29, 1
/* 80185DB4 00182DB4  54 00 28 34 */	slwi r0, r0, 5
/* 80185DB8 00182DB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80185DBC 00182DBC  93 E1 00 20 */	stw r31, 0x20(r1)
/* 80185DC0 00182DC0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80185DC4 00182DC4  EC 00 D8 28 */	fsubs f0, f0, f27
/* 80185DC8 00182DC8  EC 00 06 72 */	fmuls f0, f0, f25
/* 80185DCC 00182DCC  EC 00 06 32 */	fmuls f0, f0, f24
/* 80185DD0 00182DD0  EC 00 00 32 */	fmuls f0, f0, f0
/* 80185DD4 00182DD4  EC 00 D0 24 */	fdivs f0, f0, f26
/* 80185DD8 00182DD8  EC 5C 00 2A */	fadds f2, f28, f0
/* 80185DDC 00182DDC  FC 02 E8 40 */	.byte 0xFC, 0x02, 0xE8, 0x40  /* unknown instruction */
/* 80185DE0 00182DE0  40 81 00 54 */	ble lbl_80185E34
/* 80185DE4 00182DE4  FC 20 10 34 */	frsqrte f1, f2
/* 80185DE8 00182DE8  FC 01 00 72 */	fmul f0, f1, f1
/* 80185DEC 00182DEC  FC 3E 00 72 */	fmul f1, f30, f1
/* 80185DF0 00182DF0  FC 02 00 32 */	fmul f0, f2, f0
/* 80185DF4 00182DF4  FC 1F 00 28 */	fsub f0, f31, f0
/* 80185DF8 00182DF8  FC 21 00 32 */	fmul f1, f1, f0
/* 80185DFC 00182DFC  FC 01 00 72 */	fmul f0, f1, f1
/* 80185E00 00182E00  FC 3E 00 72 */	fmul f1, f30, f1
/* 80185E04 00182E04  FC 02 00 32 */	fmul f0, f2, f0
/* 80185E08 00182E08  FC 1F 00 28 */	fsub f0, f31, f0
/* 80185E0C 00182E0C  FC 21 00 32 */	fmul f1, f1, f0
/* 80185E10 00182E10  FC 01 00 72 */	fmul f0, f1, f1
/* 80185E14 00182E14  FC 3E 00 72 */	fmul f1, f30, f1
/* 80185E18 00182E18  FC 02 00 32 */	fmul f0, f2, f0
/* 80185E1C 00182E1C  FC 1F 00 28 */	fsub f0, f31, f0
/* 80185E20 00182E20  FC 01 00 32 */	fmul f0, f1, f0
/* 80185E24 00182E24  FC 02 00 32 */	fmul f0, f2, f0
/* 80185E28 00182E28  FC 00 00 18 */	frsp f0, f0
/* 80185E2C 00182E2C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80185E30 00182E30  C0 41 00 14 */	lfs f2, 0x14(r1)
lbl_80185E34:
/* 80185E34 00182E34  EC 37 00 B2 */	fmuls f1, f23, f2
/* 80185E38 00182E38  48 00 83 1D */	bl func_8018E154
/* 80185E3C 00182E3C  3B BD 00 01 */	addi r29, r29, 1
/* 80185E40 00182E40  54 60 05 3E */	clrlwi r0, r3, 0x14
/* 80185E44 00182E44  B0 1E 00 00 */	sth r0, 0(r30)
/* 80185E48 00182E48  28 1D 00 0A */	cmplwi r29, 0xa
/* 80185E4C 00182E4C  3B DE 00 02 */	addi r30, r30, 2
/* 80185E50 00182E50  41 80 FF 60 */	blt lbl_80185DB0
/* 80185E54 00182E54  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80185E58 00182E58  CB E1 00 78 */	lfd f31, 0x78(r1)
/* 80185E5C 00182E5C  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 80185E60 00182E60  CB A1 00 68 */	lfd f29, 0x68(r1)
/* 80185E64 00182E64  CB 81 00 60 */	lfd f28, 0x60(r1)
/* 80185E68 00182E68  CB 61 00 58 */	lfd f27, 0x58(r1)
/* 80185E6C 00182E6C  CB 41 00 50 */	lfd f26, 0x50(r1)
/* 80185E70 00182E70  CB 21 00 48 */	lfd f25, 0x48(r1)
/* 80185E74 00182E74  CB 01 00 40 */	lfd f24, 0x40(r1)
/* 80185E78 00182E78  CA E1 00 38 */	lfd f23, 0x38(r1)
/* 80185E7C 00182E7C  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 80185E80 00182E80  83 C1 00 30 */	lwz r30, 0x30(r1)
/* 80185E84 00182E84  83 A1 00 2C */	lwz r29, 0x2c(r1)
/* 80185E88 00182E88  38 21 00 80 */	addi r1, r1, 0x80
/* 80185E8C 00182E8C  7C 08 03 A6 */	mtlr r0
/* 80185E90 00182E90  4E 80 00 20 */	blr 

.global func_80185E94
func_80185E94:
/* 80185E94 00182E94  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80185E98 00182E98  41 82 00 E4 */	beq lbl_80185F7C
/* 80185E9C 00182E9C  38 C0 00 00 */	li r6, 0
/* 80185EA0 00182EA0  54 C0 08 3C */	slwi r0, r6, 1
/* 80185EA4 00182EA4  7D 25 02 14 */	add r9, r5, r0
/* 80185EA8 00182EA8  A1 09 00 00 */	lhz r8, 0(r9)
/* 80185EAC 00182EAC  54 CA F8 7E */	srwi r10, r6, 1
/* 80185EB0 00182EB0  A0 E9 00 02 */	lhz r7, 2(r9)
/* 80185EB4 00182EB4  38 00 00 61 */	li r0, 0x61
/* 80185EB8 00182EB8  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 80185EBC 00182EBC  39 60 00 00 */	li r11, 0
/* 80185EC0 00182EC0  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 80185EC4 00182EC4  51 0B 05 3E */	rlwimi r11, r8, 0, 0x14, 0x1f
/* 80185EC8 00182EC8  39 0B 00 00 */	addi r8, r11, 0
/* 80185ECC 00182ECC  38 CA 00 E9 */	addi r6, r10, 0xe9
/* 80185ED0 00182ED0  50 E8 62 26 */	rlwimi r8, r7, 0xc, 8, 0x13
/* 80185ED4 00182ED4  50 C8 C0 0E */	rlwimi r8, r6, 0x18, 0, 7
/* 80185ED8 00182ED8  91 05 80 00 */	stw r8, -0x8000(r5)
/* 80185EDC 00182EDC  38 CA 00 EA */	addi r6, r10, 0xea
/* 80185EE0 00182EE0  39 60 00 00 */	li r11, 0
/* 80185EE4 00182EE4  A1 09 00 04 */	lhz r8, 4(r9)
/* 80185EE8 00182EE8  A0 E9 00 06 */	lhz r7, 6(r9)
/* 80185EEC 00182EEC  51 0B 05 3E */	rlwimi r11, r8, 0, 0x14, 0x1f
/* 80185EF0 00182EF0  39 0B 00 00 */	addi r8, r11, 0
/* 80185EF4 00182EF4  98 05 80 00 */	stb r0, -0x8000(r5)
/* 80185EF8 00182EF8  50 E8 62 26 */	rlwimi r8, r7, 0xc, 8, 0x13
/* 80185EFC 00182EFC  50 C8 C0 0E */	rlwimi r8, r6, 0x18, 0, 7
/* 80185F00 00182F00  91 05 80 00 */	stw r8, -0x8000(r5)
/* 80185F04 00182F04  38 CA 00 EB */	addi r6, r10, 0xeb
/* 80185F08 00182F08  39 60 00 00 */	li r11, 0
/* 80185F0C 00182F0C  A1 09 00 08 */	lhz r8, 8(r9)
/* 80185F10 00182F10  A0 E9 00 0A */	lhz r7, 0xa(r9)
/* 80185F14 00182F14  51 0B 05 3E */	rlwimi r11, r8, 0, 0x14, 0x1f
/* 80185F18 00182F18  39 0B 00 00 */	addi r8, r11, 0
/* 80185F1C 00182F1C  98 05 80 00 */	stb r0, -0x8000(r5)
/* 80185F20 00182F20  50 E8 62 26 */	rlwimi r8, r7, 0xc, 8, 0x13
/* 80185F24 00182F24  50 C8 C0 0E */	rlwimi r8, r6, 0x18, 0, 7
/* 80185F28 00182F28  91 05 80 00 */	stw r8, -0x8000(r5)
/* 80185F2C 00182F2C  38 CA 00 EC */	addi r6, r10, 0xec
/* 80185F30 00182F30  39 60 00 00 */	li r11, 0
/* 80185F34 00182F34  A1 09 00 0C */	lhz r8, 0xc(r9)
/* 80185F38 00182F38  A0 E9 00 0E */	lhz r7, 0xe(r9)
/* 80185F3C 00182F3C  51 0B 05 3E */	rlwimi r11, r8, 0, 0x14, 0x1f
/* 80185F40 00182F40  39 0B 00 00 */	addi r8, r11, 0
/* 80185F44 00182F44  98 05 80 00 */	stb r0, -0x8000(r5)
/* 80185F48 00182F48  50 E8 62 26 */	rlwimi r8, r7, 0xc, 8, 0x13
/* 80185F4C 00182F4C  50 C8 C0 0E */	rlwimi r8, r6, 0x18, 0, 7
/* 80185F50 00182F50  91 05 80 00 */	stw r8, -0x8000(r5)
/* 80185F54 00182F54  38 CA 00 ED */	addi r6, r10, 0xed
/* 80185F58 00182F58  39 60 00 00 */	li r11, 0
/* 80185F5C 00182F5C  A1 09 00 10 */	lhz r8, 0x10(r9)
/* 80185F60 00182F60  A0 E9 00 12 */	lhz r7, 0x12(r9)
/* 80185F64 00182F64  51 0B 05 3E */	rlwimi r11, r8, 0, 0x14, 0x1f
/* 80185F68 00182F68  39 0B 00 00 */	addi r8, r11, 0
/* 80185F6C 00182F6C  98 05 80 00 */	stb r0, -0x8000(r5)
/* 80185F70 00182F70  50 E8 62 26 */	rlwimi r8, r7, 0xc, 8, 0x13
/* 80185F74 00182F74  50 C8 C0 0E */	rlwimi r8, r6, 0x18, 0, 7
/* 80185F78 00182F78  91 05 80 00 */	stw r8, -0x8000(r5)
lbl_80185F7C:
/* 80185F7C 00182F7C  54 85 04 3E */	clrlwi r5, r4, 0x10
/* 80185F80 00182F80  80 82 BA 70 */	lwz r4, lbl_8027B710-_SDA2_BASE_(r2)
/* 80185F84 00182F84  38 05 01 56 */	addi r0, r5, 0x156
/* 80185F88 00182F88  38 A0 00 00 */	li r5, 0
/* 80185F8C 00182F8C  50 05 05 BE */	rlwimi r5, r0, 0, 0x16, 0x1f
/* 80185F90 00182F90  50 65 55 6A */	rlwimi r5, r3, 0xa, 0x15, 0x15
/* 80185F94 00182F94  38 00 00 61 */	li r0, 0x61
/* 80185F98 00182F98  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 80185F9C 00182F9C  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 80185FA0 00182FA0  38 00 00 E8 */	li r0, 0xe8
/* 80185FA4 00182FA4  50 05 C0 0E */	rlwimi r5, r0, 0x18, 0, 7
/* 80185FA8 00182FA8  90 A3 80 00 */	stw r5, -0x8000(r3)
/* 80185FAC 00182FAC  38 00 00 00 */	li r0, 0
/* 80185FB0 00182FB0  B0 04 00 02 */	sth r0, 2(r4)
/* 80185FB4 00182FB4  4E 80 00 20 */	blr 

.global func_80185FB8
func_80185FB8:
/* 80185FB8 00182FB8  81 02 BA 70 */	lwz r8, lbl_8027B710-_SDA2_BASE_(r2)
/* 80185FBC 00182FBC  20 03 00 03 */	subfic r0, r3, 3
/* 80185FC0 00182FC0  7C 07 00 34 */	cntlzw r7, r0
/* 80185FC4 00182FC4  20 03 00 02 */	subfic r0, r3, 2
/* 80185FC8 00182FC8  81 28 01 D0 */	lwz r9, 0x1d0(r8)
/* 80185FCC 00182FCC  50 E9 35 28 */	rlwimi r9, r7, 6, 0x14, 0x14
/* 80185FD0 00182FD0  38 E9 00 00 */	addi r7, r9, 0
/* 80185FD4 00182FD4  50 67 07 FE */	rlwimi r7, r3, 0, 0x1f, 0x1f
/* 80185FD8 00182FD8  7C 00 00 34 */	cntlzw r0, r0
/* 80185FDC 00182FDC  50 07 E7 BC */	rlwimi r7, r0, 0x1c, 0x1e, 0x1e
/* 80185FE0 00182FE0  50 C7 64 26 */	rlwimi r7, r6, 0xc, 0x10, 0x13
/* 80185FE4 00182FE4  50 87 45 6E */	rlwimi r7, r4, 8, 0x15, 0x17
/* 80185FE8 00182FE8  38 00 00 61 */	li r0, 0x61
/* 80185FEC 00182FEC  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 80185FF0 00182FF0  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 80185FF4 00182FF4  50 A7 2E 34 */	rlwimi r7, r5, 5, 0x18, 0x1a
/* 80185FF8 00182FF8  38 00 00 00 */	li r0, 0
/* 80185FFC 00182FFC  90 E3 80 00 */	stw r7, -0x8000(r3)
/* 80186000 00183000  90 E8 01 D0 */	stw r7, 0x1d0(r8)
/* 80186004 00183004  B0 08 00 02 */	sth r0, 2(r8)
/* 80186008 00183008  4E 80 00 20 */	blr 

.global func_8018600C
func_8018600C:
/* 8018600C 0018300C  80 A2 BA 70 */	lwz r5, lbl_8027B710-_SDA2_BASE_(r2)
/* 80186010 00183010  38 00 00 61 */	li r0, 0x61
/* 80186014 00183014  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 80186018 00183018  80 C5 01 D0 */	lwz r6, 0x1d0(r5)
/* 8018601C 0018301C  50 66 1F 38 */	rlwimi r6, r3, 3, 0x1c, 0x1c
/* 80186020 00183020  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 80186024 00183024  38 00 00 00 */	li r0, 0
/* 80186028 00183028  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 8018602C 0018302C  90 C5 01 D0 */	stw r6, 0x1d0(r5)
/* 80186030 00183030  B0 05 00 02 */	sth r0, 2(r5)
/* 80186034 00183034  4E 80 00 20 */	blr 

.global func_80186038
func_80186038:
/* 80186038 00183038  80 A2 BA 70 */	lwz r5, lbl_8027B710-_SDA2_BASE_(r2)
/* 8018603C 0018303C  38 00 00 61 */	li r0, 0x61
/* 80186040 00183040  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 80186044 00183044  80 C5 01 D0 */	lwz r6, 0x1d0(r5)
/* 80186048 00183048  50 66 26 F6 */	rlwimi r6, r3, 4, 0x1b, 0x1b
/* 8018604C 0018304C  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 80186050 00183050  38 00 00 00 */	li r0, 0
/* 80186054 00183054  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 80186058 00183058  90 C5 01 D0 */	stw r6, 0x1d0(r5)
/* 8018605C 0018305C  B0 05 00 02 */	sth r0, 2(r5)
/* 80186060 00183060  4E 80 00 20 */	blr 

.global func_80186064
func_80186064:
/* 80186064 00183064  80 C2 BA 70 */	lwz r6, lbl_8027B710-_SDA2_BASE_(r2)
/* 80186068 00183068  38 00 00 61 */	li r0, 0x61
/* 8018606C 0018306C  80 E6 01 D8 */	lwz r7, 0x1d8(r6)
/* 80186070 00183070  50 67 07 FE */	rlwimi r7, r3, 0, 0x1f, 0x1f
/* 80186074 00183074  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 80186078 00183078  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 8018607C 0018307C  50 87 0F 3C */	rlwimi r7, r4, 1, 0x1c, 0x1e
/* 80186080 00183080  50 A7 26 F6 */	rlwimi r7, r5, 4, 0x1b, 0x1b
/* 80186084 00183084  90 E3 80 00 */	stw r7, -0x8000(r3)
/* 80186088 00183088  38 00 00 00 */	li r0, 0
/* 8018608C 0018308C  90 E6 01 D8 */	stw r7, 0x1d8(r6)
/* 80186090 00183090  B0 06 00 02 */	sth r0, 2(r6)
/* 80186094 00183094  4E 80 00 20 */	blr 

.global func_80186098
func_80186098:
/* 80186098 00183098  80 C2 BA 70 */	lwz r6, lbl_8027B710-_SDA2_BASE_(r2)
/* 8018609C 0018309C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801860A0 001830A0  38 60 00 61 */	li r3, 0x61
/* 801860A4 001830A4  80 A6 01 DC */	lwz r5, 0x1dc(r6)
/* 801860A8 001830A8  50 05 36 72 */	rlwimi r5, r0, 6, 0x19, 0x19
/* 801860AC 001830AC  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 801860B0 001830B0  90 A6 01 DC */	stw r5, 0x1dc(r6)
/* 801860B4 001830B4  38 00 00 00 */	li r0, 0
/* 801860B8 001830B8  98 64 80 00 */	stb r3, 0xCC008000@l(r4)
/* 801860BC 001830BC  80 66 01 DC */	lwz r3, 0x1dc(r6)
/* 801860C0 001830C0  90 64 80 00 */	stw r3, -0x8000(r4)
/* 801860C4 001830C4  B0 06 00 02 */	sth r0, 2(r6)
/* 801860C8 001830C8  4E 80 00 20 */	blr 

.global func_801860CC
func_801860CC:
/* 801860CC 001830CC  3C A0 80 21 */	lis r5, lbl_802179B0@ha
/* 801860D0 001830D0  80 E2 BA 70 */	lwz r7, lbl_8027B710-_SDA2_BASE_(r2)
/* 801860D4 001830D4  54 66 10 3A */	slwi r6, r3, 2
/* 801860D8 001830D8  38 05 79 B0 */	addi r0, r5, lbl_802179B0@l
/* 801860DC 001830DC  80 A7 01 DC */	lwz r5, 0x1dc(r7)
/* 801860E0 001830E0  7C C0 32 14 */	add r6, r0, r6
/* 801860E4 001830E4  80 06 00 00 */	lwz r0, 0(r6)
/* 801860E8 001830E8  39 05 00 00 */	addi r8, r5, 0
/* 801860EC 001830EC  50 05 07 7E */	rlwimi r5, r0, 0, 0x1d, 0x1f
/* 801860F0 001830F0  90 A7 01 DC */	stw r5, 0x1dc(r7)
/* 801860F4 001830F4  80 07 01 DC */	lwz r0, 0x1dc(r7)
/* 801860F8 001830F8  50 80 1E B8 */	rlwimi r0, r4, 3, 0x1a, 0x1c
/* 801860FC 001830FC  90 07 01 DC */	stw r0, 0x1dc(r7)
/* 80186100 00183100  80 A7 01 DC */	lwz r5, 0x1dc(r7)
/* 80186104 00183104  7C 08 28 40 */	cmplw r8, r5
/* 80186108 00183108  41 82 00 44 */	beq lbl_8018614C
/* 8018610C 0018310C  38 00 00 61 */	li r0, 0x61
/* 80186110 00183110  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 80186114 00183114  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 80186118 00183118  2C 03 00 02 */	cmpwi r3, 2
/* 8018611C 0018311C  90 A4 80 00 */	stw r5, -0x8000(r4)
/* 80186120 00183120  40 82 00 0C */	bne lbl_8018612C
/* 80186124 00183124  38 00 00 01 */	li r0, 1
/* 80186128 00183128  48 00 00 08 */	b lbl_80186130
lbl_8018612C:
/* 8018612C 0018312C  38 00 00 00 */	li r0, 0
lbl_80186130:
/* 80186130 00183130  80 A2 BA 70 */	lwz r5, lbl_8027B710-_SDA2_BASE_(r2)
/* 80186134 00183134  80 85 02 04 */	lwz r4, 0x204(r5)
/* 80186138 00183138  50 04 4D AC */	rlwimi r4, r0, 9, 0x16, 0x16
/* 8018613C 0018313C  90 85 02 04 */	stw r4, 0x204(r5)
/* 80186140 00183140  80 05 05 AC */	lwz r0, 0x5ac(r5)
/* 80186144 00183144  60 00 00 04 */	ori r0, r0, 4
/* 80186148 00183148  90 05 05 AC */	stw r0, 0x5ac(r5)
lbl_8018614C:
/* 8018614C 0018314C  80 06 00 00 */	lwz r0, 0(r6)
/* 80186150 00183150  28 00 00 04 */	cmplwi r0, 4
/* 80186154 00183154  40 82 00 3C */	bne lbl_80186190
/* 80186158 00183158  80 C2 BA 70 */	lwz r6, lbl_8027B710-_SDA2_BASE_(r2)
/* 8018615C 0018315C  38 03 FF FC */	addi r0, r3, -4
/* 80186160 00183160  38 80 00 42 */	li r4, 0x42
/* 80186164 00183164  80 66 01 D4 */	lwz r3, 0x1d4(r6)
/* 80186168 00183168  50 03 4D 6C */	rlwimi r3, r0, 9, 0x15, 0x16
/* 8018616C 0018316C  38 00 00 61 */	li r0, 0x61
/* 80186170 00183170  90 66 01 D4 */	stw r3, 0x1d4(r6)
/* 80186174 00183174  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 80186178 00183178  80 A6 01 D4 */	lwz r5, 0x1d4(r6)
/* 8018617C 0018317C  50 85 C0 0E */	rlwimi r5, r4, 0x18, 0, 7
/* 80186180 00183180  90 A6 01 D4 */	stw r5, 0x1d4(r6)
/* 80186184 00183184  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 80186188 00183188  80 06 01 D4 */	lwz r0, 0x1d4(r6)
/* 8018618C 0018318C  90 03 80 00 */	stw r0, -0x8000(r3)
lbl_80186190:
/* 80186190 00183190  80 62 BA 70 */	lwz r3, lbl_8027B710-_SDA2_BASE_(r2)
/* 80186194 00183194  38 00 00 00 */	li r0, 0
/* 80186198 00183198  B0 03 00 02 */	sth r0, 2(r3)
/* 8018619C 0018319C  4E 80 00 20 */	blr 

.global func_801861A0
func_801861A0:
/* 801861A0 001831A0  80 A2 BA 70 */	lwz r5, lbl_8027B710-_SDA2_BASE_(r2)
/* 801861A4 001831A4  38 00 00 61 */	li r0, 0x61
/* 801861A8 001831A8  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 801861AC 001831AC  80 C5 01 D0 */	lwz r6, 0x1d0(r5)
/* 801861B0 001831B0  50 66 17 7A */	rlwimi r6, r3, 2, 0x1d, 0x1d
/* 801861B4 001831B4  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 801861B8 001831B8  38 00 00 00 */	li r0, 0
/* 801861BC 001831BC  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 801861C0 001831C0  90 C5 01 D0 */	stw r6, 0x1d0(r5)
/* 801861C4 001831C4  B0 05 00 02 */	sth r0, 2(r5)
/* 801861C8 001831C8  4E 80 00 20 */	blr 

.global func_801861CC
func_801861CC:
/* 801861CC 001831CC  80 C2 BA 70 */	lwz r6, lbl_8027B710-_SDA2_BASE_(r2)
/* 801861D0 001831D0  54 85 06 3E */	clrlwi r5, r4, 0x18
/* 801861D4 001831D4  38 00 00 61 */	li r0, 0x61
/* 801861D8 001831D8  80 E6 01 D4 */	lwz r7, 0x1d4(r6)
/* 801861DC 001831DC  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 801861E0 001831E0  50 A7 06 3E */	rlwimi r7, r5, 0, 0x18, 0x1f
/* 801861E4 001831E4  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 801861E8 001831E8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801861EC 001831EC  38 67 00 00 */	addi r3, r7, 0
/* 801861F0 001831F0  50 03 45 EE */	rlwimi r3, r0, 8, 0x17, 0x17
/* 801861F4 001831F4  90 64 80 00 */	stw r3, -0x8000(r4)
/* 801861F8 001831F8  38 00 00 00 */	li r0, 0
/* 801861FC 001831FC  90 66 01 D4 */	stw r3, 0x1d4(r6)
/* 80186200 00183200  B0 06 00 02 */	sth r0, 2(r6)
/* 80186204 00183204  4E 80 00 20 */	blr 

.global func_80186208
func_80186208:
/* 80186208 00183208  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8018620C 0018320C  80 82 BA 70 */	lwz r4, lbl_8027B710-_SDA2_BASE_(r2)
/* 80186210 00183210  38 A0 00 00 */	li r5, 0
/* 80186214 00183214  50 05 07 FE */	rlwimi r5, r0, 0, 0x1f, 0x1f
/* 80186218 00183218  50 65 0F BC */	rlwimi r5, r3, 1, 0x1e, 0x1e
/* 8018621C 0018321C  38 00 00 61 */	li r0, 0x61
/* 80186220 00183220  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 80186224 00183224  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 80186228 00183228  38 00 00 44 */	li r0, 0x44
/* 8018622C 0018322C  50 05 C0 0E */	rlwimi r5, r0, 0x18, 0, 7
/* 80186230 00183230  90 A3 80 00 */	stw r5, -0x8000(r3)
/* 80186234 00183234  38 00 00 00 */	li r0, 0
/* 80186238 00183238  B0 04 00 02 */	sth r0, 2(r4)
/* 8018623C 0018323C  4E 80 00 20 */	blr 

.global func_80186240
func_80186240:
/* 80186240 00183240  7C 08 02 A6 */	mflr r0
/* 80186244 00183244  90 01 00 04 */	stw r0, 4(r1)
/* 80186248 00183248  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8018624C 0018324C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80186250 00183250  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80186254 00183254  3F E0 CC 01 */	lis r31, 0xCC008000@ha
/* 80186258 00183258  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8018625C 0018325C  3B C0 00 61 */	li r30, 0x61
/* 80186260 00183260  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80186264 00183264  7C 7D 1B 78 */	mr r29, r3
/* 80186268 00183268  80 A2 BA 70 */	lwz r5, lbl_8027B710-_SDA2_BASE_(r2)
/* 8018626C 0018326C  80 85 00 7C */	lwz r4, 0x7c(r5)
/* 80186270 00183270  50 04 B2 52 */	rlwimi r4, r0, 0x16, 9, 9
/* 80186274 00183274  90 85 00 7C */	stw r4, 0x7c(r5)
/* 80186278 00183278  9B DF 80 00 */	stb r30, 0xCC008000@l(r31)
/* 8018627C 0018327C  80 05 00 7C */	lwz r0, 0x7c(r5)
/* 80186280 00183280  90 1F 80 00 */	stw r0, -0x8000(r31)
/* 80186284 00183284  4B FF F1 09 */	bl func_8018538C
/* 80186288 00183288  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 8018628C 0018328C  9B DF 80 00 */	stb r30, -0x8000(r31)
/* 80186290 00183290  64 00 68 00 */	oris r0, r0, 0x6800
/* 80186294 00183294  90 1F 80 00 */	stw r0, -0x8000(r31)
/* 80186298 00183298  4B FF F0 F5 */	bl func_8018538C
/* 8018629C 0018329C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801862A0 001832A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801862A4 001832A4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801862A8 001832A8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801862AC 001832AC  38 21 00 20 */	addi r1, r1, 0x20
/* 801862B0 001832B0  7C 08 03 A6 */	mtlr r0
/* 801862B4 001832B4  4E 80 00 20 */	blr 