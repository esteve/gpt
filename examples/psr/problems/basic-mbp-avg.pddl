;-------------------------------------------------------------------------;
;
; Basic network:
;
;                        l5                sd4
;   cb2 X-----------------------------------O
;                                           |
;                                           | l4
;            l1          l2          l3     |
;   cb1 X-----------X-----------O-----------X
;                  sd1         sd2         sd3
;
; Problems:
;
;   bn : problem with at most n faulty lines
;
;-------------------------------------------------------------------------;

(define (problem b1)
  (:domain mbp_avg)
  (:objects cb1 cb2 sd1 sd2 sd3 sd4 - SWITCH
            l1 l2 l3 l4 l5 - LINE)
  (:init (:set (opposite side1) side2)
         (:set (opposite side2) side1)
         (:set need_wait true)

         (:set (breaker cb1) true)
         (:set (breaker cb2) true)

         (:set (ext l1 cb1 side2) true)
         (:set (ext l1 sd1 side1) true)
         (:set (ext l2 sd1 side2) true)
         (:set (ext l2 sd2 side1) true)
         (:set (ext l3 sd2 side2) true)
         (:set (ext l3 sd3 side1) true)
         (:set (ext l4 sd3 side2) true)
         (:set (ext l4 sd4 side2) true)
         (:set (ext l5 sd4 side1) true)
         (:set (ext l5 cb2 side2) true)

         (:set (closed cb1) true)
         (:set (closed cb2) true)
         (:set (closed sd1) true)
         (:set (closed sd2) false)
         (:set (closed sd3) true)
         (:set (closed sd4) false)

         (:foreach ?x - SWITCH
            (:set (fd_mode ?x) ok)
            (:set (pd_ok ?x) true)
            (:set (ac_mode ?x) ok)
         )

         (:foreach ?l - LINE
            (:set (faulty ?l) :in { true false })
         )

         (<= (:sum ?l - LINE (:if (faulty ?l) 1 0)) 1)
  )
  (:goal (:and (= need_wait false)
               (:forall ?l - LINE (:or (:not (feedable_line ?l)) (fed_line ?l)))))
)

(define (problem b2)
  (:domain mbp_avg)
  (:objects cb1 cb2 sd1 sd2 sd3 sd4 - SWITCH
            l1 l2 l3 l4 l5 - LINE)
  (:init (:set (opposite side1) side2)
         (:set (opposite side2) side1)
         (:set need_wait true)

         (:set (breaker cb1) true)
         (:set (breaker cb2) true)

         (:set (ext l1 cb1 side2) true)
         (:set (ext l1 sd1 side1) true)
         (:set (ext l2 sd1 side2) true)
         (:set (ext l2 sd2 side1) true)
         (:set (ext l3 sd2 side2) true)
         (:set (ext l3 sd3 side1) true)
         (:set (ext l4 sd3 side2) true)
         (:set (ext l4 sd4 side2) true)
         (:set (ext l5 sd4 side1) true)
         (:set (ext l5 cb2 side2) true)

         (:set (closed cb1) true)
         (:set (closed cb2) true)
         (:set (closed sd1) true)
         (:set (closed sd2) false)
         (:set (closed sd3) true)
         (:set (closed sd4) false)

         (:foreach ?x - SWITCH
            (:set (fd_mode ?x) ok)
            (:set (pd_ok ?x) true)
            (:set (ac_mode ?x) ok)
         )

         (:foreach ?l - LINE
            (:set (faulty ?l) :in { true false })
         )

         (<= (:sum ?l - LINE (:if (faulty ?l) 1 0)) 2)
  )
  (:goal (:and (= need_wait false)
               (:forall ?l - LINE (:or (:not (feedable_line ?l)) (fed_line ?l)))))
)

