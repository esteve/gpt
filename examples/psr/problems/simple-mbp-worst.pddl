;-------------------------------------------------------------------------;
;
; Simple network:
;
;	cb3 X-----------------------------------------------0 sd3 
;	                   l7                               |     
;	                                                    |     
;	                                                    |     
;	           sd4         l6          sd2              |     
;	cb2 X-------X-----------------------X---------------- l4  
;	       l5              |                            |     
;	                       |                            |     
;	                       0 sd7                        |     
;	                       |                            |     
;	                       |                            |     
;	cb1 X-------X-----------------------0---------------X sd1 
;	       l1  sd6        l2           sd5     l3             
;                                       
; Problems:
;
;   sn : problem with exactly n faulty lines
;
;-------------------------------------------------------------------------;

(define (problem s0)
  (:domain mbp_worst)
  (:objects l1 l2 l3 l4 l5 l6 l7 - LINE
            cb1 cb2 cb3 sd1 sd2 sd3 sd4 sd5 sd6 sd7 - SWITCH)
  (:init (:set (opposite side1) side2)
         (:set (opposite side2) side1)
         (:set need_wait true)

         (:set (breaker cb1) true)
         (:set (breaker cb2) true)
         (:set (breaker cb3) true)

         (:set (ext l1 cb1 side2) true)
         (:set (ext l1 sd6 side1) true)
         (:set (ext l2 sd6 side2) true)
         (:set (ext l2 sd5 side1) true)
         (:set (ext l2 sd7 side2) true)
         (:set (ext l3 sd5 side2) true)
         (:set (ext l3 sd1 side1) true)
         (:set (ext l4 sd1 side2) true)
         (:set (ext l4 sd2 side2) true)
         (:set (ext l4 sd3 side2) true)
         (:set (ext l5 cb2 side2) true)
         (:set (ext l5 sd4 side1) true)
         (:set (ext l6 sd2 side1) true)
         (:set (ext l6 sd4 side2) true)
         (:set (ext l6 sd7 side1) true)
         (:set (ext l7 cb3 side2) true)
         (:set (ext l7 sd3 side1) true)

         (:foreach ?x - SWITCH
            (:set (closed ?x) true)
            (:set (fd_mode ?x) ok)
            (:set (pd_ok ?x) true)
            (:set (ac_mode ?x) ok)
         )

         (:set (closed sd3) false)
         (:set (closed sd5) false)
         (:set (closed sd7) false)

         (:foreach ?l - LINE
            (:set (faulty ?l) :in { true false })
         )

         (= (:sum ?l - LINE (:if (faulty ?l) 1 0)) 0)
  )
  (:goal (:and (= need_wait false)
               (:forall ?l - LINE (:or (:not (feedable_line ?l)) (fed_line ?l)))))
)

(define (problem s1)
  (:domain mbp_worst)
  (:objects l1 l2 l3 l4 l5 l6 l7 - LINE
            cb1 cb2 cb3 sd1 sd2 sd3 sd4 sd5 sd6 sd7 - SWITCH)
  (:init (:set (opposite side1) side2)
         (:set (opposite side2) side1)
         (:set need_wait true)

         (:set (breaker cb1) true)
         (:set (breaker cb2) true)
         (:set (breaker cb3) true)

         (:set (ext l1 cb1 side2) true)
         (:set (ext l1 sd6 side1) true)
         (:set (ext l2 sd6 side2) true)
         (:set (ext l2 sd5 side1) true)
         (:set (ext l2 sd7 side2) true)
         (:set (ext l3 sd5 side2) true)
         (:set (ext l3 sd1 side1) true)
         (:set (ext l4 sd1 side2) true)
         (:set (ext l4 sd2 side2) true)
         (:set (ext l4 sd3 side2) true)
         (:set (ext l5 cb2 side2) true)
         (:set (ext l5 sd4 side1) true)
         (:set (ext l6 sd2 side1) true)
         (:set (ext l6 sd4 side2) true)
         (:set (ext l6 sd7 side1) true)
         (:set (ext l7 cb3 side2) true)
         (:set (ext l7 sd3 side1) true)

         (:foreach ?x - SWITCH
            (:set (closed ?x) true)
            (:set (fd_mode ?x) ok)
            (:set (pd_ok ?x) true)
            (:set (ac_mode ?x) ok)
         )

         (:set (closed sd3) false)
         (:set (closed sd5) false)
         (:set (closed sd7) false)

         (:foreach ?l - LINE
            (:set (faulty ?l) :in { true false })
         )

         (= (:sum ?l - LINE (:if (faulty ?l) 1 0)) 1)
  )
  (:goal (:and (= need_wait false)
               (:forall ?l - LINE (:or (:not (feedable_line ?l)) (fed_line ?l)))))
)

