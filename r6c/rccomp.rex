START "rccompn.rex"
<BlockBegin Compile L-op SET GET POS SETN GETN FIRST LAST LENGTH COMPARE ADD>
*Compile=F27(O k *SET jB *FunNo 0 lB k *SET jB *BracNo 0 lB oA s k *Opt i (BOUNDS 3 2) k *Group i (((A 0) 2 3 4) () () A W) gE lB lB p)
*Group=F10(K O k *Merge k *Paths hDF lB lB p)
*Paths=F23(K u 19 A O SEB O a k *Path dD TE gH lB b k *Paths dD gJ lB p P p)
*Struct=F14(u 7 C Attr P i (N V M U K) p C Tbel P i (A B F N) p)
*PathMode=F54(u 18 A u 8 C L O SDB O dF p C R O SDB O dF p u 8 G O k *PathMode gF lB p A u 16 C G A O SGE O SDB O k *PathMode TD TG gJ lB p C FAIL P SDB O i R p)
*Path=F419(u 9 K H O k *Path hDG lB p u 225 A K K K G u 200 G P SDB A u 26 C L O SKB O k *Mk-do dJ lB k *Path-l dF dI k *Exp-l TD hFH TK gO lB a gQ b lB p u 81 C R u 44 K P SKB K O k *IsVar dN lA oA C T P k *VarHole dH dN lB oB s G G P k *Path a k *SETA dF jB Tbel (A F B) a dN "e\\" b lB TD hGJ b hOQ lB p O SKB u 14 P k *Exp-r eJ eH TK gO lB k *Path-r dD lB p O k *Exp-r i V dJ eH TK gO lB k *Path-r dD gQ lB p C G O SKB u 22 P oC k *Block k *Mk-do dJ lB lB k *Group a TD hFI i W b TK gO lB p O k *PathMode eQ lA oD w 15 u 7 C L P i V x C R P i E x oE G P k *Block k *Mk-do dJ lB lB k ALT k *Group a TD hFH dZ i W b TK gO lB b k *Path-r a fFI k *After-do dJ lB b gQ lB p C S P SDB O i DO k *Path a TD hFI i SS b gL lB p u 125 K u 29 C NOT K O i STAKE k *Group k *SETA dD jC Attr K W lB a dF jB CUT (FAIL) b k CUT gH b lB p u 30 C BIND A G O SFB u 10 P i DO k *Path dD dF lB p O i DO k *Path dD dF i UNDO gL lB p u 11 C UNDO O dE k *Path dD gG lB p u 17 C DO O k *Path k *SETA dD jC Attr K S lB gG lB p u 11 C STAKE O dE k *Path dD gG lB p u 11 C CUT O dE k *Path dD gG lB p A C FAIL P SEB P dG p A K K K u 12 EB E W P SDB P k *Endop dI lB p G C W P SDB P k *GETA dF jB Tbel N lA oF G P k *MK-b i SETB dF lB i EXP a k *Movop dI lB dO k *P1 dO lB b k *Endop dI lB p)
*Path-l=F36(K G B L L H O SGG O k *MK-b i SETB dD lB gL k *Path a k *SETA dD jB Tbel N dJ lB hIH dE i W b TF gN lB p)
*Path-r=F64(A K K K G u 11 C S P SDB P k *Endop dI lB p u 11 C SS P SDB P k *Endop dI lB p G P SDB O k *Mk-bnel dF lA oA K P k EVAL k *IncGet i *FunNo lB b k *MK-b i BOUNDS dQ lB k *Path a dQ TD hGJ b gL lB p)
*Mk-bnel=F35(K P k *GETA dD jB Tbel N lA oA G P k *SETA dD jB Tbel (A B F N) k A k *P2 dI lB k *P3 dI lB k *P4 dI lB b lB p)
*MK-b=F15(G K P a dD k *GETA dE jC Tbel F B lB b p)
*IsVar=F19(u 14 A G G P SDB P k *Oneof dF i (S T E) lB p O i F p)
*Endop=F13(u 7 C A P i EST p G P i END p)
*Mk-do=F11(u 7 C S P i DO p G P p)
*After-do=F12(u 7 C S P i SS p G P dD p)
*Block=F11(u 6 C DO P dD p P i BLOCK p)
*L-op=F23(u 10 G P k *Oneof dD i (EXP EMP PS PSR TERM TERMR SYM SYMR) lB p A G O SDB P k *Oneof dF i (CSYM CSYMR OEXP OEXPR OSYM OSYMR SYMS SYMSR SETB OTERM OTERMR) lB p)
*Merge=F32(u 27 A O SDB u 18 A O SHB O k *Merge a k *Merge1 dD TH gK lB b gM lB p P TD gG p P i FAIL p)
*Merge1=F62(A u 19 A C BRANCH O SFE O SDB O dF k *Merge1 a TD gL b gN lB p u 24 K O SDB MF O k *L-op dF lA oA C T P dF k *Merge1 a TD gH b gK lB p u 5 P SDB P p O SDB O k BRANCH TD gG b gI p)
*IncGet=F14(G P k *GET k *SET dD k *P1 dD lB lB lB p)
*Mk-map=F35(A A K G P SFE O SDB A B O SOO K G P SLB P i V a dH k () dI b TD gK TL gQ k () dS b b p)
*SETA=F59(K K u 18 G K P k *SETN dD k *POS k *Struct dE lB dF lB dG lB p A u 28 K O SFB A K O SKB P k *SETA k *SETA gE dH dM lB dE a TF gJ b a TK gO b lB p P SFB A P SHB P dD p)
*GETA=F26(K K u 21 G O k *GETN dD k *POS k *Struct dE lB dF lB lB k *GETA gE gH lB p P p)
*Varop=F112(G K A G K P SFB P dD dH k *Testvar dE a eI b lA oA u 23 C L u 10 C S G P k OSYM dP b p C T G P k OTERM dP b p u 23 C R u 10 C S G P k OSYMR dP b p C T G P k OTERMR dP b p u 23 C L u 10 C S A P SPL P i SYM p C T A P SPL P i TERM p C R u 10 C S A P SPL P i SYMR p C T A P SPL P i TERMR p)
*Testvar=F32(A u 19 SDB A G K P SFB P SEE V X IH MI P SLE G O dP p O SDB A G K P SHB P i () p)
*Expl-next=F71(G K K A A u 8 P SIH P SGB P hDF p u 29 O SIH A O SMH O SGB P k SETB k *Getbs dM lB b k *Expl i L hDF dM a dI TG gR b lB p A O SKJ O SIH P SGB P k SETB k *Getbs dK lB b k *Exple hDF dK k () TG TI gP b lB p)
*Getbs=F27(A A B O SII L O SFE B O SPP A L O SSP O SDB P k *Swap k *Ends dU dL lB lB p)
*Swap=F6(G G P dE dD p)
*VarHole=F42(A SDB K P SEE V X K SIE O SKJ V X MF K P SPJ O eU eO oA s A L O SZX O SYX B O Sbb L O k *Swap k *Ends "d\\" de lB lB p)
*Exp-l=F35(A K G G G P SDB K K O k *Expl i L dI gK a a a dF dH b b gM a a TD gG b b b i (()) lB p)
*Expl=F611(G G K K A O SHB K P SCE u 275 C L P SII A O SNI u 22 A O SRI P i EMP k *Expl-next gF k *Apt dG k *Mk-map TH hNR lB lB dL lB p u 34 G B O STT O k CSYM dR b k *Expl dM k *P1 dE lB gG a a TH TN gQ a dR dE b b TH hUS b dL lB p u 167 A u 84 C P O SRI B O SXX O s SHB A A O "S_^" O "S]B" P k *P1 dE lA oA G P k B k *IncGet i *BracNo lA b oB K P i PS k *Expl dM k *P2 dE lB gG a a a dn di b b TH TR gV a a dn di b b b a d_ a a TH TN gQ a dn eV dE b b TH hYW b "T]" gd b lB p C E K P SRI B O SWW O k *Testvar dF a eU b lA oC u 46 G P k OEXP "d`" b k *Expl dM k *P2 dE lB k *Apt dF dR k *P1 dE lB lB dG a a TH TN gQ a dR a dE k *P1 dE lB b b b TH hXV b dL lB p A P "S`^" P k *Expl i R hEG a TH hNV b dL lB p K B O STT O k *Varop dM dF dR lB k *Expl dM k *P1 dE lB k *Apt dF dR dE lB dG a a TH TN gQ a dR dE b b TH hUS b dL lB p C R P SII A O SNI u 54 A C E K P SRI A O SVI P i EXP k *Expl-next k *P2 dE lB k *Apt dF dR k *P1 dE lB lB k *Apt dG k *Mk-map dN a a dR a dE k *P1 dE lB b b TH TV gY b lB lB dL lB p B u 33 H O SSS O k CSYMR dT b k *Expl dM k *P1 dE lB gG a TH hNV a a dT dE b TH TR gX b b dL lB p u 187 B O SUU u 81 C P O SSS O SHB A A O "S_^" O "S]B" P k *P1 dE lA oD G P k B k *IncGet i *BracNo lB b oE s K P i PSR k *Expl dM k *P2 dE lB gG a TH hNW a a dn TH TT gZ dE b TH TR "g\\" b b a d_ a a a dn di b b eZ a a dn di b b b "T]" gd b lB p C E K P SSS O k *Testvar dF a eY b lA oF u 46 G P k OEXPR "d`" b k *Expl dM k *P2 dE lB k *Apt dF dT k *P1 dE lB lB dG a TH hNW a a dT a dE k *P1 dE lB b b TH TR "g[" b b dL lB p A P "S`^" P SHB A A O Sdc O SbB P k BOUNDS k *Getbs a dN dR b lB b k *Expl-next hEG a a Tb Td gg a TH hNR b b Tb gi b lB p L O SSS O k *Varop dM dF dT lB k *Expl dM k *P1 dE lB k *Apt dF dT dE lB dG a TH hNV a a dT dE b TH TR gX b b dL lB p)
*Exple=F63(G K K A A O SIH A C E K P SMH B O SRR O SGB K P jB PLEN LEN k *Expl i L k *P2 dD lB k *Apt dE dM k *P1 dD lB lB dF a a TG TI gL a dM a dD k *P1 dD lB b b b TG hSQ b dW lB p)
*Exp-r=F58(G G K A O SGB O w 45 u 30 w 18 u 6 SDF C W P x q u 7 SCE C A P r y x oA k *Expr eF a eJ b eL lB x oB k *Expr eF k *MkActMap a eJ b eL lB lB x oC L O eS p)
*CutBrac=F143(K u 103 A u 6 O SEB P dE p u 48 C P O SEB B O SKK O SGF K O SCE A SSE P STT V X K SWT O SYX V X A C B G P "S`_" QI G P "S^X" O "d`" k *CutBrac dD gM a TJ gO "d`" b lB p G O SEB B O SKK O w 12 SFH u 5 C P P x C K P x oA k *CutBrac dD eI a eO b lA oB B O SYY O a dG "e[" b k *CutBrac dD gM dX lB p u 13 G B O SGG O dE k *CutBrac dD hHF lB p K B O SGG O SDH A G G P SLH P dE k *CutBrac dD gI a TF gK dE b lB p)
*MkActMap=F34(A O SDB O k *CutBrac a eG b eI i () lA oA B O SOO O a k *GetAct a k *ActList eG lB b dD dN lB eG b eQ p)
*ActList=F31(u 3 P p C V u 17 A A C A G P SGF O SEB O dG k *ActList gN lB p K O k *ActList gG lB p)
*GetAct=F81(A u 73 K O SDB K K P u 19 k *Oneof dF dJ lA oA C T P k *GetAct a TD gH b gJ lB p u 36 SDJ A SKJ P SLL U W C V A MF O SPL O i A dP k *GetAct a TD gH k *VarList eT lB b dI k *Apt dJ dF lB lB p k *GetAct a TD gH b gJ lB p P SDB K K P p)
*VarList=F28(u 16 A A G K P SFE O SDB O dF k *VarList gM lB p u 8 K O k *VarList gF lB p P p)
*Expr=F127(G K K u 35 A C K O SGB O k *Expr fDF k *Narg eK lA lA oA L O i BL eT k BRACT k *Actmod dD lB b k *Expr gE dR gM lB p u 4 P dF p u 31 O k *Findsub i A dF eH lA oB K K L O SMP A K O SRP P k *Genmov eN lB k *Expr gE dO eQ lB p u 24 K O k *Isconst dG lA oC C T P k NS k *Demeta dG lB b k *Expr hDF gI lB p A C P O SGB O k *Expr fDF eK lA oD L O i BL eT i BR k *Expr gE dR gM lB p)
*Narg=F3(O gE p)
*Actmod=F13(u 7 C W P i 1 p G P i 2 p)
*Genmov=F20(A O SDB A O SHB P a k *Movop TD gG lB k *Ends TH gK lB b p)
*LookAct=F61(u 11 A C A G P SDB K P dF p K K P SDB A SFB P SGG U W C A A K SKG O SML V X MD L O SRL O SCE u 15 A C B G P SZE P k *LookAct dM dE lB dU p K P k *LookAct dM dE lB p)
*Movop=F23(u 7 C V P i MUL p C A u 5 P i TPL p O i CTPL a gF b p)
*Ends=F39(u 6 G P dD dD p u 12 A O SDB O k *Ends TD gG gI lB p u 12 B O SEE O k *Ends gG TD gI lB p G H O dD dE p)
*Isconst=F36(u 22 A u 13 C P O SDB O k *Isconst TD gH gJ lB p O SDB O i F p u 8 G O k *Isconst gF lB p P i T p)
*Demeta=F32(u 9 G O dD k *Demeta gF lB p u 19 A C P O SDB O a k *Demeta TD gH lB b k *Demeta gJ lB p P p)
*Findsub=F165(G A O SEB O dD k *Search dD i (0 0 0) a eH b eJ lA oA u 29 C A u 13 EC 0 0 0 P k *Findsub i V hEJ lB p G G G G P k *Findsub i V hEJ lB p ID G G G O k *FIRST dP eJ lA oB A O SYW O SCE u 12 C V P i (V) a eT b "e^" dE p C A P k *LAST dR eH lB oC s A B O Sgg O Sdb O k *LAST dQ ek lA oD A O Srp O k *LAST dP eu lA oE A K O "S|z" O k *LookAct "d~" a eH b lB oF s C A O w 10 "S��" u 3 P x O i GAP x oG O a d_ "e�" b a eT b "e^" k *PurAct k *VarList "e�" lB a ei a "d~" "e�" "e�" ew b em b lB p)
*PurAct=F46(K u 41 L O u 32 SGB A SHB P SII U W C A A MD O SMI O k *PurAct gG k *VarList TH TM gQ lB a TH gK TH gS b lB p k *PurAct hFE lB p P dD p)
*Search=F122(G A u 110 G O SEB A SJB K O SKK U W ID A K SRK O STS V X ML L O SYS O k *Maxcom dD a "e`" b a eN b lA oA B B O Shh O Sff O k *LENGTH i X ej lA oB G P k *COMPARE dG ds lA oC u 34 C '<' P k *Search dD a ds k *LENGTH el lB k *LENGTH TJ gV lB "d\\" ej b a dD a dT TJ TR "g`" b eV b hLN lB p G P k *Search gE a dD a TJ TR "g`" b TJ gV b hLN lB p O SEB A O SIB O TE gH p)
*Maxcom=F52(G A u 41 A K L O SGF O SEB A MI O SOB P w 12 u 6 SCE C A P x SLH G P x oA dJ k *Maxcom dD a TE gN b a TO gS b lB p O SEB A O SIB P hEI p)
*Opt=F428(u 340 A u 19 C BRANCH O SDB O a dF k *Opt TD gH lB b k *Opt gJ lB p u 21 C ALT O SDB O k *Alt k *Opt TD gH lB a k *Opt gJ lB b lB p u 20 C BOUNDS G G P SDB O k *Bounds a TD gH b k *Opt gJ lB lB p u 20 C SETB G G P SDB O k *Setb a TD gH b k *Opt gJ lB lB p u 25 C CTPL A O SGE O SDB O k *CHKB TD TG gJ lB k *Opt k TPL TD gL b gN lB p u 24 C TPL G G P SDB O k *P1 dG lA oA IH P k TPLE dH b k *Opt gJ lB p u 39 C MUL G u 14 IG P SDB O k MULT dG b k *Opt gJ lB p G P SDB O k *P1 dG lA oB IH P k MULE dH b k *Opt gJ lB p u 25 C CSYM G P SDB A C CSYM G P SHB O k *Opt k SYMS i 2 dG dK b gM lB p u 28 C SYMS G O SDB A C CSYM G P SJB O k *Opt a dF k *P1 dG lB TD gI dM b gO lB p u 25 C SYMR G P SDB A C SYMR G P SHB O k *Opt k SYMSR i 2 dG dK b gM lB p u 28 C SYMSR G O SDB A C SYMR G P SJB O k *Opt a dF k *P1 dG lB TD gI dM b gO lB p u 25 C NS K P SDB A C NS K P SHB O k *Opt k TEXT i 2 dG dK b gM lB p C TEXT G O SDB A C NS K P SJB O k *Opt a dF k *P1 dG lB TD gI dM b gO lB p u 19 C BL A C NS K P SEB O k BLNS dH b k *Opt gJ lB p u 54 EB PLEN LEN u 12 C PS O jB PLENS LENP k *Opt gH lB p A u 18 C SYM G P SFB O i PLENS k LENS dI b k *Opt gK lB p C OVSYM G P SFB O i PLENS k LENOS dI b k *Opt gK lB p u 9 K O dD k *Opt gF lB p P p)
*Alt=F18(B O SEE u 6 C EST P gG p O k ALT gG b TD gI p)
*Bounds=F114(u 16 A G G P SDB A C SETB IF IG P SHB O gN p K u 44 A u 21 C BRANCH O SEB O a dG k *Bounds dD TE gI lB b k *Bounds dD gK lB p C ALT O SEB O a dG k *Bounds dD TE gI lB b k *Bounds dD gK lB p u 11 C STAKE O dE k *Bounds dD gG lB p u 11 C CUT O dE k *Bounds dD gG lB p u 11 C BLOCK O dE k *Bounds dD gG lB p u 11 C DO O dE k *Bounds dD gG lB p O gF p)
*Setb=F25(A G G P SDB u 11 A C SETB G G P SHB O hHN p O k SETB TD gG b gI p)
*CHKB=F15(u 12 G O k CHKB dD b k *CHKB gF lB p P p)
*Oneof=F20(K A u 11 SEB P SFF U W MD O i T p O SEB P i F p)
*Apt=F10(A O SDB O a TD gG gI b p)
*P1=F9(G P k *ADD dD i 1 lB p)
*P2=F9(G P k *ADD dD i 2 lB p)
*P3=F9(G P k *ADD dD i 3 lB p)
*P4=F9(G P k *ADD dD i 4 lB p)
<BlockEnd>
START "rcgen.rex"
<BlockBegin Flag SYSINFO ERR Codgen Vmode SETV GETN LENGTH ADD CHR COMPARE GETV POS>
*Codgen=F26(G O k *SETV i *Funname dD lB oA s k *Cgen a k *Vmode lB k *Wmode lB k *Mmode lB b gF lB p)
*Cgen=F84(K u 13 G O k *Op gE lB k *Cgen dD gG lB p u 66 A u 23 C BRANCH O SEB O k *Opb dD dG k *Cgen dD TE gI lB lB k *Cgen dD gK lB p u 23 C ALT O SEB O k *Opb dD dG k *Cgen dD TE gI lB lB k *Cgen dD gK lB p G O SEB O k *Op dD TE hGI lB k *Cgen dD gK lB p P p)
*Vmode=F39(P u 14 k *Flag i 'V' lA oA A O SHF P i VECTOR p u 14 k *Flag i 'C' lA oB A O SHF P i CHAIN p oC P k *Getinf i 1 lB p)
*Wmode=F54(P u 14 k *Flag i 'W' lA oA A O SHF P i WORD p u 14 k *Flag i 'N' lA oB A O SHF P i NUMBER p u 14 k *Flag i 'S' lA oC A O SHF P i SYMBOL p oD P k *Getinf i 2 lB p)
*Mmode=F21(P k *Flag i 'M' lA oA u 8 A O SHF P i T p G P i F p)
*Getinf=F9(G P k *GETN i *SYSINFO dD lB p)
*Opb=F13(K G O k *Op gE lB k *Ob dD gG lB p)
*Ob=F28(A u 10 C CHAIN O SDB O a gJ b p C VECTOR O SDB O k *ADD k *LENGTH gJ lB i 1 lB eJ p)
*Op=F70(A G u 10 G C F P SDB C BLOCK P p u 14 C NUMBER G P SDB G O k *O dI lB gK p u 32 C WORD G P SDB G u 10 P k *Word k *O dI lB lB p O k *Opw k *Optype dI lB k *O dI lB gK lB p C SYMBOL G P SDB G O hIK p)
*Opw=F49(u 11 C 1 G G P k *Word gF lB p u 12 C 2 G G G P k *Word hEG lB p u 12 C T G K P k *Word dE lB dF p C E G G O k *Word gF lB gH p)
*Word=F14(O k *SETV i W k *CHR k *Ups gE lB lB lB p)
*Ups=F44(u 3 P p G O k *COMPARE dD i 196 lA oA u 15 C '<' P k *ADD dD i 64 lB k *Ups gF lB p G P k *ERR i "Too many variables in function " k *GETV i *Funname lB lB i 0 p)
*O=F9(G P k *POS i (NOP PS PSR CSYM CSYMR SYMS SYMSR SYM SYMR OSYM OSYMR TERM TERMR OTERM OTERMR EXP EMP OEXP OEXPR SETB CHKB PLEN PLENS LEN LENP LENS LENOS NOP NOP NOP NOP NOP NOP BL BR BLR MULT MULE MUL TPLE TPL NS TEXT BLNS BRACT BUILTIN RETURN EVAL EST STAKE CUT DO UNDO BRANCH BRANCHR ALT END FAIL BLOCK) dD lB p)
*Optype=F16(G P i (PS 0 PSR 0 CSYM T CSYMR T SYMS E SYMSR E SYM 0 SYMR 0 OSYM 1 OSYMR 1 TERM 0 TERMR 0 OTERM 1 OTERMR 1 EXP 0 EMP 0 OEXP 1 OEXPR 1 SETB 2 CHKB 1 PLEN 0 PLENS 0 LEN 0 LENP 0 LENS T LENOS 1 BL 0 BR 0 BLR 0 MULT 1 MULE 1 MUL 2 TPLE 1 TPL 2 NS T TEXT E BLNS T BRACT 1 BUILTIN 0 RETURN 0 EVAL 1 EST 0 STAKE 0 CUT 0 DO 0 UNDO 0 BRANCH B BRANCHR B ALT B END 0 FAIL 0 BLOCK 0) oA A SIG P SJJ U W ID G O dN p)
<BlockEnd>
START "rcout.rex"
<BlockBegin Ftable CompFile CompMem Codgen Compile Oneof Swap Map GETV PRINTLN! WRITE! PRINT! WRITELN! GETN LENCONT SYSTABLE TABLE_LIST SETV TABLE_VALUE TABLE_LINK NEW MAKE CONST>
*CompFile=F6(O k *Compfs gE lB p)
*Compfs=F110(u 3 P p A u 28 C Func G O SDB O k *Outf jB (4 *Ftable) FUNC dG a k *Compf dG eI lB b lB oA s k *Compfs gK lB p u 24 C Var G G O SDB O k *Outf i (4 *Ftable) eH a eJ b lB oB s k *Compfs gL lB p C Module K K O SDB O k *Swap i *Ftable dH lB oC s K P k *OutExp k K i BlockBegin k *GETV dG lB b lB k *Compfs eJ lB k *OutExp i (K BlockEnd) lB k *Swap i *Ftable dQ lB oD s k *Compfs gL lB p)
*Compf=F11(G O k *Codgen dD k *Compile gF lB lB p)
*OutExp=F13(O k *WA i (4 *Ftable) gE lB k *PRINTLN! i 4 lB p)
*Outf=F112(K G G K P u 11 SDF C BOX P SFB A P SIB P p u 59 k *Oneof dE i (FUNC VECTOR CHAIN BOX STRING MASK TABLE) lA oA C T P k *WRITE! dD dF lB oB k *PRINT! dD i '=' k *Prefix dE dG lB lB oC s u 11 SDF C FUNC P k *WRITELN! dD dG lB p oD k *WA dD k P k *GETV dG lB b lB k *PRINTLN! dD lB p u 12 k *Oneof dE i (EMPTY CHANNEL) lA oE C T P p oF k *WA dD k K k *Fs dE lB dF k *GETV dG lB b lB k *PRINTLN! dD lB p)
*Fs=F10(u 5 C EXEC P p G P dD p)
*WA=F57(K u 29 A O SEB u 7 P k *WA1 gE lB p O k *WA1 gE lB k *PRINT! dD i ' ' lB k *WA dD gJ lB p u 3 P p U W O q u 6 SFB G O r y r k *WA1 hDF lB k *WA dD gH lB p)
*WA1=F61(K u 52 A u 25 C P O SEB P k *PRINT! dD i '(' lB k *WA dD TE gI lB k *PRINT! dD i ')' lB p C K O SEB P k *PRINT! dD i '<' lB k *WA dD TE gI lB k *PRINT! dD i '>' lB p G O k *WRITE! hDG lB p)
*Prefix=F28(u 6 C CHAIN K P p u 6 C BOX K P p G K P k *GETN dD i 0 lB k *LENCONT dE lB p)
*CompMem=F9(O k *ExecMod k *LinkEd gE lB lB p)
*LinkEd=F49(u 28 A C Module K K O SDB P k *Swap i *Ftable dH lB oA s k *LinkM i *SYSTABLE dG i *Ftable TD gJ lB p O k *LinkM i *SYSTABLE a k *AllNames k *TABLE_LIST i *Ftable lB lB b i *Ftable gE lB p)
*AllNames=F13(u 10 G G O dD k *AllNames gG lB p P p)
*ClrAll=F16(u 13 G G O k *SETV dE lB k *ClrAll gG lB p P p)
*LinkM=F35(G A O SEB G O k *ClrAll k *TABLE_LIST dI lB lB oA s k *Map k *ChkExt dD dI b eH lB oB s k *Map k *RepMod dI b gK lB p)
*ChkExt=F59(G G G P k *TABLE_VALUE dE i 'O' dF lB oA s G P k *TABLE_VALUE dD i 'O' dF lB oB s u 11 P k *TABLE_LINK dD dF dK lB oC s p G P k *TABLE_VALUE dE i 'D' dF lB oD k *TABLE_LINK eF dP lB k *SETV dK dP lB oE s p)
*RepMod=F50(G A u 36 C Module K K O SEB P k *MAKE i TABLE k *NEW lB lB oA s G P k *Swap dP dI lB oB s k *LinkM dD dH dP TE gK lB p O SEB P a k *Rep TE gH lB b p)
*Rep=F53(u 17 A O SDB O a k *Rep TD gG lB b k *Rep gI lB p u 32 G O u 22 k *CONST dD lA oA C F P k *GETV dD lA oB G P dP k *Rep gF lB p dD k *Rep gF lB p P p)
*ExecMod=F18(u 15 A O SDB O k *ExecElem TD gG lB k *ExecMod gI lB p P p)
*ExecElem=F72(u 19 C Func G O k *SETV k *MAKE i FUNC dE lB k *Compf hEG lB lB p C Var u 13 C EXEC G O a dF k *Demet gH lB lB p G G O k *CONST dE lA oA u 16 C T P k *SETV k *MAKE gF lB k *Demet gH lB lB p C F P a gF k *Demet gH lB lB p)
*Demet=F8(O k *Map i *Dem gE lB p)
*Dem=F35(u 5 G P dD p A u 14 C P O SDB P a k *Demet TD gH lB b p C K O SDB P a k *Demet TD gH lB lB p)
<BlockEnd>