(define (problem b3)
  (:domain mbp_avg)
  (:objects cb1 cb2 sd1 sd2 sd3 sd4 - SWITCH
            l1 l2 l3 l4 l5 - LINE)
  (:init (:set (opposite side1) side2)
         (:set (opposite side2) side1)
         (:set need_wait true)

         (:set (breaker cb1) true)
         (:set (breaker cb2) true)

         (:set (ext l1 cb1 side2) true)
         (:set (ext l1 sd1 side1) true)
         (:set (ext l2 sd1 side2) true)
         (:set (ext l2 sd2 side1) true)
         (:set (ext l3 sd2 side2) true)
         (:set (ext l3 sd3 side1) true)
         (:set (ext l4 sd3 side2) true)
         (:set (ext l4 sd4 side2) true)
         (:set (ext l5 sd4 side1) true)
         (:set (ext l5 cb2 side2) true)

         (:set (closed cb1) true)
         (:set (closed cb2) true)
         (:set (closed sd1) true)
         (:set (closed sd2) false)
         (:set (closed sd3) true)
         (:set (closed sd4) false)

         (:foreach ?x - SWITCH
            (:set (fd_mode ?x) ok)
            (:set (pd_ok ?x) true)
            (:set (ac_mode ?x) ok)
         )

         (:foreach ?l - LINE
            (:set (faulty ?l) :in { true false })
         )

         (<= (:sum ?l - LINE (:if (faulty ?l) 1 0)) 3)
  )
  (:goal (:and (= need_wait false)
               (:forall ?l - LINE (:or (:not (feedable_line ?l)) (fed_line ?l)))))
)

(define (problem b4)
  (:domain mbp_avg)
  (:objects cb1 cb2 sd1 sd2 sd3 sd4 - SWITCH
            l1 l2 l3 l4 l5 - LINE)
  (:init (:set (opposite side1) side2)
         (:set (opposite side2) side1)
         (:set need_wait true)

         (:set (breaker cb1) true)
         (:set (breaker cb2) true)

         (:set (ext l1 cb1 side2) true)
         (:set (ext l1 sd1 side1) true)
         (:set (ext l2 sd1 side2) true)
         (:set (ext l2 sd2 side1) true)
         (:set (ext l3 sd2 side2) true)
         (:set (ext l3 sd3 side1) true)
         (:set (ext l4 sd3 side2) true)
         (:set (ext l4 sd4 side2) true)
         (:set (ext l5 sd4 side1) true)
         (:set (ext l5 cb2 side2) true)

         (:set (closed cb1) true)
         (:set (closed cb2) true)
         (:set (closed sd1) true)
         (:set (closed sd2) false)
         (:set (closed sd3) true)
         (:set (closed sd4) false)

         (:foreach ?x - SWITCH
            (:set (fd_mode ?x) ok)
            (:set (pd_ok ?x) true)
            (:set (ac_mode ?x) ok)
         )

         (:foreach ?l - LINE
            (:set (faulty ?l) :in { true false })
         )

         (<= (:sum ?l - LINE (:if (faulty ?l) 1 0)) 4)
  )
  (:goal (:and (= need_wait false)
               (:forall ?l - LINE (:or (:not (feedable_line ?l)) (fed_line ?l)))))
)

(define (problem b5)
  (:domain mbp_avg)
  (:objects cb1 cb2 sd1 sd2 sd3 sd4 - SWITCH
            l1 l2 l3 l4 l5 - LINE)
  (:init (:set (opposite side1) side2)
         (:set (opposite side2) side1)
         (:set need_wait true)

         (:set (breaker cb1) true)
         (:set (breaker cb2) true)

         (:set (ext l1 cb1 side2) true)
         (:set (ext l1 sd1 side1) true)
         (:set (ext l2 sd1 side2) true)
         (:set (ext l2 sd2 side1) true)
         (:set (ext l3 sd2 side2) true)
         (:set (ext l3 sd3 side1) true)
         (:set (ext l4 sd3 side2) true)
         (:set (ext l4 sd4 side2) true)
         (:set (ext l5 sd4 side1) true)
         (:set (ext l5 cb2 side2) true)

         (:set (closed cb1) true)
         (:set (closed cb2) true)
         (:set (closed sd1) true)
         (:set (closed sd2) false)
         (:set (closed sd3) true)
         (:set (closed sd4) false)

         (:foreach ?x - SWITCH
            (:set (fd_mode ?x) ok)
            (:set (pd_ok ?x) true)
            (:set (ac_mode ?x) ok)
         )

         (:foreach ?l - LINE
            (:set (faulty ?l) :in { true false })
         )

         (<= (:sum ?l - LINE (:if (faulty ?l) 1 0)) 5)
  )
  (:goal (:and (= need_wait false)
               (:forall ?l - LINE (:or (:not (feedable_line ?l)) (fed_line ?l)))))
)