(define (problem s2)
  (:domain mbp_worst)
  (:objects l1 l2 l3 l4 l5 l6 l7 - LINE
            cb1 cb2 cb3 sd1 sd2 sd3 sd4 sd5 sd6 sd7 - SWITCH)
  (:init (:set (opposite side1) side2)
         (:set (opposite side2) side1)
         (:set need_wait true)

         (:set (breaker cb1) true)
         (:set (breaker cb2) true)
         (:set (breaker cb3) true)

         (:set (ext l1 cb1 side2) true)
         (:set (ext l1 sd6 side1) true)
         (:set (ext l2 sd6 side2) true)
         (:set (ext l2 sd5 side1) true)
         (:set (ext l2 sd7 side2) true)
         (:set (ext l3 sd5 side2) true)
         (:set (ext l3 sd1 side1) true)
         (:set (ext l4 sd1 side2) true)
         (:set (ext l4 sd2 side2) true)
         (:set (ext l4 sd3 side2) true)
         (:set (ext l5 cb2 side2) true)
         (:set (ext l5 sd4 side1) true)
         (:set (ext l6 sd2 side1) true)
         (:set (ext l6 sd4 side2) true)
         (:set (ext l6 sd7 side1) true)
         (:set (ext l7 cb3 side2) true)
         (:set (ext l7 sd3 side1) true)

         (:foreach ?x - SWITCH
            (:set (closed ?x) true)
            (:set (fd_mode ?x) ok)
            (:set (pd_ok ?x) true)
            (:set (ac_mode ?x) ok)
         )

         (:set (closed sd3) false)
         (:set (closed sd5) false)
         (:set (closed sd7) false)

         (:foreach ?l - LINE
            (:set (faulty ?l) :in { true false })
         )

         (= (:sum ?l - LINE (:if (faulty ?l) 1 0)) 2)
  )
  (:goal (:and (= need_wait false)
               (:forall ?l - LINE (:or (:not (feedable_line ?l)) (fed_line ?l)))))
)

(define (problem s3)
  (:domain mbp_worst)
  (:objects l1 l2 l3 l4 l5 l6 l7 - LINE
            cb1 cb2 cb3 sd1 sd2 sd3 sd4 sd5 sd6 sd7 - SWITCH)
  (:init (:set (opposite side1) side2)
         (:set (opposite side2) side1)
         (:set need_wait true)

         (:set (breaker cb1) true)
         (:set (breaker cb2) true)
         (:set (breaker cb3) true)

         (:set (ext l1 cb1 side2) true)
         (:set (ext l1 sd6 side1) true)
         (:set (ext l2 sd6 side2) true)
         (:set (ext l2 sd5 side1) true)
         (:set (ext l2 sd7 side2) true)
         (:set (ext l3 sd5 side2) true)
         (:set (ext l3 sd1 side1) true)
         (:set (ext l4 sd1 side2) true)
         (:set (ext l4 sd2 side2) true)
         (:set (ext l4 sd3 side2) true)
         (:set (ext l5 cb2 side2) true)
         (:set (ext l5 sd4 side1) true)
         (:set (ext l6 sd2 side1) true)
         (:set (ext l6 sd4 side2) true)
         (:set (ext l6 sd7 side1) true)
         (:set (ext l7 cb3 side2) true)
         (:set (ext l7 sd3 side1) true)

         (:foreach ?x - SWITCH
            (:set (closed ?x) true)
            (:set (fd_mode ?x) ok)
            (:set (pd_ok ?x) true)
            (:set (ac_mode ?x) ok)
         )

         (:set (closed sd3) false)
         (:set (closed sd5) false)
         (:set (closed sd7) false)

         (:foreach ?l - LINE
            (:set (faulty ?l) :in { true false })
         )

         (= (:sum ?l - LINE (:if (faulty ?l) 1 0)) 3)
  )
  (:goal (:and (= need_wait false)
               (:forall ?l - LINE (:or (:not (feedable_line ?l)) (fed_line ?l)))))
)

