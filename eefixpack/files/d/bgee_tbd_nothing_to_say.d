/* this code autogenerated by the following code (ugly, but it works)

<<<<<<<<./inline/bgee_nothing_to_say_working.d

>>>>>>>>

COPY ~./inline/bgee_nothing_to_say_working.d~ ~eefixpack/files/d/bgee_nothing_to_say_working.d~

<<<<<<<<./inline/common_d_top.d

APPEND %dialog% // %comment%
>>>>>>>>
<<<<<<<<./inline/common_d_middle.d
  IF ~RandomNum(%sounds%,%index%)~ THEN BEGIN common%index% SAY #%say%
    IF ~~ THEN EXIT
  END
>>>>>>>>
<<<<<<<<./inline/common_d_bottom.d
END
>>>>>>>>

ACTION_FOR_EACH cre IN 
  boyba2 boybe1 boybe2 brilla dillar farm3 fcook2 fcook3 flam10 flam2 flam7 flam8 flam9 flam13 flamgg ftobe7 ftowb4 ftowb6 ftowb7 
  girba1 haffg2 halfg5 housg1 housg2 housg3 housg4 hunter iron3 ironm3 ironm4 jhasso mtbe10 mtbe11 mtbe2 // mtbe2 also used by mtbe12 and mrcolson, but soundset is the same
  mtbe3 mtbe4 mtbe8 mtob3 mtob4 mtob5 mtob7 mtob8 mtob9 mtown2 nobl12 nobw3 nobw5 nobw9 poe prost7 prost8 rededg serva2 serwen trave2 volose
BEGIN

  COPY_EXISTING ~%cre%.cre~ ~override~
    READ_STRREF 0x08 name
    SPRINT comment ~%name% (%SOURCE_FILE%)~
    READ_ASCII 0x2cc dialog
    SET sounds = 6
    FOR (index = 1 ; index < 7 ; ++index) BEGIN
      READ_LONG (0x108 + (index * 0x04)) ~strref~
      PATCH_IF strref < 0 BEGIN
        SET sounds = index - 1
        SET index = 7 
      END ELSE BEGIN  
        SET ~sound%index%~ = strref
      END
    END
    BUT_ONLY    
    
  COPY ~eefixpack/files/d/bgee_nothing_to_say_working.d~ ~eefixpack/files/d/bgee_nothing_to_say_working.d~
    APPEND_FILE_EVALUATE ~./inline/common_d_top.d~ 
    FOR (index = 1 ; index < (sounds + 1) ; ++index) BEGIN
      SET say = ~%sound%index%%~
      APPEND_FILE_EVALUATE ~./inline/common_d_middle.d~ 
    END  
    APPEND_FILE_EVALUATE ~./inline/common_d_bottom.d~ 
END

COPY + ~eefixpack/files/d/bgee_nothing_to_say_working.d~ ~eefixpack/files/d/bgee_nothing_to_say_working.d~
  REPLACE_TEXTUALLY ~RandomNum(1,1)~ ~True()~
*/

APPEND boyba2 // Boy (boyba2.cre)
  IF ~True()~ THEN BEGIN common1 SAY #4856
    IF ~~ THEN EXIT
  END
END

APPEND boybe1 // Boy (boybe1.cre)
  IF ~True()~ THEN BEGIN common1 SAY #4859
    IF ~~ THEN EXIT
  END
END

APPEND boybe2 // Boy (boybe2.cre)
  IF ~True()~ THEN BEGIN common1 SAY #4856
    IF ~~ THEN EXIT
  END
END

APPEND brilla // Brilla (brilla.cre)
  IF ~RandomNum(3,1)~ THEN BEGIN common1 SAY #4877
    IF ~~ THEN EXIT
  END
  IF ~RandomNum(3,2)~ THEN BEGIN common2 SAY #4880
    IF ~~ THEN EXIT
  END
  IF ~RandomNum(3,3)~ THEN BEGIN common3 SAY #4879
    IF ~~ THEN EXIT
  END
END

APPEND dillar // Dillar (dillar.cre)
  IF ~RandomNum(2,1)~ THEN BEGIN common1 SAY #11083
    IF ~~ THEN EXIT
  END
  IF ~RandomNum(2,2)~ THEN BEGIN common2 SAY #11092
    IF ~~ THEN EXIT
  END
END

APPEND FARM3 // Farmer (farm3.cre)
  IF ~True()~ THEN BEGIN common1 SAY #4910
    IF ~~ THEN EXIT
  END
END

APPEND FCOOK2 // Cook (fcook2.cre)
  IF ~True()~ THEN BEGIN common1 SAY #4802
    IF ~~ THEN EXIT
  END
END

APPEND FCOOK3 // Cook (fcook3.cre)
  IF ~True()~ THEN BEGIN common1 SAY #11111
    IF ~~ THEN EXIT
  END
END

APPEND flam10 // Flaming Fist Mercenary (flam10.cre)
  IF ~RandomNum(2,1)~ THEN BEGIN common1 SAY #4987
    IF ~~ THEN EXIT
  END
  IF ~RandomNum(2,2)~ THEN BEGIN common2 SAY #4985
    IF ~~ THEN EXIT
  END
