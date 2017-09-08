ec: o.header o.ecmain o.rxh
  drlink -o ec -module o.ecmain o.header c:o.stubs o.rxh

o.header: CmoduleHdr
  cmhg -o o.header CModuleHdr
  
o.ecmain: c.ecmain h.ec
  cc -c ecmain
  
o.rxh: arm.rxh
  armmaker -o o.rxh arm.rxh
  