(define (problem s4)
  (:domain mbp_worst)
  (:objects l1 l2 l3 l4 l5 l6 l7 - LINE
            cb1 cb2 cb3 sd1 sd2 sd3 sd4 sd5 sd6 sd7 - SWITCH)
  (:init (:set (opposite side1) side2)
         (:set (opposite side2) side1)
         (:set need_wait true)

         (:set (breaker cb1) true)
         (:set (breaker cb2) true)
         (:set (breaker cb3) true)

         (:set (ext l1 cb1 side2) true)
         (:set (ext l1 sd6 side1) true)
         (:set (ext l2 sd6 side2) true)
         (:set (ext l2 sd5 side1) true)
         (:set (ext l2 sd7 side2) true)
         (:set (ext l3 sd5 side2) true)
         (:set (ext l3 sd1 side1) true)
         (:set (ext l4 sd1 side2) true)
         (:set (ext l4 sd2 side2) true)
         (:set (ext l4 sd3 side2) true)
         (:set (ext l5 cb2 side2) true)
         (:set (ext l5 sd4 side1) true)
         (:set (ext l6 sd2 side1) true)
         (:set (ext l6 sd4 side2) true)
         (:set (ext l6 sd7 side1) true)
         (:set (ext l7 cb3 side2) true)
         (:set (ext l7 sd3 side1) true)

         (:foreach ?x - SWITCH
            (:set (closed ?x) true)
            (:set (fd_mode ?x) ok)
            (:set (pd_ok ?x) true)
            (:set (ac_mode ?x) ok)
         )

         (:set (closed sd3) false)
         (:set (closed sd5) false)
         (:set (closed sd7) false)

         (:foreach ?l - LINE
            (:set (faulty ?l) :in { true false })
         )

         (= (:sum ?l - LINE (:if (faulty ?l) 1 0)) 4)
  )
  (:goal (:and (= need_wait false)
               (:forall ?l - LINE (:or (:not (feedable_line ?l)) (fed_line ?l)))))
)

(define (problem s5)
  (:domain mbp_worst)
  (:objects l1 l2 l3 l4 l5 l6 l7 - LINE
            cb1 cb2 cb3 sd1 sd2 sd3 sd4 sd5 sd6 sd7 - SWITCH)
  (:init (:set (opposite side1) side2)
         (:set (opposite side2) side1)
         (:set need_wait true)

         (:set (breaker cb1) true)
         (:set (breaker cb2) true)
         (:set (breaker cb3) true)

         (:set (ext l1 cb1 side2) true)
         (:set (ext l1 sd6 side1) true)
         (:set (ext l2 sd6 side2) true)
         (:set (ext l2 sd5 side1) true)
         (:set (ext l2 sd7 side2) true)
         (:set (ext l3 sd5 side2) true)
         (:set (ext l3 sd1 side1) true)
         (:set (ext l4 sd1 side2) true)
         (:set (ext l4 sd2 side2) true)
         (:set (ext l4 sd3 side2) true)
         (:set (ext l5 cb2 side2) true)
         (:set (ext l5 sd4 side1) true)
         (:set (ext l6 sd2 side1) true)
         (:set (ext l6 sd4 side2) true)
         (:set (ext l6 sd7 side1) true)
         (:set (ext l7 cb3 side2) true)
         (:set (ext l7 sd3 side1) true)

         (:foreach ?x - SWITCH
            (:set (closed ?x) true)
            (:set (fd_mode ?x) ok)
            (:set (pd_ok ?x) true)
            (:set (ac_mode ?x) ok)
         )

         (:set (closed sd3) false)
         (:set (closed sd5) false)
         (:set (closed sd7) false)

         (:foreach ?l - LINE
            (:set (faulty ?l) :in { true false })
         )

         (= (:sum ?l - LINE (:if (faulty ?l) 1 0)) 5)
  )
  (:goal (:and (= need_wait false)
               (:forall ?l - LINE (:or (:not (feedable_line ?l)) (fed_line ?l)))))
)

