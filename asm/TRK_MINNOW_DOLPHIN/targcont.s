.include "macros.inc"

.section .text  # 0x8018DDF8 - 0x8018DE2C

.global TRKTargetContinue
TRKTargetContinue:
/* 8018DDF8 0018ADF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018DDFC 0018ADFC  7C 08 02 A6 */	mflr r0
/* 8018DE00 0018AE00  38 60 00 00 */	li r3, 0
/* 8018DE04 0018AE04  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018DE08 0018AE08  4B FF E3 65 */	bl TRKTargetSetStopped
/* 8018DE0C 0018AE0C  4B FF FB F1 */	bl UnreserveEXI2Port
/* 8018DE10 0018AE10  4B FF E0 01 */	bl TRKSwapAndGo
/* 8018DE14 0018AE14  4B FF FC 19 */	bl ReserveEXI2Port
/* 8018DE18 0018AE18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018DE1C 0018AE1C  38 60 00 00 */	li r3, 0
/* 8018DE20 0018AE20  7C 08 03 A6 */	mtlr r0
/* 8018DE24 0018AE24  38 21 00 10 */	addi r1, r1, 0x10
/* 8018DE28 0018AE28  4E 80 00 20 */	blr 