END

APPEND FLAM2 // Flaming Fist Mercenary (flam2.cre)
  IF ~RandomNum(2,1)~ THEN BEGIN common1 SAY #4985
    IF ~~ THEN EXIT
  END
  IF ~RandomNum(2,2)~ THEN BEGIN common2 SAY #4987
    IF ~~ THEN EXIT
  END
END

APPEND flam7 // Flaming Fist Mercenary (flam7.cre)
  IF ~RandomNum(2,1)~ THEN BEGIN common1 SAY #4985
    IF ~~ THEN EXIT
  END
  IF ~RandomNum(2,2)~ THEN BEGIN common2 SAY #4987
    IF ~~ THEN EXIT
  END
END

APPEND flam8 // Flaming Fist Mercenary (flam8.cre)
  IF ~RandomNum(2,1)~ THEN BEGIN common1 SAY #4985
    IF ~~ THEN EXIT
  END
  IF ~RandomNum(2,2)~ THEN BEGIN common2 SAY #4987
    IF ~~ THEN EXIT
  END
END

APPEND flam9 // Flaming Fist Mercenary (flam9.cre)
  IF ~RandomNum(2,1)~ THEN BEGIN common1 SAY #4985
    IF ~~ THEN EXIT
  END
  IF ~RandomNum(2,2)~ THEN BEGIN common2 SAY #4987
    IF ~~ THEN EXIT
  END
END

APPEND flambg // Dilos (flam13.cre)
  IF ~True()~ THEN BEGIN common1 SAY #11078
    IF ~~ THEN EXIT
  END
END

APPEND flamgg // Flaming Fist Mercenary (flamgg.cre)
  IF ~RandomNum(2,1)~ THEN BEGIN common1 SAY #4985
    IF ~~ THEN EXIT
  END
  IF ~RandomNum(2,2)~ THEN BEGIN common2 SAY #4987
    IF ~~ THEN EXIT
  END
END

APPEND ftobe7 // Commoner (ftobe7.cre)
  IF ~True()~ THEN BEGIN common1 SAY #4904
    IF ~~ THEN EXIT
  END
END

APPEND ftowb4 // Commoner (ftowb4.cre)
  IF ~True()~ THEN BEGIN common1 SAY #11113
    IF ~~ THEN EXIT
  END
END

APPEND ftowb6 // Commoner (ftowb6.cre)
  IF ~True()~ THEN BEGIN common1 SAY #11115
    IF ~~ THEN EXIT
  END
END

APPEND ftowb7 // Commoner (ftowb7.cre)
  IF ~True()~ THEN BEGIN common1 SAY #11116
    IF ~~ THEN EXIT
  END
END

APPEND girba1 // Girl (girba1.cre)
  IF ~True()~ THEN BEGIN common1 SAY #4864
    IF ~~ THEN EXIT
  END
END

APPEND haffg2 // Halfling Woman (haffg2.cre)
  IF ~True()~ THEN BEGIN common1 SAY #11238
    IF ~~ THEN EXIT
  END
END

APPEND HALFG5 // Halfling Man (halfg5.cre)
  IF ~True()~ THEN BEGIN common1 SAY #4925
    IF ~~ THEN EXIT
  END
END

APPEND HOUSG1 // Carl (housg1.cre)
  IF ~RandomNum(2,1)~ THEN BEGIN common1 SAY #4963
    IF ~~ THEN EXIT
  END
  IF ~RandomNum(2,2)~ THEN BEGIN common2 SAY #4964
    IF ~~ THEN EXIT
  END
END

APPEND HOUSG2 // Jurgen (housg2.cre)
  IF ~RandomNum(2,1)~ THEN BEGIN common1 SAY #4963
    IF ~~ THEN EXIT
  END
  IF ~RandomNum(2,2)~ THEN BEGIN common2 SAY #4964
    IF ~~ THEN EXIT
  END
END

APPEND housg3 // Guard (housg3.cre)
  IF ~RandomNum(2,1)~ THEN BEGIN common1 SAY #4963
    IF ~~ THEN EXIT
  END
  IF ~RandomNum(2,2)~ THEN BEGIN common2 SAY #4964
    IF ~~ THEN EXIT
  END
END

APPEND housg4 // Guard (housg4.cre)
  IF ~RandomNum(2,1)~ THEN BEGIN common1 SAY #4963
    IF ~~ THEN EXIT
  END
  IF ~RandomNum(2,2)~ THEN BEGIN common2 SAY #4964
    IF ~~ THEN EXIT
  END
END

APPEND hunter // Ted (hunter.cre)
  IF ~True()~ THEN BEGIN common1 SAY #11094
    IF ~~ THEN EXIT
  END
END

APPEND iron3 // Guard (iron3.cre)
  IF ~True()~ THEN BEGIN common1 SAY #4955
    IF ~~ THEN EXIT
  END
END

