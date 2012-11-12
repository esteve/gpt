;-------------------------------------------------------------------------------------------;
;
; Simplified Rural network:
;
;                                                                              l11
;   cb5 X---------------------------------------------------------------------------
;                                                                                  |
;                                                                                  |
;                        l10                                      sd10             |
;                       -------------------------------------------O----------------
;                       |                                                          |
;                       |                                                          |
;                       |              sd9                                         |
;   cb4 X-------------------------------O----------------                          |
;                                                       |                          |
;                                                       |                          |
;                                 l6                    |                          |
;   cb3 X----------------------------                   -------------------X cb7   O sd4
;                                   |                   |      l9                  |
;                                   |                   |                          |
;                      sd7          |          sd8      |                          |
;   cb2 X---------------O-----------------------O--------                          |
;              l7           |                                                      |
;                           |                                                      |
;                           |          sd6                                         |
;                           ------------O--------------------------X cb6           |
;                                  l9                   |                          |
;                                                       |                          |
;                                                       |                          |
;                                                       |                          |
;                                      sd5              |                          |
;              l8                   ----O----------------                          |
;               |                   |               l5                             |
;          sd11 X                   |                                              |
;               |      sd1          |          sd2                sd3              |
;   cb1 0---------------X-----------------------X------------------X----------------
;              l1                  l2                   l3                       l4
;
;-------------------------------------------------------------------------------------------;

(define (problem rs1)
  (:domain std_worst)
  (:objects cb1 cb2 cb3 cb4 cb5 cb6 cb7 sd1 sd2 sd3 sd4 sd5 sd6 sd7 sd8 sd9 sd10 sd11 - SWITCH
            l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 l11 - LINE)
  (:init (:set (opposite side1) side2)
         (:set (opposite side2) side1)
         (:set need_wait true)
         (:set done false)

         (:set (breaker cb1) true)
         (:set (breaker cb2) true)
         (:set (breaker cb3) true)
         (:set (breaker cb4) true)
         (:set (breaker cb5) true)
         (:set (breaker cb6) true)
         (:set (breaker cb7) true)

         (:set (ext l1 cb1 side2) true)
         (:set (ext l1 sd1 side1) true)
         (:set (ext l1 sd11 side1) true)
         (:set (ext l2 sd1 side2) true)
         (:set (ext l2 sd2 side1) true)
         (:set (ext l2 sd5 side1) true)
         (:set (ext l3 sd2 side2) true)
         (:set (ext l3 sd3 side1) true)
         (:set (ext l4 sd3 side2) true)
         (:set (ext l4 sd4 side1) true)
         (:set (ext l5 sd5 side2) true)
         (:set (ext l5 sd6 side2) true)
         (:set (ext l5 cb6 side2) true)
         (:set (ext l6 cb3 side2) true)
         (:set (ext l6 sd6 side1) true)
         (:set (ext l6 sd7 side2) true)
         (:set (ext l6 sd8 side1) true)
         (:set (ext l7 cb2 side2) true)
         (:set (ext l7 sd7 side1) true)
         (:set (ext l8 sd11 side2) true)
         (:set (ext l9 cb7 side1) true)
         (:set (ext l9 sd8 side2) true)
         (:set (ext l9 sd9 side1) true)
         (:set (ext l10 sd9 side2) true)
         (:set (ext l10 sd10 side1) true)
         (:set (ext l10 cb4 side2) true)
         (:set (ext l11 cb5 side2) true)
         (:set (ext l11 sd4 side2) true)
         (:set (ext l11 sd10 side2) true)

         (:set (closed cb2) true)
         (:set (closed cb3) true)
         (:set (closed cb4) true)
         (:set (closed cb5) true)
         (:set (closed cb6) true)
         (:set (closed cb7) true)
         (:set (closed sd1) true)
         (:set (closed sd2) true)
         (:set (closed sd3) true)
         (:set (closed sd11) true)

         (:foreach ?x - SWITCH
            (:set (fd_mode ?x) ok)
            (:set (pd_ok ?x) true)
            (:set (ac_mode ?x) ok)
         )

         (:set (faulty l8) :in {true false})
  )
  (:goal (= done true))
)

