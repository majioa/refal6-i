START "rslex.rex"
<BlockBegin ERR WNG Flag Inp Inpa Skipc SkipLine InsSC Word String Isdelim Index Oneof Getelem TYPE UPPER IMPLODE MUL ADD CHR NUMB>
*Skipc=F96(u 9 C ' ' O k *Skipc gF lB p u 9 C '        ' O k *Skipc gF lB p u 9 C '' O k *Skipc gF lB p u 14 C '
' O k *Skipc k *Inpa a gF b lB lB p u 23 C '/' u 8 C '/' O k *Skipc2 lB p C '*' O k *Skipc k *Skipcom gG lB lB p u 9 EB '--' O k *Skipc2 lB p u 11 G u 5 G O hDG p P dD p P k *Skipc2 lB p)
*Skipcom=F37(u 11 C 0 O k *ERR i "Unpaired comment /*" lB dD p u 7 EB '*/' O gG p u 8 G O k *Skipcom gF lB p P k *Skipcom k *Inp lB lB p)
*Skipc2=F27(P k *Inp lA oA u 8 C '*' O k *Skipc2 lB p u 6 P k *Skipc2 lB p O k *Skipc eI lB p)
*SkipLine=F16(u 13 U W C '
' O k *Inpa a gE b lB p O p)
*InsSC=F35(u 15 G O k *Oneof dD i ('/\\#,=:;}') lA oA C T P hDF p O u 15 k *Flag i '5' lA oB A O SJH P i ';' gE p gE p)
*Word=F12(O k *Worda k *TYPE k *Skipc gE lB lB lB p)
*Worda=F58(u 10 C 'L' G O k *Word1 hEG lB p u 16 C 'l' O k *ERR a gF b i "Word is reserved as variable" lB i '*' eF p u 21 C 'O' u 9 C '!' O k *Word1 hEG lB p C '?' O k *Word1 hEG lB p G G O k *Words hEG lB p)
*Word1=F14(G O k *Index2 k '#' dD b k *TYPE gF lB lB p)
*Case=F15(u 5 G O gF p A O SDB O k *UPPER gI lB p)
*Words=F40(u 15 C '\"' O k *StrWord k *String dD i () gF lB lB p u 14 G O k *ERREXP i word hDF lB i '*' dD eF p P k *ERREXP i word lB i '*' p)
*StrWord=F20(A u 8 P SDB O i '*' gG p O SDB O k *IMPLODE TD gG lB gI p)
*String=F96(G A O SEB u 9 ID O k *String1 gE gK lB p u 35 C '\\' u 22 G O k *Cvspec eJ eL lA oA G O k *String dD a TE gH dQ b eS lB p P k *String gE k *Inp lB lB p u 11 C 0 O k *ERR dE i "Unexpected end of file" lB p u 25 G u 14 G O k *String dD a TE gH dI b hJL lB p P k *ERRUNP dD lB i () p P k *ERRUNP dD lB i () p)
*String1=F32(G A u 9 P SEB O a dD b gH p O SEB u 14 ID O k *String dD a TE gH dD b gK lB p O hEJ p)
*Cvspec=F113(G u 14 O k *Flag i '5' lA oA A O SKI P hDF p u 5 ID O hEG p u 6 C '\'' O hEG p u 6 C '\"' O hEG p u 8 C 'n' O i '
' gG p u 8 C 't' O i '        ' gG p u 8 C 'v' O i '' gG p u 8 C 'b' O i '' gG p u 8 C 'r' O i '\r' gG p u 8 C 'f' O i '' gG p u 9 C 'x' O k *Hexchar gG lB p G O k *Digits jB 0 () k *TYPE hEG lB lB p)
*Hexchar=F66(u 53 K K O k *Hexdigit dD lA k *Hexdigit dE lA oA u 23 C T G C T G P k *CHR k *ADD k *MUL dM i 16 lB dO lB lB gG p G G G G P i ' ' k *ERR a gG b i "Illegal hex code" lB p O i ' ' k *ERR a gE b i "Illegal hex code" lB p)
*Hexdigit=F86(G P k *TYPE dD lA oA u 11 C 'D' O i T k *NUMB dD lB p G O k *UPPER dD lA oB u 8 C 'A' P jB T 10 p u 8 C 'B' P jB T 11 p u 8 C 'C' P jB T 12 p u 8 C 'D' P jB T 13 p u 8 C 'E' P jB T 14 p u 8 C 'F' P jB T 15 p G P jB F 0 p)
*Number=F30(A O SDB u 10 C 'D' O k *Number1 dD gJ lB p G O k *ERR a gJ b i "No number after " TD gG lB i 0 eJ p)
*Number1=F18(A O SDB G O k *Number1a a TD gG dH b k *TYPE gJ lB lB p)
*Number1a=F50(A O SDB u 10 C 'D' O k *Number1 dD gJ lB p G u 26 C 'x' O SEE u 11 C '0' P k *Hexnumb i 0 gK lB p H O k *NUMB TD gG lB hIK p O k *NUMB TD gG lB gJ p)
*Hexnumb=F32(G u 27 G O k *Hexdigit dE lA oA C T G P k *Hexnumb k *ADD dM k *MUL dD i 16 lB lB gG lB p O hDF p)
*Digits=F82(u 18 C 3 A O SEB G O k *CHR k *NUMB TE gH lB lB gK p G A u 26 O SEB C 'D' G O k *Digits k *ADD dD i 1 lB a TE gH dJ b k *TYPE gL lB lB p u 18 P SEB G G O i '\\' hHJ k *WNG a eJ b i "Illegal character after \\ " lB p O SEB G G O k *CHR k *NUMB TE gH lB lB hJL p)
*Isdelim=F9(G P k *Oneof dD i ('=,:{};' 0) lB p)
*Index=F26(u 14 C '.' O k *Index2 i ('.') k *TYPE gF lB lB p O k *Index2 i ('*') k *TYPE gE lB lB p)
*Index1=F19(A G O SDB G O k *Index2 a TD hFH dI b k *TYPE gK lB lB p)
*Index2=F100(A O SDB u 10 C 'L' O k *Index1 dD gJ lB p u 10 C 'l' O k *Index1 dD gJ lB p u 10 C 'D' O k *Index1 dD gJ lB p u 55 C 'O' u 10 C '-' O k *Index1 dD hIK lB p u 10 C '_' O k *Index1 dD hIK lB p u 10 C '!' O k *Index1 dD hIK lB p u 10 C '?' O k *Index1 dD hIK lB p G O k *Index3 dD hIK lB p G O k *Index3 dD gJ lB p)
*Index3=F89(A u 9 G P SDB O i '*' gH p u 14 C '#' G O SDB O k *MkWord TD hGI lB gK p u 12 G G P SDB O k *MkIndex dG lB gI p u 14 C '.' G O SDB O k *MkIndex TD hGI lB gK p C '*' G O SDB O k *Flag i '5' lA oA u 13 A O SPN P k *MkIndex dG lB TD gI gK p G P k *MkIndex TD hGI lB gK p)
*MkIndex=F6(O k *IMPLODE gE lB p)
*MkWord=F14(O k *IMPLODE k *Case k *Flag i 'U' lB gE lB lB p)
*Oneof=F20(G A u 11 SEB P SFF U W ID O i T p O SEB P i F p)
*ERREXP=F12(G O k *ERR a gF b i "Expected " dD lB p)
*ERRUNP=F12(G O k *ERR a gF b i "Unpaired " dD lB p)
*Getelem=F379(u 289 C 'O' u 8 C ')' O i Brac hEG p u 8 C '(' O i Brac hEG p u 8 C '<' O i Brac hEG p u 8 C '>' O i Brac hEG p u 14 C '\'' O i String k *String dE i () gG lB p u 11 C '\"' O i Symbol k *Words hEG lB p u 84 G u 44 O w 36 SDF u 5 C '=' P x u 5 C ',' P x u 5 C ':' P x u 5 C '{' P x u 5 C '}' P x C ';' P x oA i Delim hEG p C ' ' O w 24 SDF u 5 C '+' P x u 5 C '-' P x u 5 C '*' P x C '&' P x oB i Symbol k *IMPLODE dE lB gH p u 11 C '*' O i Box k *Word gG lB p u 11 C '&' O i Box k *Word gG lB p u 11 C '!' O i Symbol k *Word1 hEG lB p u 13 C '?' O i Symbol k *Word1 i '!' gG lB p u 16 C '+' O i Symbol k *Number i ('+') k *TYPE gG lB lB p u 16 C '-' O i Symbol k *Number i ('-') k *TYPE gG lB lB p G O u 47 w 36 SDF u 5 C '.' P x u 5 C '/' P x u 5 C '%' P x u 5 C '^' P x u 5 C '|' P x C '~' P x oC i Symbol k *IMPLODE dE lB gG p i Other hEG p u 12 C 'L' G O i Symbol k *Word1 hEG lB p u 52 C 'l' u 12 C 'e' O i Var dE k *Index gG lB p u 12 C 's' O i Var dE k *Index gG lB p u 12 C 't' O i Var dE k *Index gG lB p G O jB Var 't' k *Word1 hEG lB p u 14 C 'D' G O i Symbol k *Number1 i () hEG lB p EB 'N' 0 O i Delim hEG p)
<BlockEnd>
START "rssyn.rex"
<BlockBegin Lineno Skipno Ftable Extern Rest ERR WNG Usefls Builtcd Addl Skipc SkipLine String Isdelim Word Oneof Getelem InsSC Getdef Def Use Testdef Extdef SETV GETV TABLE_VALUE TYPE UPPER ADD TABLE_LIST GETN POS>
*Getdef=F21(P k *SETV jB *Ind 0 lB oA s k *Getdefa k *Skipc k *GETV i *Rest lB lB lB p)
*Getdefa=F136(u 6 C 0 O dD p u 117 C '$' O k *Word eF lA oA G O u 21 k *Oneof dK i (EXTBOX EXTRN EXTERN EXTERNAL) lA oB C T P k *Ext k *Lst i N eM lB lB p u 22 k *Oneof dK i (FUNC ENTRY) lA oC C T P k *Fname a dK b k *Word eM lB lB p u 45 SJL u 14 C USE P k *Usefls k *Lst i N eM lB lB p u 14 C MODULE P i (Module) k *Continue k *SkipLine eM lB lB p C END P i (End) k *Continue k *SkipLine eM lB lB p oD k *Dcl k *Ckey dK lB k *Lst i V eM lB lB p O k *Fname i (FUNC) k *Word gE lB lB p)
*Lst=F11(G O k *Lst1 dD k *Word gF lB lB p)
*Lst1=F29(G u 9 C '*' O k *Skip0 gG lB p G O k *Lstv eE eG lB oA s K O dL k *Lst2 dD eN lB p)
*Lstv=F38(u 11 C N G O dE k *Skipc gG lB p G G O k *Pexpr jC R ('*') () eG lB oA s A O SLJ A P SPJ O a dE eO b eS p)
*Lst2=F51(u 21 G u 10 C ',' O k *Lst dD gG lB p C ';' O k *Continue gG lB p u 10 C N G O k *Lst hDG lB p G G O k *ERREXP i ", or ;" hEG lB k *Lst1 dD i '*' dE eG lB p)
*Ext=F8(O k *Addl i *Extern gE lB p)
*Expr=F20(u 17 A C X O SDB O k Expr TD gH b k *Expr gJ lB p P p)
*Dcl=F43(G u 39 A G O SEB O s w 14 u 6 SCE C EXEC P x k *Def dG lA oA x oB k Var dD k *Boxg dG lB TE gI b k *Dcl dD gK lB p P p)
*Ckey=F24(G P u 13 k *Oneof dD i (BOX VECTOR CHAIN EMPTY STRING CHANNEL TABLE EXEC) lA oA C T P dD p k *Boxg dD lA oB O gJ p)
*Continue=F10(O k *SETV i *Rest eE lB oA s p)
*Skip0=F9(O k *Skip jB ('*') ('*') gE lB p)
*Skip=F17(O k *SETV i *Skipno k *GETV i *Lineno lA lA oA k *Skip1 gE lB p)
*Skip1=F16(A O SDB A O SHB O k *Skip1a hDH k *Skipc gM lB lB p)
*Skip1a=F359(A u 221 O SDB A u 194 O SHB u 13 C '(' O k *Skip1 dD a dH b gN lB p u 14 C '<' O k *Skip1 dD k '$' dH b gN lB p u 57 C ')' O SII u 20 A O SOI O k *Skip1 dD a TH TO gR a TH gT b b gN lB p u 14 C '*' O k *ERRUNP hLN lB k *Skip1 hDH eN lB p C '$' A O SPI O k *ERRUNP hLN lB k *Skip1 hDH eN lB p u 71 C '>' O SII u 24 C '$' A O SPI O k *Skip1 dD a TH TP gS i '*' a TH gU b b gN lB p u 14 C '*' O k *ERRUNP hLN lB k *Skip1 hDH eN lB p A O SOI O k *ERRUNP i '(' gN lB k *Skip1 dD a TH TO gR a TH gT b b dL eN lB p u 16 C '\'' O k *Skips hDH k *String dL i () gN lB lB p C '\"' O k *Skips hDH k *String dL i () gN lB lB p C '*' O SHB C '{' O k *Skip1 a a TD gG TH gL b b i ('*') gO lB p u 38 A O SFE O SDB A C '*' O SLB C '}' O k *Skip1 a TD TF gI a TD gK TL gP b b i ('*') k *InsSC k *Skipc gS lB lB lB p u 45 C '*' O SDB A u 18 C '*' O SIB C '}' O k *ERRUNP hNP lB k *Skip1 hDI eP lB p u 11 O SIB C ';' O k *Continue gO lB p C '*' O SIB C 0 O p u 38 A O SFE O SDB A C '*' O SLB C 0 O k *ERR i "Unpaired { for line " k *GETV i *Skipno lB lB k *Skip1 a TD TF gI a TD gK b b hLQ lB p O SDB A O SHB G O k *Skip2 hDN lB p)
*Skip2=F102(A O SDB A O SHB G O u 82 k *Isdelim dL lA oA C T P SII u 29 C '$' A O SUI O k *ERRUNP i '<' gN lB k *Skip1 dD a TH TU gX a TH gZ b b dL eN lB p u 27 A O STI O k *ERRUNP i '(' gN lB k *Skip1 dD a TH TT gW a TH gY b b dL eN lB p C '*' O k *Skip1 dD a TH gK dL b gN lB p k *Skip1 dD a TH gK dL b gN lB p)
*Skip3=F19(A O SDB A O SHB G O k *Skip1 dD a TH gK dL b gN lB p)
*Skips=F19(A O SDB A O SHB K O k *Skip1 dD a TH gK dL b gN lB p)
*Boxg=F18(u 6 C '*' O hDF p G O k *TABLE_VALUE jB *Ftable 'U' dD lB gF p)
*Fname=F37(A G P SDB u 20 C '*' O k *ERR a gI b i "Invalid function name" lB k *Skip jB ('*') ('*') eI lB p G O k *Fnamea dF dG k *Skipc gI lB lB p)
*Fnamea=F29(G G O k *Prefix eE lB k *Def dE lB oA s k *Func k *Boxg dE lB k *Sent jC L () () gG lB lB p)
*Prefix=F18(u 6 C FUNC G P p C ENTRY G P k *Addl i *Extern dE lB p)
*Func=F35(G u 15 C '*' A O SFB A O SJB O k *Skip hFO lB p A O SEB O k Func dD k *Mkgroup TE gH lB b k *Continue gJ lB p)
*Mkgroup=F16(u 10 A C G O SDB P TD gH p O a gE b p)
*Cbody=F14(G A O SEB O k *Cbodya gE k *Skipc gJ lB lB p)
*Cbodya=F36(G A O SEB u 16 C '}' O a k *InsSC k *Skipc gK lB lB b i '+' p G O k *Cbs gE k *Senta dD i () fEI gK lB lB p)
*Cbs=F34(G A O SEB u 18 C '*' A O SJB A O SNB O a a dJ b hNS b dI p A O SIB O dI k *Cbody gE gN lB p)
*Sentx=F27(G A O SEB A O SIB A O SMB O k *Sent i 0 a TE gH a dD TI gL b b hMR lB p)
*Sent=F21(G A O SEB A O SIB O k *Senta dD k *Check hEI lB k *Skipc gN lB lB p)
*Senta=F222(u 65 G A O SEB A O SIB u 17 C '/' O k *Sent dD a TE gH i CUT b dI gO lB p u 17 C '\\' O k *Sent dD a TE gH i STAKE b dI gO lB p C '#' O k *Sent dD a TE gH a k NOT dD b dI b b dI gO lB p u 98 C 0 A O SEB A O SIB u 12 C ',' O k *Sent i R hEI gO lB p u 18 C '=' O k *Sent i R a TE gH i DO b dI gO lB p u 31 C ':' u 18 C ':' O k *Sent i L a TE gH i BIND b dI gP lB p O k *Sent i L hEI gO lB p u 7 C ';' O dE gO p u 7 C '}' O dE hMO p G O k *Serr i ", : = ; or }" hMO lB p G u 37 A O SEB A O SIB u 15 C '{' O k *Sentg hEI k *Cbody dD dI gO lB lB p G O k *Sentx gE k *Pexpr dD i ('*') hIO lB lB p G A O SFB O k *ERR a gK b dE lB jC '*' ('*') ('*') eK p)
*Sentg=F40(A O SDB A O SHB u 11 D '*' B O SNN O dL TM gR p D '+' B O SNN O k *Sentx i G dD a gP b dH k *Skipc TM gR lB lB p)
*Serr=F13(G O k *ERRDEL hDF lB jD '*' ('*') ('*') ';' eF p)
*Check=F82(K K P SCE A u 71 L L O SFE P SKH u 20 C BIND P SIG u 8 A G O SMG P gE p K P i "Pattern or block is expected after ::" dE p u 38 A A C NOT G P SNM K P SLH P SIG u 18 A G O SSG P a TF gK dP dH k *Ckillr dQ lB b dR p K P i "Pattern or result or block is expected after #" dE p K P gE p O SFE P gE p)
*Ckillr=F11(u 7 C R P i (R) p G P p)
*Pexpr=F23(G A O SEB A O SIB O k *Pexpra hDI k *Getelem k *TYPE k *Skipc gN lB lB lB lB p)
*Pexpra=F424(G A O SEB A O SIB u 185 C Brac u 14 C '(' O k *Pexpr dD a dE b dI gP lB p u 45 C ')' O SFF u 22 A O SQF O k *Pexpr dD a TE TQ gT k P TE gV b b dI gP lB p G O k *ERRUNP hNP lB k *Pexpr dD a TE hQS b dI eP lB p u 83 C '>' O SFF u 30 C '$' A O SRF O k *Pexpr dD a TE TR gU k K k *Cfun k *TYPE TE gW lB lB b b dI gP lB p u 28 A O SQF O k *ERRUNP i '(' gP lB k *Pexpr dD a TE TQ gT a TE gV b b dI dN eP lB p C '*' O k *ERRUNP hNP lB k *Pexpr dD a TE hQS b dI eP lB p C '<' O SCE u 15 C R P k *Pexpr dD k '$' dE b dI gP lB p C L P k *ERR a gP b i "Invalid character < in the pattern" lB k *Pexpr hDI eP lB p u 74 C Var G u 45 C '*' O SCE u 18 C R P k *ERR a gQ b i "Missing index" lB k *Pexpr hDI eQ lB p C L P k *Pexpr dD a TE gH k *Mk-var dN k *Nind lB lB b dI gQ lB p G O k *Pexpr dD a TE gH k *Mk-var gO lB b k *Testvar dD a eO b dI gQ lB lB p u 76 C Delim G O SFF u 11 C '*' O a TE gS b dI hNP p u 28 A O SQF O k *ERRUNP i '(' gP lB k *Pexpr dD a TE TQ gT a TE gV b b dI dN eP lB p C '$' A O SRF O k *ERRUNP i '<' gP lB k *Pexpr dD a TE TR gU a TE gW b b dI dN eP lB p u 17 C Symbol G O k *Pexpr dD a TE gH dN b dI gP lB p u 20 C Box G O k *Pexpr dD a TE gH k *Boxg dN lB b dI gP lB p u 20 C String A O SNB O k *Pexpr dD a TE gH TN gQ b dI gS lB p C Other G O k *ERR a gP b i "Invalid character " dN lB k *Pexpr hDI eP lB p)
*Testvar=F100(u 52 G A G G P SEB A SIB O SJJ V X G IH P SOJ O SFH u 5 IQ P hIL p G P a TI hMT dE b gL k *ERR a eL b i "Different type variables with equal index: " dG i '.' dH i " and " dQ i '.' dH lB p u 19 C L A G G P SEB A O SIB O a TI gL dE b gN p C R A G G P SEB A O SIB O hIN k *ERR a eN b i "Variable " dG i '.' dH i " is undefined" lB p)
*Mk-var=F16(G K P a k *SETV i X k *UPPER dD lB lB dE b p)
*Nind=F23(P k *GETV i *Ind lA oA G P k *SETV i *Ind k *ADD dH i 1 lA lA oB dH p)
*Def=F24(u 21 G O k *Def1 dD k *TABLE_VALUE jB *Ftable 'U' dD lB lB oA s k *Def gF lB p P p)
*Def1=F31(G G P k *GETV dE lA oA u 12 P k *SETV dE k *GETV i *Lineno lB lB p O k *WNG i "Function " dD i " is redefined" lB p)
*Use=F20(u 17 G O k *TABLE_VALUE jB *Ftable 'U' dD lB oA s k *Use gF lB p P p)
*Cfun=F17(u 11 C 'F' G O k *Boxg dE lB gG p G K O hEG p)
*Testdef=F10(P k *Td k *TABLE_LIST i *Ftable lB lB p)
*Td=F22(u 19 G G O k *Td1 dD k *GETN dE i 0 lB lB k *Td gG lB p P p)
*Td1=F65(G u 60 C ' ' P u 12 k *Oneof dD i (THISTABLE MU) lA oA C T P p k *POS i *Extern dD lA oB u 4 G O p O k *Addl i *Extern dD lB oC k *Builtcd dD lB oD s u 13 C '*' P k *WNG i "Symbol " dD i " is undefined" lB p G P p G P p)
*Extdef=F10(P k *Ed k *GETV i *Extern lB lB p)
*Ed=F15(u 12 G O k *Ed1 dD lB k *Ed gF lB p P p)
*Ed1=F41(G P k *TABLE_VALUE jB *Ftable 'O' dD lA oA u 11 P k *WNG i "EXTERN symbol " dD i " never used" lB p G P k *GETN dI i 0 lA oB u 5 C ' ' P p G P dD p)
*ERREXP=F12(G O k *ERR a gF b i "Expected " dD lB p)
*ERRUNP=F12(G O k *ERR a gF b i "Unpaired " dD lB p)
*ERRDEL=F35(G u 16 C 0 O k *ERR a gG b i "Unexpected end of text (" dD i " is expected)" lB p G O k *ERR a gG b i "Invalid delimiter " dE i " (" dD i " is expected)" lB p)
*ERRIFC=F10(O k *ERR a gE b i "Invalid function call" lB p)
<BlockEnd>