APPEND ironm3 // Merchant (ironm3.cre)
  IF ~True()~ THEN BEGIN common1 SAY #4960
    IF ~~ THEN EXIT
  END
END

APPEND ironm4 // Merchant (ironm4.cre)
  IF ~True()~ THEN BEGIN common1 SAY #4962
    IF ~~ THEN EXIT
  END
END

APPEND jhasso // Jhasso (jhasso.cre)
  IF ~True()~ THEN BEGIN common1 SAY #4716
    IF ~~ THEN EXIT
  END
END

APPEND mtbe10 // Butler (mtbe10.cre)
  IF ~True()~ THEN BEGIN common1 SAY #4896
    IF ~~ THEN EXIT
  END
END

APPEND mtbe11 // Mr. Colquetle (mtbe11.cre)
  IF ~True()~ THEN BEGIN common1 SAY #4898
    IF ~~ THEN EXIT
  END
END

APPEND mtbe2 // Commoner (mtbe2.cre)
  IF ~True()~ THEN BEGIN common1 SAY #4900
    IF ~~ THEN EXIT
  END
END

APPEND MTBE3 // Commoner (mtbe3.cre)
  IF ~True()~ THEN BEGIN common1 SAY #11077
    IF ~~ THEN EXIT
  END
END

APPEND mtbe4 // Commoner (mtbe4.cre)
  IF ~True()~ THEN BEGIN common1 SAY #11078
    IF ~~ THEN EXIT
  END
END

APPEND mtbe8 // Commoner (mtbe8.cre)
  IF ~True()~ THEN BEGIN common1 SAY #11083
    IF ~~ THEN EXIT
  END
END

APPEND MTOB3 // Commoner (mtob3.cre)
  IF ~True()~ THEN BEGIN common1 SAY #11091
    IF ~~ THEN EXIT
  END
END

APPEND mtob4 // Commoner (mtob4.cre)
  IF ~True()~ THEN BEGIN common1 SAY #11093
    IF ~~ THEN EXIT
  END
END

APPEND mtob5 // Commoner (mtob5.cre)
  IF ~True()~ THEN BEGIN common1 SAY #11095
    IF ~~ THEN EXIT
  END
END

APPEND MTOB7 // Commoner (mtob7.cre)
  IF ~True()~ THEN BEGIN common1 SAY #11152
    IF ~~ THEN EXIT
  END
END

APPEND mtob8 // Commoner (mtob8.cre)
  IF ~True()~ THEN BEGIN common1 SAY #4896
    IF ~~ THEN EXIT
  END
END

APPEND MTOB9 // Commoner (mtob9.cre)
  IF ~True()~ THEN BEGIN common1 SAY #4900
    IF ~~ THEN EXIT
  END
END

APPEND MTOWN2 // Commoner (mtown2.cre)
  IF ~True()~ THEN BEGIN common1 SAY #4898
    IF ~~ THEN EXIT
  END
END

APPEND nobl12 // Nobleman (nobl12.cre)
  IF ~True()~ THEN BEGIN common1 SAY #11079
    IF ~~ THEN EXIT
  END
END

APPEND nobw3 // Noblewoman (nobw3.cre)
  IF ~True()~ THEN BEGIN common1 SAY #11120
    IF ~~ THEN EXIT
  END
END

APPEND nobw5 // Noblewoman (nobw5.cre)
  IF ~True()~ THEN BEGIN common1 SAY #11158
    IF ~~ THEN EXIT
  END
END

APPEND nobw9 // Noblewoman (nobw9.cre)
  IF ~True()~ THEN BEGIN common1 SAY #4880
    IF ~~ THEN EXIT
  END
END

APPEND poe // Poe (poe.cre)
  IF ~True()~ THEN BEGIN common1 SAY #11082
    IF ~~ THEN EXIT
  END
END

APPEND prost7 // Courtesan (prost7.cre)
  IF ~True()~ THEN BEGIN common1 SAY #4921
    IF ~~ THEN EXIT
  END
END

APPEND prost8 // Courtesan (prost8.cre)
  IF ~True()~ THEN BEGIN common1 SAY #4923
    IF ~~ THEN EXIT
  END
END

APPEND rededg // Rededge (rededg.cre)
  IF ~True()~ THEN BEGIN common1 SAY #4807
    IF ~~ THEN EXIT
  END
END

APPEND serva2 // Servant (serva2.cre)
  IF ~True()~ THEN BEGIN common1 SAY #11095
    IF ~~ THEN EXIT
  END
END

APPEND SERWEN // Serving Wench (serwen.cre)
  IF ~True()~ THEN BEGIN common1 SAY #4865
    IF ~~ THEN EXIT
  END
END

APPEND trave2 // Traveler (trave2.cre)
  IF ~True()~ THEN BEGIN common1 SAY #4896
    IF ~~ THEN EXIT
  END
END

APPEND volose // Serving Wench (volose.cre)
  IF ~True()~ THEN BEGIN common1 SAY #4787
    IF ~~ THEN EXIT
  END
END