(define (problem rs2)
  (:domain std_worst)
  (:objects cb1 cb2 cb3 cb4 cb5 cb6 cb7 sd1 sd2 sd3 sd4 sd5 sd6 sd7 sd8 sd9 sd10 sd11 - SWITCH
            l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 l11 - LINE)
  (:init (:set (opposite side1) side2)
         (:set (opposite side2) side1)
         (:set need_wait true)
         (:set done false)

         (:set (breaker cb1) true)
         (:set (breaker cb2) true)
         (:set (breaker cb3) true)
         (:set (breaker cb4) true)
         (:set (breaker cb5) true)
         (:set (breaker cb6) true)
         (:set (breaker cb7) true)

         (:set (ext l1 cb1 side2) true)
         (:set (ext l1 sd1 side1) true)
         (:set (ext l1 sd11 side1) true)
         (:set (ext l2 sd1 side2) true)
         (:set (ext l2 sd2 side1) true)
         (:set (ext l2 sd5 side1) true)
         (:set (ext l3 sd2 side2) true)
         (:set (ext l3 sd3 side1) true)
         (:set (ext l4 sd3 side2) true)
         (:set (ext l4 sd4 side1) true)
         (:set (ext l5 sd5 side2) true)
         (:set (ext l5 sd6 side2) true)
         (:set (ext l5 cb6 side2) true)
         (:set (ext l6 cb3 side2) true)
         (:set (ext l6 sd6 side1) true)
         (:set (ext l6 sd7 side2) true)
         (:set (ext l6 sd8 side1) true)
         (:set (ext l7 cb2 side2) true)
         (:set (ext l7 sd7 side1) true)
         (:set (ext l8 sd11 side2) true)
         (:set (ext l9 cb7 side1) true)
         (:set (ext l9 sd8 side2) true)
         (:set (ext l9 sd9 side1) true)
         (:set (ext l10 sd9 side2) true)
         (:set (ext l10 sd10 side1) true)
         (:set (ext l10 cb4 side2) true)
         (:set (ext l11 cb5 side2) true)
         (:set (ext l11 sd4 side2) true)
         (:set (ext l11 sd10 side2) true)

         (:set (closed cb2) true)
         (:set (closed cb3) true)
         (:set (closed cb4) true)
         (:set (closed cb5) true)
         (:set (closed cb6) true)
         (:set (closed cb7) true)
         (:set (closed sd1) true)
         (:set (closed sd2) true)
         (:set (closed sd3) true)
         (:set (closed sd11) true)

         (:foreach ?x - SWITCH
            (:set (fd_mode ?x) ok)
            (:set (pd_ok ?x) true)
            (:set (ac_mode ?x) ok)
         )

         (:set (faulty l3) :in {true false})
         (:set (faulty l8) :in {true false})
  )
  (:goal (= done true))
)

