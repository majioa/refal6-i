START "c:\\ref\\refal5.rex"
<BlockBegin BR RP DG CP DGALL SYSFUN OPEN CLOSE GET PRINT PROUT PUTOUT PUT CARD IMPLODE ADD SUB MUL DIV MOD DIVMOD TYPE TYPE6 GTR WTR SETV OPEN_FILE CLOSE_CHANNEL EOF READ_LINE! PRINTLN! MODE NUMB UPPER "+" "-" "*" "/" "%" "\\" COMPARE SYSARG SHIFT>
*BR=F22(U W C '=' O k *WTR i *MEM a a gE b gH b k *GTR i *MEM lB lB p)
*RP=F47(U W C '=' O k *LOOKUP eE lA oA A O SMK u 19 A O SQK O k *WTR i *MEM a a gE b gH b eP eV lB p P k *WTR i *MEM a a gE b gH b eP lB p)
*DG=F32(O k *LOOKUP eE lA oA A O SJH u 14 A O SNH O eQ k *WTR i *MEM eM eS lB p P k *WTR i *MEM eM lB p)
*CP=F38(O k *LOOKUP eE lA oA A O SJH u 20 A O SNH O eQ k *WTR i *MEM eM a a gE b eQ b eS lB p P k *WTR i *MEM eM lB p)
*LOOKUP=F15(O k *LOOKUP1 a gE b i () k *GTR i *MEM lB lB p)
*LOOKUP1=F44(A O SDB A O SHB u 34 A A u 14 QG P SNM O SLB O dH a TL gS b gU p O SNM O SLB O k *LOOKUP1 dD a TH gK dL b gU lB p P dH p)
*DGALL=F10(P k *DGALL1 k *GTR i *MEM lB lB p)
*DGALL1=F25(u 22 A A O SFE O SDB O a TD TF gI i '=' TD gK b k *DGALL1 gM lB p P p)
*SYSFUN=F8(C 1 O k *XXIN gF lB p)
*XXIN=F62(u 8 P k *XXINR1 i 0 lB p u 17 G P k *TYPE dD lA oA C 'N' ID P k *XXINR1 dD lB p O k *STATUS i 'r' eE lA oB u 17 C NEW G P k *OPEN i 'r' dK gE lB k *XXINR1 dK lB p C OLD G P k *XXINR1 dK lB p)
*OPEN=F25(G G O k *OPEN_FILE k *ADD dE i 3 lB eG k *SETV i X dD lB lB oA s C T P p)
*CLOSE=F12(G P k *CLOSE_CHANNEL k *ADD dD i 3 lB lB p)
*GET=F33(G P k *EOF k *ADD dD i 3 lA lA oA u 14 C F P k *READ_LINE! k *ADD dD i 3 lB lB p C T P i 0 p)
*PRINT=F7(O gE k *PROUT eE lB p)
*PROUT=F11(O k *PRINTLN! i 1 k *INSB gE lB lB p)
*PUTOUT=F16(G O k *PRINTLN! k *ADD dD i 3 lB k *INSB gF lB lB p)
*PUT=F9(G O gF k *PUTOUT dD eF lB p)
*CARD=F7(P k *READ_LINE! i 0 lB p)
*INSB=F48(u 3 P p u 17 A O SDB O a k *INSB TD gG lB b k *INSB1 gI lB p G O k *MODE dD lA oA u 10 C CHAR P dD k *INSB gF lB p G P dD k *INSB1 gF lB p)
*INSB1=F12(u 3 P p O i ' ' k *INSB gE lB p)
*STATUS=F97(G O k *F-TABLE lA oA u 24 U W G A ID C '/' QF P SNI O i OLD dM k *BR jB 153443950 '=' fKN eU lB p u 29 U W G A G C '/' QF P SNI O i NEW dM k *BR jB 153443950 '=' fKM a dD dQ gF b eU lB p u 25 U W G G O i NEW dM k *BR jB 153443950 '=' fKM a dD i '/' gF b dN eP lB p O k *PROUT i "Sorry. Can\'t open " gF i ". No more channels" lB p)
*F-TABLE=F30(P k *DG i 153443950 lA oA u 19 P jO 19 18 17 16 15 14 13 12 11 10 9 8 7 6 'X' p O eI p)
*XXINR1=F16(G P k *MESCP i ('$') k *READ-ALL dD k *GET dD lB lB lB p)
*READ-ALL=F20(G u 7 C 0 P i EOF p O gF k *READ-ALL dD k *GET dD lB lB p)
*MESCP=F291(A u 120 O SDB u 105 C '#' u 14 C '#' O k *MESCP a TD gG dH b gK lB p u 14 C '(' O k *MESCP a TD gG dI b gK lB p u 14 C ')' O k *MESCP a TD gG dI b gK lB p u 39 C EOF P k *PROUT jN 'Error: single ' dH jK ' at the end' lB k *ADD lB p G O k *MESCP1 a k *TYPE dI lB b dD a dI b gK lB p C '(' O k *MESCP a dD b gJ lB p u 23 A O SFE O SDB C ')' O k *MESCP a TD TF gI a TD gK b b gN lB p u 78 O SDB u 52 C ')' O k *PROUT lB k *PROUT lB k *PROUT jK 'Unbalanced ' dH jI ' in input' lB k *PROUT TD gG jD ' ***' dH jC '***' lB p u 9 C EOF P k *MESCP dD lB p G O k *MESCP a TD gG dH b gJ lB p u 9 C '$' O SDB P TD gH p A O SFE O SDB P k *PROUT lB k *PROUT lB k *PROUT jX 'Unbalanced (... in input' lB k *PROUT TD TF gI jH ' ***(***' lB p)
*MESCP1=F123(A u 48 C 'L' G P SDB A O SHB A IG O SLB u 18 C ' ' O k *MESCP a TH gK k *IMPLODE TL hNP lB b gS lB p C EOF P k *MESCP a TH gK k *IMPLODE TL hNP lB b lB p u 48 C 'D' G P SDB A O SHB A IG O SLB u 18 C ' ' O k *MESCP a TH gK k *NUMB TL hNP lB b gS lB p C EOF P k *MESCP a TH gK k *NUMB TL hNP lB b lB p G G P SDB A O SHB A IG O SLB G O k *MESCP1 hDH a TL hNP dQ b gS lB p)
*IMPLODE=F9(O k *WORDA k *TYPE gE lB lB p)
*WORDA=F30(u 11 C 'L' O k *WORD1 i () gF lB p u 11 C 'l' O k *WORD1 i () gF lB p G O i 0 gF p)
*WORD=F44(A O SDB u 10 C 'L' O k *WORD1 dD gJ lB p u 10 C 'l' O k *WORD1 dD gJ lB p u 10 C 'D' O k *WORD1 dD gJ lB p G O k *WORD2 dD gJ lB p)
*WORD1=F18(A O SDB G O k *WORD a TD gG dH b k *TYPE gJ lB lB p)
*WORD2=F36(A O SDB u 9 C '-' O k *WORD1 hDJ lB p u 9 C '_' O k *WORD1 hDJ lB p O k *SETV i X k *UPPER TD gG lB lB gI p)
*ADD=F12(O k *ARR k *"+" k *ARA gE lB lB lB p)
*SUB=F12(O k *ARR k *"-" k *ARA gE lB lB lB p)
*MUL=F12(O k *ARR k *"*" k *ARA gE lB lB lB p)
*DIV=F12(O k *ARR k *"/" k *ARA gE lB lB lB p)
*MOD=F12(O k *ARR k *"%" k *ARA gE lB lB lB p)
*DIVMOD=F23(O k *"\\" k *ARA eE lA lA oA G G P a k *ARR dJ lB b k *ARR dK lB p)
*ARA=F85(u 48 A u 9 G P SDB G P dF dG p u 20 C '-' G P SDB O k *ARA a k *"-" i 0 dG lB b gI lB p G P SDB C '-' G P dF k *"-" i 0 dH lB p u 16 C '-' G O k *ARA k *"-" i 0 dE lB gG lB p G u 5 G P gE p C '-' G P dD k *"-" i 0 dF lB p)
*ARR=F27(G P k *COMPARE dD i 0 lA oA u 13 C '<' P i '-' k *SUB i 0 dD lB p G P dD p)
*TYPE=F14(O k *TYPE6 eE lA oA G O k *UPPER dJ lB eL p)
<*SHIFT *SYSARG 0 -1>
<BlockEnd>