(define (problem s6)
  (:domain mbp_worst)
  (:objects l1 l2 l3 l4 l5 l6 l7 - LINE
            cb1 cb2 cb3 sd1 sd2 sd3 sd4 sd5 sd6 sd7 - SWITCH)
  (:init (:set (opposite side1) side2)
         (:set (opposite side2) side1)
         (:set need_wait true)

         (:set (breaker cb1) true)
         (:set (breaker cb2) true)
         (:set (breaker cb3) true)

         (:set (ext l1 cb1 side2) true)
         (:set (ext l1 sd6 side1) true)
         (:set (ext l2 sd6 side2) true)
         (:set (ext l2 sd5 side1) true)
         (:set (ext l2 sd7 side2) true)
         (:set (ext l3 sd5 side2) true)
         (:set (ext l3 sd1 side1) true)
         (:set (ext l4 sd1 side2) true)
         (:set (ext l4 sd2 side2) true)
         (:set (ext l4 sd3 side2) true)
         (:set (ext l5 cb2 side2) true)
         (:set (ext l5 sd4 side1) true)
         (:set (ext l6 sd2 side1) true)
         (:set (ext l6 sd4 side2) true)
         (:set (ext l6 sd7 side1) true)
         (:set (ext l7 cb3 side2) true)
         (:set (ext l7 sd3 side1) true)

         (:foreach ?x - SWITCH
            (:set (closed ?x) true)
            (:set (fd_mode ?x) ok)
            (:set (pd_ok ?x) true)
            (:set (ac_mode ?x) ok)
         )

         (:set (closed sd3) false)
         (:set (closed sd5) false)
         (:set (closed sd7) false)

         (:foreach ?l - LINE
            (:set (faulty ?l) :in { true false })
         )

         (= (:sum ?l - LINE (:if (faulty ?l) 1 0)) 6)
  )
  (:goal (:and (= need_wait false)
               (:forall ?l - LINE (:or (:not (feedable_line ?l)) (fed_line ?l)))))
)

(define (problem s7)
  (:domain mbp_worst)
  (:objects l1 l2 l3 l4 l5 l6 l7 - LINE
            cb1 cb2 cb3 sd1 sd2 sd3 sd4 sd5 sd6 sd7 - SWITCH)
  (:init (:set (opposite side1) side2)
         (:set (opposite side2) side1)
         (:set need_wait true)

         (:set (breaker cb1) true)
         (:set (breaker cb2) true)
         (:set (breaker cb3) true)

         (:set (ext l1 cb1 side2) true)
         (:set (ext l1 sd6 side1) true)
         (:set (ext l2 sd6 side2) true)
         (:set (ext l2 sd5 side1) true)
         (:set (ext l2 sd7 side2) true)
         (:set (ext l3 sd5 side2) true)
         (:set (ext l3 sd1 side1) true)
         (:set (ext l4 sd1 side2) true)
         (:set (ext l4 sd2 side2) true)
         (:set (ext l4 sd3 side2) true)
         (:set (ext l5 cb2 side2) true)
         (:set (ext l5 sd4 side1) true)
         (:set (ext l6 sd2 side1) true)
         (:set (ext l6 sd4 side2) true)
         (:set (ext l6 sd7 side1) true)
         (:set (ext l7 cb3 side2) true)
         (:set (ext l7 sd3 side1) true)

         (:foreach ?x - SWITCH
            (:set (closed ?x) true)
            (:set (fd_mode ?x) ok)
            (:set (pd_ok ?x) true)
            (:set (ac_mode ?x) ok)
         )

         (:set (closed sd3) false)
         (:set (closed sd5) false)
         (:set (closed sd7) false)

         (:foreach ?l - LINE
            (:set (faulty ?l) :in { true false })
         )

         (= (:sum ?l - LINE (:if (faulty ?l) 1 0)) 7)
  )
  (:goal (:and (= need_wait false)
               (:forall ?l - LINE (:or (:not (feedable_line ?l)) (fed_line ?l)))))
)