(define (problem rs3)
  (:domain std_worst)
  (:objects cb1 cb2 cb3 cb4 cb5 cb6 cb7 sd1 sd2 sd3 sd4 sd5 sd6 sd7 sd8 sd9 sd10 sd11 - SWITCH
            l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 l11 - LINE)
  (:init (:set (opposite side1) side2)
         (:set (opposite side2) side1)
         (:set need_wait true)
         (:set done false)

         (:set (breaker cb1) true)
         (:set (breaker cb2) true)
         (:set (breaker cb3) true)
         (:set (breaker cb4) true)
         (:set (breaker cb5) true)
         (:set (breaker cb6) true)
         (:set (breaker cb7) true)

         (:set (ext l1 cb1 side2) true)
         (:set (ext l1 sd1 side1) true)
         (:set (ext l1 sd11 side1) true)
         (:set (ext l2 sd1 side2) true)
         (:set (ext l2 sd2 side1) true)
         (:set (ext l2 sd5 side1) true)
         (:set (ext l3 sd2 side2) true)
         (:set (ext l3 sd3 side1) true)
         (:set (ext l4 sd3 side2) true)
         (:set (ext l4 sd4 side1) true)
         (:set (ext l5 sd5 side2) true)
         (:set (ext l5 sd6 side2) true)
         (:set (ext l5 cb6 side2) true)
         (:set (ext l6 cb3 side2) true)
         (:set (ext l6 sd6 side1) true)
         (:set (ext l6 sd7 side2) true)
         (:set (ext l6 sd8 side1) true)
         (:set (ext l7 cb2 side2) true)
         (:set (ext l7 sd7 side1) true)
         (:set (ext l8 sd11 side2) true)
         (:set (ext l9 cb7 side1) true)
         (:set (ext l9 sd8 side2) true)
         (:set (ext l9 sd9 side1) true)
         (:set (ext l10 sd9 side2) true)
         (:set (ext l10 sd10 side1) true)
         (:set (ext l10 cb4 side2) true)
         (:set (ext l11 cb5 side2) true)
         (:set (ext l11 sd4 side2) true)
         (:set (ext l11 sd10 side2) true)

         (:set (closed cb2) true)
         (:set (closed cb3) true)
         (:set (closed cb4) true)
         (:set (closed cb5) true)
         (:set (closed cb6) true)
         (:set (closed cb7) true)
         (:set (closed sd1) true)
         (:set (closed sd2) true)
         (:set (closed sd3) true)
         (:set (closed sd11) true)

         (:foreach ?x - SWITCH
            (:set (fd_mode ?x) ok)
            (:set (pd_ok ?x) true)
            (:set (ac_mode ?x) ok)
         )

         (:set (pd_ok sd11) :in {true false})
         (:set (faulty l3) :in {true false})
         (:set (faulty l8) :in {true false})
  )
  (:goal (= done true))
)

(define (problem rs4)
  (:domain std_worst)
  (:objects cb1 cb2 cb3 cb4 cb5 cb6 cb7 sd1 sd2 sd3 sd4 sd5 sd6 sd7 sd8 sd9 sd10 sd11 - SWITCH
            l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 l11 - LINE)
  (:init (:set (opposite side1) side2)
         (:set (opposite side2) side1)
         (:set need_wait true)
         (:set done false)

         (:set (breaker cb1) true)
         (:set (breaker cb2) true)
         (:set (breaker cb3) true)
         (:set (breaker cb4) true)
         (:set (breaker cb5) true)
         (:set (breaker cb6) true)
         (:set (breaker cb7) true)

         (:set (ext l1 cb1 side2) true)
         (:set (ext l1 sd1 side1) true)
         (:set (ext l1 sd11 side1) true)
         (:set (ext l2 sd1 side2) true)
         (:set (ext l2 sd2 side1) true)
         (:set (ext l2 sd5 side1) true)
         (:set (ext l3 sd2 side2) true)
         (:set (ext l3 sd3 side1) true)
         (:set (ext l4 sd3 side2) true)
         (:set (ext l4 sd4 side1) true)
         (:set (ext l5 sd5 side2) true)
         (:set (ext l5 sd6 side2) true)
         (:set (ext l5 cb6 side2) true)
         (:set (ext l6 cb3 side2) true)
         (:set (ext l6 sd6 side1) true)
         (:set (ext l6 sd7 side2) true)
         (:set (ext l6 sd8 side1) true)
         (:set (ext l7 cb2 side2) true)
         (:set (ext l7 sd7 side1) true)
         (:set (ext l8 sd11 side2) true)
         (:set (ext l9 cb7 side1) true)
         (:set (ext l9 sd8 side2) true)
         (:set (ext l9 sd9 side1) true)
         (:set (ext l10 sd9 side2) true)
         (:set (ext l10 sd10 side1) true)
         (:set (ext l10 cb4 side2) true)
         (:set (ext l11 cb5 side2) true)
         (:set (ext l11 sd4 side2) true)
         (:set (ext l11 sd10 side2) true)

         (:set (closed cb1) true)
         (:set (closed cb2) true)
         (:set (closed cb3) true)
         (:set (closed cb4) true)
         (:set (closed cb5) true)
         (:set (closed cb6) true)
         (:set (closed cb7) true)
         (:set (closed sd1) true)
         (:set (closed sd2) true)
         (:set (closed sd3) true)
         (:set (closed sd11) true)

         (:foreach ?x - SWITCH
            (:set (fd_mode ?x) ok)
            (:set (pd_ok ?x) true)
            (:set (ac_mode ?x) ok)
         )

         (:set (ac_mode sd11) :in {ok out liar})
         (:set (pd_ok sd11) :in {true false})
         (:set (faulty l3) :in {true false})
         (:set (faulty l8) :in {true false})
  )
  (:goal (= done true))
)

