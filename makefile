# For AT 286 -> (Small memory model, less than 32 K elements )

goal: rf.exe

.c.obj:
   cc $*

rf.exe: rfmain.obj \
 rfstor.obj rfinter.obj arithm.obj rfarm.obj rbarm.obj rbsys.obj rfserv.obj \
 rfelst.obj rfinit.obj rbeval.obj rfgo.obj rfoutp.obj rfinp.obj refgen.obj \
 refini.obj class.obj channel.obj fileio.obj rbtable.obj rftable.obj \
 rbio.obj rfalloc.obj contain.obj concha.obj constr.obj convect.obj \
 conmask.obj constor.obj rbcont.obj rbclass.obj video.obj rbmouse.obj
 mkrf

rfmain.obj:  refcom.h config.h refelem.h rfstor.h class.h refgen.h
rfstor.obj:  refcom.h config.h refelem.h rfstor.h class.h refgen.h rftable.h channel.h contain.h rfalloc.h
rfelst.obj:
rfinit.obj:
rfoutp.obj:  refcom.h config.h refelem.h rfstor.h class.h refgen.h rftable.h rfalloc.h fileio.h channel.h
rfinp.obj:   refcom.h config.h refelem.h rfstor.h class.h refgen.h rftable.h contain.h fileio.h channel.h
rfinter.obj: refcom.h config.h refelem.h rfstor.h class.h refgen.h refint.h
rbeval.obj:  refcom.h config.h refelem.h rfstor.h class.h refgen.h refint.h
rfgo.obj:    refcom.h config.h refelem.h rfstor.h class.h refgen.h rftable.h rfalloc.h refint.h fileio.h
rbio.obj:    refcom.h config.h refelem.h rfstor.h class.h refgen.h rfalloc.h fileio.h channel.h
arithm.obj:  arithm.h
rfarm.obj:    refcom.h config.h refelem.h rfstor.h class.h refgen.h rfalloc.h arithm.h rbarm.h
rbarm.obj:    refcom.h config.h refelem.h rfstor.h class.h refgen.h rfalloc.h arithm.h rbarm.h
rbsys.obj:   refcom.h config.h refelem.h rfstor.h class.h refgen.h
refgen.obj:  refcom.h config.h refelem.h rfstor.h class.h refgen.h
refini.obj:  refcom.h config.h refelem.h rfstor.h class.h refgen.h rftable.h
rfserv.obj:  refcom.h config.h refelem.h rfstor.h class.h refgen.h rftable.h refint.h rfalloc.h
rfalloc.obj: refcom.h config.h refelem.h rfstor.h class.h rfalloc.h
fileio.obj:  refcom.h config.h refelem.h rfstor.h class.h refgen.h rfalloc.h fileio.h channel.h
channel.obj: refcom.h config.h refelem.h rfstor.h class.h channel.h
class.obj:   refcom.h config.h refelem.h rfstor.h class.h rfalloc.h
concha.obj:  refcom.h config.h refelem.h rfstor.h class.h refgen.h channel.h rfalloc.h contain.h
constr.obj:  refcom.h config.h refelem.h rfstor.h class.h refgen.h rfalloc.h contain.h
constor.obj: refcom.h config.h refelem.h rfstor.h class.h channel.h contain.h
convect.obj: refcom.h config.h refelem.h rfstor.h class.h refgen.h rfalloc.h contain.h
conmask.obj: refcom.h config.h refelem.h rfstor.h class.h refgen.h rfalloc.h contain.h arithm.h rbarm.h
contain.obj: refcom.h config.h refelem.h rfstor.h class.h refgen.h rfalloc.h contain.h
rftable.obj: refcom.h config.h refelem.h rfstor.h class.h refgen.h rftable.h
rbtable.obj: refcom.h config.h refelem.h rfstor.h class.h refgen.h rftable.h
rbclass.obj: refcom.h config.h refelem.h rfstor.h class.h refgen.h
rbcont.obj:  refcom.h config.h refelem.h rfstor.h class.h refgen.h rfalloc.h contain.h
rbmouse.obj: refcom.h config.h refelem.h rfstor.h class.h refgen.h eventdrv.h
video.obj:   refcom.h config.h refelem.h rfstor.h class.h refgen.h rfalloc.h contain.h channel.h video.h
