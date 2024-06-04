cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  ccu002_02-hypertension-benign---primary:
    run: ccu002_02-hypertension-benign---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  ccu002_02-hypertension---primary:
    run: ccu002_02-hypertension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-benign---primary/output
  ccu002_02-hypertension-malignant---primary:
    run: ccu002_02-hypertension-malignant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension---primary/output
  essential-ccu002_02-hypertension---primary:
    run: essential-ccu002_02-hypertension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-malignant---primary/output
  renal-ccu002_02-hypertension---primary:
    run: renal-ccu002_02-hypertension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: essential-ccu002_02-hypertension---primary/output
  ccu002_02-hypertension-stage---primary:
    run: ccu002_02-hypertension-stage---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: renal-ccu002_02-hypertension---primary/output
  diastolic-ccu002_02-hypertension---primary:
    run: diastolic-ccu002_02-hypertension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-stage---primary/output
  congestive-ccu002_02-hypertension---primary:
    run: congestive-ccu002_02-hypertension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: diastolic-ccu002_02-hypertension---primary/output
  ccu002_02-hypertension-kidney---primary:
    run: ccu002_02-hypertension-kidney---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: congestive-ccu002_02-hypertension---primary/output
  hypertensive-ccu002_02-hypertension---primary:
    run: hypertensive-ccu002_02-hypertension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-kidney---primary/output
  secondary-ccu002_02-hypertension---primary:
    run: secondary-ccu002_02-hypertension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: hypertensive-ccu002_02-hypertension---primary/output
  ccu002_02-hypertension-therapy---primary:
    run: ccu002_02-hypertension-therapy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: secondary-ccu002_02-hypertension---primary/output
  ccu002_02-hypertension-failure---primary:
    run: ccu002_02-hypertension-failure---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-therapy---primary/output
  ccu002_02-hypertension-heart---primary:
    run: ccu002_02-hypertension-heart---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-failure---primary/output
  systolic-ccu002_02-hypertension---primary:
    run: systolic-ccu002_02-hypertension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-heart---primary/output
  renovascular-ccu002_02-hypertension---primary:
    run: renovascular-ccu002_02-hypertension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: systolic-ccu002_02-hypertension---primary/output
  ccu002_02-hypertension-125ml---primary:
    run: ccu002_02-hypertension-125ml---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: renovascular-ccu002_02-hypertension---primary/output
  ccu002_02-hypertension-plendil---primary:
    run: ccu002_02-hypertension-plendil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-125ml---primary/output
  ccu002_02-hypertension-3125mg---primary:
    run: ccu002_02-hypertension-3125mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-plendil---primary/output
  ccu002_02-hypertension-320mg---primary:
    run: ccu002_02-hypertension-320mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-3125mg---primary/output
  ccu002_02-hypertension-375mg---primary:
    run: ccu002_02-hypertension-375mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-320mg---primary/output
  ccu002_02-hypertension-felotens---primary:
    run: ccu002_02-hypertension-felotens---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-375mg---primary/output
  ccu002_02-hypertension-300mg---primary:
    run: ccu002_02-hypertension-300mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-felotens---primary/output
  ccu002_02-hypertension-adizemxl---primary:
    run: ccu002_02-hypertension-adizemxl---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-300mg---primary/output
  ccu002_02-hypertension-400microgram---primary:
    run: ccu002_02-hypertension-400microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-adizemxl---primary/output
  ccu002_02-hypertension-tablet---primary:
    run: ccu002_02-hypertension-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-400microgram---primary/output
  ccu002_02-hypertension-400mg---primary:
    run: ccu002_02-hypertension-400mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-tablet---primary/output
  ccu002_02-hypertension-tensipine---primary:
    run: ccu002_02-hypertension-tensipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-400mg---primary/output
  ccu002_02-hypertension-candesartan---primary:
    run: ccu002_02-hypertension-candesartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-tensipine---primary/output
  ccu002_02-hypertension-bisoprolol---primary:
    run: ccu002_02-hypertension-bisoprolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-candesartan---primary/output
  ccu002_02-hypertension-univer---primary:
    run: ccu002_02-hypertension-univer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-bisoprolol---primary/output
  ccu002_02-hypertension-tolura---primary:
    run: ccu002_02-hypertension-tolura---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-univer---primary/output
  ccu002_02-hypertension-irbesartan---primary:
    run: ccu002_02-hypertension-irbesartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-tolura---primary/output
  ccu002_02-hypertension-viazem---primary:
    run: ccu002_02-hypertension-viazem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-irbesartan---primary/output
  ccu002_02-hypertension-atenolol---primary:
    run: ccu002_02-hypertension-atenolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-viazem---primary/output
  ccu002_02-hypertension-360mg---primary:
    run: ccu002_02-hypertension-360mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-atenolol---primary/output
  ccu002_02-hypertension-trandolapril---primary:
    run: ccu002_02-hypertension-trandolapril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-360mg---primary/output
  ccu002_02-hypertension-lisopress---primary:
    run: ccu002_02-hypertension-lisopress---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-trandolapril---primary/output
  ccu002_02-hypertension-zemret---primary:
    run: ccu002_02-hypertension-zemret---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-lisopress---primary/output
  ccu002_02-hypertension-dilzem---primary:
    run: ccu002_02-hypertension-dilzem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-zemret---primary/output
  ccu002_02-hypertension-amlodipine---primary:
    run: ccu002_02-hypertension-amlodipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-dilzem---primary/output
  ccu002_02-hypertension-nebivolol---primary:
    run: ccu002_02-hypertension-nebivolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-amlodipine---primary/output
  ccu002_02-hypertension-accupro---primary:
    run: ccu002_02-hypertension-accupro---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-nebivolol---primary/output
  ccu002_02-hypertension-exforge---primary:
    run: ccu002_02-hypertension-exforge---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-accupro---primary/output
  ccu002_02-hypertension-160mg---primary:
    run: ccu002_02-hypertension-160mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-exforge---primary/output
  ccu002_02-hypertension-ifirmasta---primary:
    run: ccu002_02-hypertension-ifirmasta---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-160mg---primary/output
  ccu002_02-hypertension-coaprovel---primary:
    run: ccu002_02-hypertension-coaprovel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-ifirmasta---primary/output
  ccu002_02-hypertension-180mg---primary:
    run: ccu002_02-hypertension-180mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-coaprovel---primary/output
  ccu002_02-hypertension-micardisplus---primary:
    run: ccu002_02-hypertension-micardisplus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-180mg---primary/output
  ccu002_02-hypertension-sotacor---primary:
    run: ccu002_02-hypertension-sotacor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-micardisplus---primary/output
  ccu002_02-hypertension-600mg---primary:
    run: ccu002_02-hypertension-600mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-sotacor---primary/output
  ccu002_02-hypertension-trandate---primary:
    run: ccu002_02-hypertension-trandate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-600mg---primary/output
  ccu002_02-hypertension-celiprolol---primary:
    run: ccu002_02-hypertension-celiprolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-trandate---primary/output
  ccu002_02-hypertension-edarbi---primary:
    run: ccu002_02-hypertension-edarbi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-celiprolol---primary/output
  ccu002_02-hypertension-diltiazem---primary:
    run: ccu002_02-hypertension-diltiazem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-edarbi---primary/output
  ccu002_02-hypertension-carace---primary:
    run: ccu002_02-hypertension-carace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-diltiazem---primary/output
  ccu002_02-hypertension-500mg---primary:
    run: ccu002_02-hypertension-500mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-carace---primary/output
  ccu002_02-hypertension-sacubitril---primary:
    run: ccu002_02-hypertension-sacubitril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-500mg---primary/output
  ccu002_02-hypertension-nicardipine---primary:
    run: ccu002_02-hypertension-nicardipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-sacubitril---primary/output
  ccu002_02-hypertension-lercanidipine---primary:
    run: ccu002_02-hypertension-lercanidipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-nicardipine---primary/output
  ccu002_02-hypertension-tildiem---primary:
    run: ccu002_02-hypertension-tildiem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-lercanidipine---primary/output
  ccu002_02-hypertension-100mg---primary:
    run: ccu002_02-hypertension-100mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-tildiem---primary/output
  ccu002_02-hypertension-acebutolol---primary:
    run: ccu002_02-hypertension-acebutolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-100mg---primary/output
  ccu002_02-hypertension-entresto---primary:
    run: ccu002_02-hypertension-entresto---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-acebutolol---primary/output
  ccu002_02-hypertension-300microgram---primary:
    run: ccu002_02-hypertension-300microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-entresto---primary/output
  ccu002_02-hypertension-dilcardia---primary:
    run: ccu002_02-hypertension-dilcardia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-300microgram---primary/output
  ccu002_02-hypertension-verapress---primary:
    run: ccu002_02-hypertension-verapress---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-dilcardia---primary/output
  ccu002_02-hypertension-doxazosin---primary:
    run: ccu002_02-hypertension-doxazosin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-verapress---primary/output
  ccu002_02-hypertension-hypovase---primary:
    run: ccu002_02-hypertension-hypovase---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-doxazosin---primary/output
  ccu002_02-hypertension-slozem---primary:
    run: ccu002_02-hypertension-slozem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-hypovase---primary/output
  ccu002_02-hypertension-angitil---primary:
    run: ccu002_02-hypertension-angitil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-slozem---primary/output
  ccu002_02-hypertension-betacardone---primary:
    run: ccu002_02-hypertension-betacardone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-angitil---primary/output
  ccu002_02-hypertension-verapamil---primary:
    run: ccu002_02-hypertension-verapamil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-betacardone---primary/output
  ccu002_02-hypertension-103mg---primary:
    run: ccu002_02-hypertension-103mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-verapamil---primary/output
  ccu002_02-hypertension-adizemsr---primary:
    run: ccu002_02-hypertension-adizemsr---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-103mg---primary/output
  ccu002_02-hypertension-zanidip---primary:
    run: ccu002_02-hypertension-zanidip---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-adizemsr---primary/output
  ccu002_02-hypertension-lopresor---primary:
    run: ccu002_02-hypertension-lopresor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-zanidip---primary/output
  ccu002_02-hypertension-natrilix---primary:
    run: ccu002_02-hypertension-natrilix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-lopresor---primary/output
  ccu002_02-hypertension-aldactone---primary:
    run: ccu002_02-hypertension-aldactone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-natrilix---primary/output
  ccu002_02-hypertension-catapre---primary:
    run: ccu002_02-hypertension-catapre---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-aldactone---primary/output
  ccu002_02-hypertension-quinapril---primary:
    run: ccu002_02-hypertension-quinapril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-catapre---primary/output
  ccu002_02-hypertension-labetalol---primary:
    run: ccu002_02-hypertension-labetalol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-quinapril---primary/output
  ccu002_02-hypertension-nifedipine---primary:
    run: ccu002_02-hypertension-nifedipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-labetalol---primary/output
  ccu002_02-hypertension-vastarel---primary:
    run: ccu002_02-hypertension-vastarel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-nifedipine---primary/output
  ccu002_02-hypertension-riociguat---primary:
    run: ccu002_02-hypertension-riociguat---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-vastarel---primary/output
  ccu002_02-hypertension-neozipine---primary:
    run: ccu002_02-hypertension-neozipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-riociguat---primary/output
  ccu002_02-hypertension-tritace---primary:
    run: ccu002_02-hypertension-tritace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-neozipine---primary/output
  ccu002_02-hypertension-indapamide---primary:
    run: ccu002_02-hypertension-indapamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-tritace---primary/output
  ccu002_02-hypertension-eplerenone---primary:
    run: ccu002_02-hypertension-eplerenone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-indapamide---primary/output
  ccu002_02-hypertension-cardioplen---primary:
    run: ccu002_02-hypertension-cardioplen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-eplerenone---primary/output
  zestoretic-ccu002_02-hypertension---primary:
    run: zestoretic-ccu002_02-hypertension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-cardioplen---primary/output
  ccu002_02-hypertension-nifedipress---primary:
    run: ccu002_02-hypertension-nifedipress---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: zestoretic-ccu002_02-hypertension---primary/output
  ccu002_02-hypertension-erbumine---primary:
    run: ccu002_02-hypertension-erbumine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-nifedipress---primary/output
  ccu002_02-hypertension-securon---primary:
    run: ccu002_02-hypertension-securon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-erbumine---primary/output
  ccu002_02-hypertension-aliskiren---primary:
    run: ccu002_02-hypertension-aliskiren---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-securon---primary/output
  ccu002_02-hypertension-olmesartan---primary:
    run: ccu002_02-hypertension-olmesartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule97
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-aliskiren---primary/output
  ccu002_02-hypertension-celectol---primary:
    run: ccu002_02-hypertension-celectol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule98
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-olmesartan---primary/output
  ccu002_02-hypertension-zemtard---primary:
    run: ccu002_02-hypertension-zemtard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule99
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-celectol---primary/output
  ccu002_02-hypertension-lacidipine---primary:
    run: ccu002_02-hypertension-lacidipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule100
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-zemtard---primary/output
  ccu002_02-hypertension-kenzem---primary:
    run: ccu002_02-hypertension-kenzem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule101
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-lacidipine---primary/output
  ccu002_02-hypertension-aldomet---primary:
    run: ccu002_02-hypertension-aldomet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule102
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-kenzem---primary/output
  ccu002_02-hypertension-terazosin---primary:
    run: ccu002_02-hypertension-terazosin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule103
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-aldomet---primary/output
  ccu002_02-hypertension-cardura---primary:
    run: ccu002_02-hypertension-cardura---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule104
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-terazosin---primary/output
  ccu002_02-hypertension-adalat---primary:
    run: ccu002_02-hypertension-adalat---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule105
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-cardura---primary/output
  ccu002_02-hypertension-calchan---primary:
    run: ccu002_02-hypertension-calchan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule106
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-adalat---primary/output
  ccu002_02-hypertension-tenormin---primary:
    run: ccu002_02-hypertension-tenormin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule107
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-calchan---primary/output
  ccu002_02-hypertension-coracten---primary:
    run: ccu002_02-hypertension-coracten---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule108
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-tenormin---primary/output
  ccu002_02-hypertension-adipine---primary:
    run: ccu002_02-hypertension-adipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule109
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-coracten---primary/output
  ccu002_02-hypertension-capoten---primary:
    run: ccu002_02-hypertension-capoten---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule110
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-adipine---primary/output
  ccu002_02-hypertension-parmid---primary:
    run: ccu002_02-hypertension-parmid---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule111
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-capoten---primary/output
  alkapamid-ccu002_02-hypertension---primary:
    run: alkapamid-ccu002_02-hypertension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule112
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-parmid---primary/output
  ccu002_02-hypertension-loniten---primary:
    run: ccu002_02-hypertension-loniten---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule113
      potentialCases:
        id: potentialCases
        source: alkapamid-ccu002_02-hypertension---primary/output
  ccu002_02-hypertension-sotalol---primary:
    run: ccu002_02-hypertension-sotalol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule114
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-loniten---primary/output
  ccu002_02-hypertension-adanif---primary:
    run: ccu002_02-hypertension-adanif---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule115
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-sotalol---primary/output
  ccu002_02-hypertension-cardene---primary:
    run: ccu002_02-hypertension-cardene---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule116
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-adanif---primary/output
  ccu002_02-hypertension-rasilez---primary:
    run: ccu002_02-hypertension-rasilez---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule117
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-cardene---primary/output
  ccu002_02-hypertension-folpik---primary:
    run: ccu002_02-hypertension-folpik---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule118
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-rasilez---primary/output
  ccu002_02-hypertension-coversyl---primary:
    run: ccu002_02-hypertension-coversyl---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule119
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-folpik---primary/output
  ccu002_02-hypertension-eprosartan---primary:
    run: ccu002_02-hypertension-eprosartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule120
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-coversyl---primary/output
  ccu002_02-hypertension-imidapril---primary:
    run: ccu002_02-hypertension-imidapril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule121
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-eprosartan---primary/output
  ccu002_02-hypertension-trimetazidine---primary:
    run: ccu002_02-hypertension-trimetazidine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule122
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-imidapril---primary/output
  ccu002_02-hypertension-sildenafil---primary:
    run: ccu002_02-hypertension-sildenafil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule123
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-trimetazidine---primary/output
  ccu002_02-hypertension-losartan---primary:
    run: ccu002_02-hypertension-losartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule124
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-sildenafil---primary/output
  ccu002_02-hypertension-cardilate---primary:
    run: ccu002_02-hypertension-cardilate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule125
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-losartan---primary/output
  ccu002_02-hypertension-bicarzem---primary:
    run: ccu002_02-hypertension-bicarzem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule126
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-cardilate---primary/output
  ccu002_02-hypertension-valni---primary:
    run: ccu002_02-hypertension-valni---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule127
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-bicarzem---primary/output
  ccu002_02-hypertension-azilsartan---primary:
    run: ccu002_02-hypertension-azilsartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule128
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-valni---primary/output
  ccu002_02-hypertension-codiovan---primary:
    run: ccu002_02-hypertension-codiovan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule129
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-azilsartan---primary/output
  ccu002_02-hypertension-methyldopa---primary:
    run: ccu002_02-hypertension-methyldopa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule130
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-codiovan---primary/output
  ccu002_02-hypertension-metoprolol---primary:
    run: ccu002_02-hypertension-metoprolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule131
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-methyldopa---primary/output
  ccu002_02-hypertension-veratil---primary:
    run: ccu002_02-hypertension-veratil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule132
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-metoprolol---primary/output
  ccu002_02-hypertension-hytrin---primary:
    run: ccu002_02-hypertension-hytrin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule133
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-veratil---primary/output
  ccu002_02-hypertension-motens---primary:
    run: ccu002_02-hypertension-motens---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule134
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-hytrin---primary/output
  ccu002_02-hypertension-neofel---primary:
    run: ccu002_02-hypertension-neofel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule135
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-motens---primary/output
  ccu002_02-hypertension-vascalpha---primary:
    run: ccu002_02-hypertension-vascalpha---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule136
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-neofel---primary/output
  ccu002_02-hypertension-tosilate---primary:
    run: ccu002_02-hypertension-tosilate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule137
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-vascalpha---primary/output
  ccu002_02-hypertension-felogen---primary:
    run: ccu002_02-hypertension-felogen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule138
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-tosilate---primary/output
  ccu002_02-hypertension-modifiedrelease---primary:
    run: ccu002_02-hypertension-modifiedrelease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule139
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-felogen---primary/output
  ccu002_02-hypertension-spironolactone---primary:
    run: ccu002_02-hypertension-spironolactone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule140
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-modifiedrelease---primary/output
  ccu002_02-hypertension-innovace---primary:
    run: ccu002_02-hypertension-innovace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule141
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-spironolactone---primary/output
  ccu002_02-hypertension-ambrisentan---primary:
    run: ccu002_02-hypertension-ambrisentan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule142
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-innovace---primary/output
  ccu002_02-hypertension-retard---primary:
    run: ccu002_02-hypertension-retard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule143
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-ambrisentan---primary/output
  ccu002_02-hypertension-doxadura---primary:
    run: ccu002_02-hypertension-doxadura---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule144
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-retard---primary/output
  ccu002_02-hypertension-oxprenolol---primary:
    run: ccu002_02-hypertension-oxprenolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule145
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-doxadura---primary/output
  ccu002_02-hypertension-200microgram---primary:
    run: ccu002_02-hypertension-200microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule146
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-oxprenolol---primary/output
  ccu002_02-hypertension-ramipril---primary:
    run: ccu002_02-hypertension-ramipril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule147
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-200microgram---primary/output
  ccu002_02-hypertension-revatio---primary:
    run: ccu002_02-hypertension-revatio---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule148
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-ramipril---primary/output
  ccu002_02-hypertension-volibri---primary:
    run: ccu002_02-hypertension-volibri---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule149
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-revatio---primary/output
  ccu002_02-hypertension-teveten---primary:
    run: ccu002_02-hypertension-teveten---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule150
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-volibri---primary/output
  ccu002_02-hypertension-timolol---primary:
    run: ccu002_02-hypertension-timolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule151
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-teveten---primary/output
  ccu002_02-hypertension-olmetec---primary:
    run: ccu002_02-hypertension-olmetec---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule152
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-timolol---primary/output
  ccu002_02-hypertension-nidef---primary:
    run: ccu002_02-hypertension-nidef---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule153
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-olmetec---primary/output
  ccu002_02-hypertension-150mg---primary:
    run: ccu002_02-hypertension-150mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule154
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-nidef---primary/output
  ccu002_02-hypertension-capsule---primary:
    run: ccu002_02-hypertension-capsule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule155
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-150mg---primary/output
  sectral-ccu002_02-hypertension---primary:
    run: sectral-ccu002_02-hypertension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule156
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-capsule---primary/output
  ccu002_02-hypertension-chlorothiazide---primary:
    run: ccu002_02-hypertension-chlorothiazide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule157
      potentialCases:
        id: potentialCases
        source: sectral-ccu002_02-hypertension---primary/output
  ccu002_02-hypertension-amlostin---primary:
    run: ccu002_02-hypertension-amlostin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule158
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-chlorothiazide---primary/output
  ccu002_02-hypertension-tanatril---primary:
    run: ccu002_02-hypertension-tanatril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule159
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-amlostin---primary/output
  ccu002_02-hypertension-cozaarcomp---primary:
    run: ccu002_02-hypertension-cozaarcomp---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule160
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-tanatril---primary/output
  ccu002_02-hypertension-625mg---primary:
    run: ccu002_02-hypertension-625mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule161
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-cozaarcomp---primary/output
  ccu002_02-hypertension-240mg---primary:
    run: ccu002_02-hypertension-240mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule162
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-625mg---primary/output
  ccu002_02-hypertension-cardicor---primary:
    run: ccu002_02-hypertension-cardicor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule163
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-240mg---primary/output
  ccu002_02-hypertension-betaloc---primary:
    run: ccu002_02-hypertension-betaloc---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule164
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-cardicor---primary/output
  ccu002_02-hypertension-bosentan---primary:
    run: ccu002_02-hypertension-bosentan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule165
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-betaloc---primary/output
  ccu002_02-hypertension-inspra---primary:
    run: ccu002_02-hypertension-inspra---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule166
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-bosentan---primary/output
  ccu002_02-hypertension-enalapril---primary:
    run: ccu002_02-hypertension-enalapril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule167
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-inspra---primary/output
  ccu002_02-hypertension-arginine---primary:
    run: ccu002_02-hypertension-arginine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule168
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-enalapril---primary/output
  ccu002_02-hypertension-titration---primary:
    run: ccu002_02-hypertension-titration---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule169
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-arginine---primary/output
  ccu002_02-hypertension-telmisartan---primary:
    run: ccu002_02-hypertension-telmisartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule170
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-titration---primary/output
  ccu002_02-hypertension-felodipine---primary:
    run: ccu002_02-hypertension-felodipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule171
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-telmisartan---primary/output
  ccu002_02-hypertension-zestril---primary:
    run: ccu002_02-hypertension-zestril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule172
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-felodipine---primary/output
  ccu002_02-hypertension-istin---primary:
    run: ccu002_02-hypertension-istin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule173
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-zestril---primary/output
  ccu002_02-hypertension-hydralazine---primary:
    run: ccu002_02-hypertension-hydralazine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule174
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-istin---primary/output
  ccu002_02-hypertension-lisinopril---primary:
    run: ccu002_02-hypertension-lisinopril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule175
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-hydralazine---primary/output
  ccu002_02-hypertension-minoxidil---primary:
    run: ccu002_02-hypertension-minoxidil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule176
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-lisinopril---primary/output
  ccu002_02-hypertension-250mg---primary:
    run: ccu002_02-hypertension-250mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule177
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-minoxidil---primary/output
  ccu002_02-hypertension-cabren---primary:
    run: ccu002_02-hypertension-cabren---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule178
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-250mg---primary/output
  ccu002_02-hypertension-fosinopril---primary:
    run: ccu002_02-hypertension-fosinopril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule179
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-cabren---primary/output
  ccu002_02-hypertension-context---primary:
    run: ccu002_02-hypertension-context---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule180
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-fosinopril---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule181
      potentialCases:
        id: potentialCases
        source: ccu002_02-hypertension-context---primary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
  inputModule96:
    id: inputModule96
    doc: Python implementation unit
    type: File
  inputModule97:
    id: inputModule97
    doc: Python implementation unit
    type: File
  inputModule98:
    id: inputModule98
    doc: Python implementation unit
    type: File
  inputModule99:
    id: inputModule99
    doc: Python implementation unit
    type: File
  inputModule100:
    id: inputModule100
    doc: Python implementation unit
    type: File
  inputModule101:
    id: inputModule101
    doc: Python implementation unit
    type: File
  inputModule102:
    id: inputModule102
    doc: Python implementation unit
    type: File
  inputModule103:
    id: inputModule103
    doc: Python implementation unit
    type: File
  inputModule104:
    id: inputModule104
    doc: Python implementation unit
    type: File
  inputModule105:
    id: inputModule105
    doc: Python implementation unit
    type: File
  inputModule106:
    id: inputModule106
    doc: Python implementation unit
    type: File
  inputModule107:
    id: inputModule107
    doc: Python implementation unit
    type: File
  inputModule108:
    id: inputModule108
    doc: Python implementation unit
    type: File
  inputModule109:
    id: inputModule109
    doc: Python implementation unit
    type: File
  inputModule110:
    id: inputModule110
    doc: Python implementation unit
    type: File
  inputModule111:
    id: inputModule111
    doc: Python implementation unit
    type: File
  inputModule112:
    id: inputModule112
    doc: Python implementation unit
    type: File
  inputModule113:
    id: inputModule113
    doc: Python implementation unit
    type: File
  inputModule114:
    id: inputModule114
    doc: Python implementation unit
    type: File
  inputModule115:
    id: inputModule115
    doc: Python implementation unit
    type: File
  inputModule116:
    id: inputModule116
    doc: Python implementation unit
    type: File
  inputModule117:
    id: inputModule117
    doc: Python implementation unit
    type: File
  inputModule118:
    id: inputModule118
    doc: Python implementation unit
    type: File
  inputModule119:
    id: inputModule119
    doc: Python implementation unit
    type: File
  inputModule120:
    id: inputModule120
    doc: Python implementation unit
    type: File
  inputModule121:
    id: inputModule121
    doc: Python implementation unit
    type: File
  inputModule122:
    id: inputModule122
    doc: Python implementation unit
    type: File
  inputModule123:
    id: inputModule123
    doc: Python implementation unit
    type: File
  inputModule124:
    id: inputModule124
    doc: Python implementation unit
    type: File
  inputModule125:
    id: inputModule125
    doc: Python implementation unit
    type: File
  inputModule126:
    id: inputModule126
    doc: Python implementation unit
    type: File
  inputModule127:
    id: inputModule127
    doc: Python implementation unit
    type: File
  inputModule128:
    id: inputModule128
    doc: Python implementation unit
    type: File
  inputModule129:
    id: inputModule129
    doc: Python implementation unit
    type: File
  inputModule130:
    id: inputModule130
    doc: Python implementation unit
    type: File
  inputModule131:
    id: inputModule131
    doc: Python implementation unit
    type: File
  inputModule132:
    id: inputModule132
    doc: Python implementation unit
    type: File
  inputModule133:
    id: inputModule133
    doc: Python implementation unit
    type: File
  inputModule134:
    id: inputModule134
    doc: Python implementation unit
    type: File
  inputModule135:
    id: inputModule135
    doc: Python implementation unit
    type: File
  inputModule136:
    id: inputModule136
    doc: Python implementation unit
    type: File
  inputModule137:
    id: inputModule137
    doc: Python implementation unit
    type: File
  inputModule138:
    id: inputModule138
    doc: Python implementation unit
    type: File
  inputModule139:
    id: inputModule139
    doc: Python implementation unit
    type: File
  inputModule140:
    id: inputModule140
    doc: Python implementation unit
    type: File
  inputModule141:
    id: inputModule141
    doc: Python implementation unit
    type: File
  inputModule142:
    id: inputModule142
    doc: Python implementation unit
    type: File
  inputModule143:
    id: inputModule143
    doc: Python implementation unit
    type: File
  inputModule144:
    id: inputModule144
    doc: Python implementation unit
    type: File
  inputModule145:
    id: inputModule145
    doc: Python implementation unit
    type: File
  inputModule146:
    id: inputModule146
    doc: Python implementation unit
    type: File
  inputModule147:
    id: inputModule147
    doc: Python implementation unit
    type: File
  inputModule148:
    id: inputModule148
    doc: Python implementation unit
    type: File
  inputModule149:
    id: inputModule149
    doc: Python implementation unit
    type: File
  inputModule150:
    id: inputModule150
    doc: Python implementation unit
    type: File
  inputModule151:
    id: inputModule151
    doc: Python implementation unit
    type: File
  inputModule152:
    id: inputModule152
    doc: Python implementation unit
    type: File
  inputModule153:
    id: inputModule153
    doc: Python implementation unit
    type: File
  inputModule154:
    id: inputModule154
    doc: Python implementation unit
    type: File
  inputModule155:
    id: inputModule155
    doc: Python implementation unit
    type: File
  inputModule156:
    id: inputModule156
    doc: Python implementation unit
    type: File
  inputModule157:
    id: inputModule157
    doc: Python implementation unit
    type: File
  inputModule158:
    id: inputModule158
    doc: Python implementation unit
    type: File
  inputModule159:
    id: inputModule159
    doc: Python implementation unit
    type: File
  inputModule160:
    id: inputModule160
    doc: Python implementation unit
    type: File
  inputModule161:
    id: inputModule161
    doc: Python implementation unit
    type: File
  inputModule162:
    id: inputModule162
    doc: Python implementation unit
    type: File
  inputModule163:
    id: inputModule163
    doc: Python implementation unit
    type: File
  inputModule164:
    id: inputModule164
    doc: Python implementation unit
    type: File
  inputModule165:
    id: inputModule165
    doc: Python implementation unit
    type: File
  inputModule166:
    id: inputModule166
    doc: Python implementation unit
    type: File
  inputModule167:
    id: inputModule167
    doc: Python implementation unit
    type: File
  inputModule168:
    id: inputModule168
    doc: Python implementation unit
    type: File
  inputModule169:
    id: inputModule169
    doc: Python implementation unit
    type: File
  inputModule170:
    id: inputModule170
    doc: Python implementation unit
    type: File
  inputModule171:
    id: inputModule171
    doc: Python implementation unit
    type: File
  inputModule172:
    id: inputModule172
    doc: Python implementation unit
    type: File
  inputModule173:
    id: inputModule173
    doc: Python implementation unit
    type: File
  inputModule174:
    id: inputModule174
    doc: Python implementation unit
    type: File
  inputModule175:
    id: inputModule175
    doc: Python implementation unit
    type: File
  inputModule176:
    id: inputModule176
    doc: Python implementation unit
    type: File
  inputModule177:
    id: inputModule177
    doc: Python implementation unit
    type: File
  inputModule178:
    id: inputModule178
    doc: Python implementation unit
    type: File
  inputModule179:
    id: inputModule179
    doc: Python implementation unit
    type: File
  inputModule180:
    id: inputModule180
    doc: Python implementation unit
    type: File
  inputModule181:
    id: inputModule181
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