(define (problem rs5)
  (:domain std_worst)
  (:objects cb1 cb2 cb3 cb4 cb5 cb6 cb7 sd1 sd2 sd3 sd4 sd5 sd6 sd7 sd8 sd9 sd10 sd11 - SWITCH
            l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 l11 - LINE)
  (:init (:set (opposite side1) side2)
         (:set (opposite side2) side1)
         (:set need_wait true)
         (:set done false)

         (:set (breaker cb1) true)
         (:set (breaker cb2) true)
         (:set (breaker cb3) true)
         (:set (breaker cb4) true)
         (:set (breaker cb5) true)
         (:set (breaker cb6) true)
         (:set (breaker cb7) true)

         (:set (ext l1 cb1 side2) true)
         (:set (ext l1 sd1 side1) true)
         (:set (ext l1 sd11 side1) true)
         (:set (ext l2 sd1 side2) true)
         (:set (ext l2 sd2 side1) true)
         (:set (ext l2 sd5 side1) true)
         (:set (ext l3 sd2 side2) true)
         (:set (ext l3 sd3 side1) true)
         (:set (ext l4 sd3 side2) true)
         (:set (ext l4 sd4 side1) true)
         (:set (ext l5 sd5 side2) true)
         (:set (ext l5 sd6 side2) true)
         (:set (ext l5 cb6 side2) true)
         (:set (ext l6 cb3 side2) true)
         (:set (ext l6 sd6 side1) true)
         (:set (ext l6 sd7 side2) true)
         (:set (ext l6 sd8 side1) true)
         (:set (ext l7 cb2 side2) true)
         (:set (ext l7 sd7 side1) true)
         (:set (ext l8 sd11 side2) true)
         (:set (ext l9 cb7 side1) true)
         (:set (ext l9 sd8 side2) true)
         (:set (ext l9 sd9 side1) true)
         (:set (ext l10 sd9 side2) true)
         (:set (ext l10 sd10 side1) true)
         (:set (ext l10 cb4 side2) true)
         (:set (ext l11 cb5 side2) true)
         (:set (ext l11 sd4 side2) true)
         (:set (ext l11 sd10 side2) true)

         (:set (closed cb2) true)
         (:set (closed cb3) true)
         (:set (closed cb4) true)
         (:set (closed cb5) true)
         (:set (closed cb6) true)
         (:set (closed cb7) true)
         (:set (closed sd1) true)
         (:set (closed sd2) true)
         (:set (closed sd3) true)
         (:set (closed sd11) true)

         (:foreach ?x - SWITCH
            (:set (fd_mode ?x) ok)
            (:set (pd_ok ?x) true)
            (:set (ac_mode ?x) ok)
         )

         (:set (fd_mode sd11) :in {ok out liar})
         (:set (ac_mode sd11) :in {ok out liar})
         (:set (pd_ok sd11) :in {true false})
         (:set (faulty l3) :in {true false})
         (:set (faulty l8) :in {true false})
  )
  (:goal (= done true))
)

(define (problem rs6)
  (:domain std_worst)
  (:objects cb1 cb2 cb3 cb4 cb5 cb6 cb7 sd1 sd2 sd3 sd4 sd5 sd6 sd7 sd8 sd9 sd10 sd11 - SWITCH
            l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 l11 - LINE)
  (:init (:set (opposite side1) side2)
         (:set (opposite side2) side1)
         (:set need_wait true)
         (:set done false)

         (:set (breaker cb1) true)
         (:set (breaker cb2) true)
         (:set (breaker cb3) true)
         (:set (breaker cb4) true)
         (:set (breaker cb5) true)
         (:set (breaker cb6) true)
         (:set (breaker cb7) true)

         (:set (ext l1 cb1 side2) true)
         (:set (ext l1 sd1 side1) true)
         (:set (ext l1 sd11 side1) true)
         (:set (ext l2 sd1 side2) true)
         (:set (ext l2 sd2 side1) true)
         (:set (ext l2 sd5 side1) true)
         (:set (ext l3 sd2 side2) true)
         (:set (ext l3 sd3 side1) true)
         (:set (ext l4 sd3 side2) true)
         (:set (ext l4 sd4 side1) true)
         (:set (ext l5 sd5 side2) true)
         (:set (ext l5 sd6 side2) true)
         (:set (ext l5 cb6 side2) true)
         (:set (ext l6 cb3 side2) true)
         (:set (ext l6 sd6 side1) true)
         (:set (ext l6 sd7 side2) true)
         (:set (ext l6 sd8 side1) true)
         (:set (ext l7 cb2 side2) true)
         (:set (ext l7 sd7 side1) true)
         (:set (ext l8 sd11 side2) true)
         (:set (ext l9 cb7 side1) true)
         (:set (ext l9 sd8 side2) true)
         (:set (ext l9 sd9 side1) true)
         (:set (ext l10 sd9 side2) true)
         (:set (ext l10 sd10 side1) true)
         (:set (ext l10 cb4 side2) true)
         (:set (ext l11 cb5 side2) true)
         (:set (ext l11 sd4 side2) true)
         (:set (ext l11 sd10 side2) true)

         (:set (closed cb2) true)
         (:set (closed cb3) true)
         (:set (closed cb4) true)
         (:set (closed cb5) true)
         (:set (closed cb6) true)
         (:set (closed cb7) true)
         (:set (closed sd1) true)
         (:set (closed sd2) true)
         (:set (closed sd3) true)
         (:set (closed sd11) true)

         (:foreach ?x - SWITCH
            (:set (fd_mode ?x) ok)
            (:set (pd_ok ?x) true)
            (:set (ac_mode ?x) ok)
         )

         (:set (fd_mode sd3) :in {ok out liar})
         (:set (fd_mode sd11) :in {ok out liar})
         (:set (ac_mode sd11) :in {ok out liar})
         (:set (pd_ok sd11) :in {true false})
         (:set (faulty l3) :in {true false})
         (:set (faulty l8) :in {true false})
  )
  (:goal (= done true))
)

(define (problem rs7)
  (:domain std_worst)
  (:objects cb1 cb2 cb3 cb4 cb5 cb6 cb7 sd1 sd2 sd3 sd4 sd5 sd6 sd7 sd8 sd9 sd10 sd11 - SWITCH
            l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 l11 - LINE)
  (:init (:set (opposite side1) side2)
         (:set (opposite side2) side1)
         (:set need_wait true)
         (:set done false)

         (:set (breaker cb1) true)
         (:set (breaker cb2) true)
         (:set (breaker cb3) true)
         (:set (breaker cb4) true)
         (:set (breaker cb5) true)
         (:set (breaker cb6) true)
         (:set (breaker cb7) true)

         (:set (ext l1 cb1 side2) true)
         (:set (ext l1 sd1 side1) true)
         (:set (ext l1 sd11 side1) true)
         (:set (ext l2 sd1 side2) true)
         (:set (ext l2 sd2 side1) true)
         (:set (ext l2 sd5 side1) true)
         (:set (ext l3 sd2 side2) true)
         (:set (ext l3 sd3 side1) true)
         (:set (ext l4 sd3 side2) true)
         (:set (ext l4 sd4 side1) true)
         (:set (ext l5 sd5 side2) true)
         (:set (ext l5 sd6 side2) true)
         (:set (ext l5 cb6 side2) true)
         (:set (ext l6 cb3 side2) true)
         (:set (ext l6 sd6 side1) true)
         (:set (ext l6 sd7 side2) true)
         (:set (ext l6 sd8 side1) true)
         (:set (ext l7 cb2 side2) true)
         (:set (ext l7 sd7 side1) true)
         (:set (ext l8 sd11 side2) true)
         (:set (ext l9 cb7 side1) true)
         (:set (ext l9 sd8 side2) true)
         (:set (ext l9 sd9 side1) true)
         (:set (ext l10 sd9 side2) true)
         (:set (ext l10 sd10 side1) true)
         (:set (ext l10 cb4 side2) true)
         (:set (ext l11 cb5 side2) true)
         (:set (ext l11 sd4 side2) true)
         (:set (ext l11 sd10 side2) true)

         (:set (closed cb2) true)
         (:set (closed cb3) true)
         (:set (closed cb4) true)
         (:set (closed cb5) true)
         (:set (closed cb6) true)
         (:set (closed cb7) true)
         (:set (closed sd1) true)
         (:set (closed sd2) true)
         (:set (closed sd3) true)
         (:set (closed sd11) true)

         (:foreach ?x - SWITCH
            (:set (fd_mode ?x) ok)
            (:set (pd_ok ?x) true)
            (:set (ac_mode ?x) ok)
         )

         (:set (fd_mode sd2) :in {ok out liar})
         (:set (fd_mode sd3) :in {ok out liar})
         (:set (fd_mode sd11) :in {ok out liar})
         (:set (ac_mode sd11) :in {ok out liar})
         (:set (pd_ok sd11) :in {true false})
         (:set (faulty l3) :in {true false})
         (:set (faulty l8) :in {true false})
  )
  (:goal (= done true))
)

(define (problem rs8)
  (:domain std_worst)
  (:objects cb1 cb2 cb3 cb4 cb5 cb6 cb7 sd1 sd2 sd3 sd4 sd5 sd6 sd7 sd8 sd9 sd10 sd11 - SWITCH
            l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 l11 - LINE)
  (:init (:set (opposite side1) side2)
         (:set (opposite side2) side1)
         (:set need_wait true)
         (:set done false)

         (:set (breaker cb1) true)
         (:set (breaker cb2) true)
         (:set (breaker cb3) true)
         (:set (breaker cb4) true)
         (:set (breaker cb5) true)
         (:set (breaker cb6) true)
         (:set (breaker cb7) true)

         (:set (ext l1 cb1 side2) true)
         (:set (ext l1 sd1 side1) true)
         (:set (ext l1 sd11 side1) true)
         (:set (ext l2 sd1 side2) true)
         (:set (ext l2 sd2 side1) true)
         (:set (ext l2 sd5 side1) true)
         (:set (ext l3 sd2 side2) true)
         (:set (ext l3 sd3 side1) true)
         (:set (ext l4 sd3 side2) true)
         (:set (ext l4 sd4 side1) true)
         (:set (ext l5 sd5 side2) true)
         (:set (ext l5 sd6 side2) true)
         (:set (ext l5 cb6 side2) true)
         (:set (ext l6 cb3 side2) true)
         (:set (ext l6 sd6 side1) true)
         (:set (ext l6 sd7 side2) true)
         (:set (ext l6 sd8 side1) true)
         (:set (ext l7 cb2 side2) true)
         (:set (ext l7 sd7 side1) true)
         (:set (ext l8 sd11 side2) true)
         (:set (ext l9 cb7 side1) true)
         (:set (ext l9 sd8 side2) true)
         (:set (ext l9 sd9 side1) true)
         (:set (ext l10 sd9 side2) true)
         (:set (ext l10 sd10 side1) true)
         (:set (ext l10 cb4 side2) true)
         (:set (ext l11 cb5 side2) true)
         (:set (ext l11 sd4 side2) true)
         (:set (ext l11 sd10 side2) true)

         (:set (closed cb2) true)
         (:set (closed cb3) true)
         (:set (closed cb4) true)
         (:set (closed cb5) true)
         (:set (closed cb6) true)
         (:set (closed cb7) true)
         (:set (closed sd1) true)
         (:set (closed sd2) true)
         (:set (closed sd3) true)
         (:set (closed sd11) true)

         (:foreach ?x - SWITCH
            (:set (fd_mode ?x) ok)
            (:set (pd_ok ?x) true)
            (:set (ac_mode ?x) ok)
         )

         (:set (fd_mode sd1) :in {ok out liar})
         (:set (fd_mode sd2) :in {ok out liar})
         (:set (fd_mode sd3) :in {ok out liar})
         (:set (fd_mode sd11) :in {ok out liar})
         (:set (ac_mode sd11) :in {ok out liar})
         (:set (pd_ok sd11) :in {true false})
         (:set (faulty l3) :in {true false})
         (:set (faulty l8) :in {true false})
  )
  (:goal (= done true))
)
