(define (domain ring)
  (:model (:dynamics :non-deterministic) (:feedback :null))
  (:types MARKER WINDOW)
  (:functions (next WINDOW WINDOW)
              (prev WINDOW WINDOW)
              (pos MARKER WINDOW))
  (:predicates (closed WINDOW)
               (locked WINDOW))
  (:objects win - MARKER)

  (:ramification ram1
    :parameters ?w - WINDOW
    :formula (:or (:not (locked ?w)) (closed ?w))
  )

  (:action move_forward
    :effect (:set (pos win) (next (pos win)))
  )

  (:action move_backward
    :effect (:set (pos win) (prev (pos win)))
  )

  (:action close
    :effect (:set (closed (pos win)) true)
  )

  (:action lock
    :precondition (closed (pos win))
    :effect (:set (locked (pos win)) true)
  )
)


(define (problem p2)
  (:domain ring)
  (:objects w1 w2 - WINDOW)
  (:init (:set (next w1) w2)
         (:set (next w2) w1)
         (:set (prev w2) w1)
         (:set (prev w1) w2)
         (:set (pos win) :in { w1 w2 })
         (:set (closed w1) :in { true false })
         (:set (closed w2) :in { true false })
         (:set (locked w1) :in { true false })
         (:set (locked w2) :in { true false }))
  (:goal (:and (locked w1) (locked w2))))


(define (problem p3)
  (:domain ring)
  (:objects w1 w2 w3 - WINDOW)
  (:init (:set (next w1) w2)
         (:set (next w2) w3)
         (:set (next w3) w1)
         (:set (prev w3) w2)
         (:set (prev w2) w1)
         (:set (prev w1) w3)
         (:set (pos win) :in { w1 w2 w3 })
         (:set (closed w1) :in { true false })
         (:set (closed w2) :in { true false })
         (:set (closed w3) :in { true false })
         (:set (locked w3) :in { true false })
         (:set (locked w2) :in { true false })
         (:set (locked w1) :in { true false }))
  (:goal (:and (locked w1)
               (locked w2)
               (locked w3))))


(define (problem p4)
  (:domain ring)
  (:objects w1 w2 w3 w4 - WINDOW)
  (:init (:set (next w1) w2)
         (:set (next w2) w3)
         (:set (next w3) w4)
         (:set (next w4) w1)
         (:set (prev w4) w3)
         (:set (prev w3) w2)
         (:set (prev w2) w1)
         (:set (prev w1) w4)
         (:set (pos win) :in { w1 w2 w3 w4 })
         (:set (closed w1) :in { true false })
         (:set (closed w2) :in { true false })
         (:set (closed w3) :in { true false })
         (:set (closed w4) :in { true false })
         (:set (locked w4) :in { true false })
         (:set (locked w3) :in { true false })
         (:set (locked w2) :in { true false })
         (:set (locked w1) :in { true false }))
  (:goal (:and (locked w1)
               (locked w2)
               (locked w3)
               (locked w4))))


(define (problem p5)
  (:domain ring)
  (:objects w1 w2 w3 w4 w5 - WINDOW)
  (:init (:set (next w1) w2)
         (:set (next w2) w3)
         (:set (next w3) w4)
         (:set (next w4) w1)
         (:set (next w5) w1)
         (:set (prev w5) w4)
         (:set (prev w4) w3)
         (:set (prev w3) w2)
         (:set (prev w2) w1)
         (:set (prev w1) w5)
         (:set (pos win) :in { w1 w2 w3 w4 w5 })
         (:set (closed w1) :in { true false })
         (:set (closed w2) :in { true false })
         (:set (closed w3) :in { true false })
         (:set (closed w4) :in { true false })
         (:set (closed w5) :in { true false })
         (:set (locked w5) :in { true false })
         (:set (locked w4) :in { true false })
         (:set (locked w3) :in { true false })
         (:set (locked w2) :in { true false })
         (:set (locked w1) :in { true false }))
  (:goal (:and (locked w1)
               (locked w2)
               (locked w3)
               (locked w4)
               (locked w5))))

(define (problem p6)
  (:domain ring)
  (:objects w1 w2 w3 w4 w5 w6 - WINDOW)
  (:init (:set (next w1) w2)
         (:set (next w2) w3)
         (:set (next w3) w4)
         (:set (next w4) w5)
         (:set (next w5) w6)
         (:set (next w6) w1)
         (:set (prev w6) w5)
         (:set (prev w5) w4)
         (:set (prev w4) w3)
         (:set (prev w3) w2)
         (:set (prev w2) w1)
         (:set (prev w1) w6)
         (:set (pos win) :in { w1 w2 w3 w4 w5 w6 })
         (:set (closed w1) :in { true false })
         (:set (closed w2) :in { true false })
         (:set (closed w3) :in { true false })
         (:set (closed w4) :in { true false })
         (:set (closed w5) :in { true false })
         (:set (closed w6) :in { true false })
         (:set (locked w6) :in { true false })
         (:set (locked w5) :in { true false })
         (:set (locked w4) :in { true false })
         (:set (locked w3) :in { true false })
         (:set (locked w2) :in { true false })
         (:set (locked w1) :in { true false }))
  (:goal (:and (locked w1)
               (locked w2)
               (locked w3)
               (locked w4)
               (locked w5)
               (locked w6))))


(define (problem p7)
  (:domain ring)
  (:objects w1 w2 w3 w4 w5 w6 w7 - WINDOW)
  (:init (:set (next w1) w2)
         (:set (next w2) w3)
         (:set (next w3) w4)
         (:set (next w4) w1)
         (:set (next w5) w6)
         (:set (next w6) w7)
         (:set (next w7) w1)
         (:set (prev w7) w6)
         (:set (prev w6) w5)
         (:set (prev w5) w4)
         (:set (prev w4) w3)
         (:set (prev w3) w2)
         (:set (prev w2) w1)
         (:set (prev w1) w7)
         (:set (pos win) :in { w1 w2 w3 w4 w5 w6 w7 })
         (:set (closed w1) :in { true false })
         (:set (closed w2) :in { true false })
         (:set (closed w3) :in { true false })
         (:set (closed w4) :in { true false })
         (:set (closed w5) :in { true false })
         (:set (closed w6) :in { true false })
         (:set (closed w7) :in { true false })
         (:set (locked w7) :in { true false })
         (:set (locked w6) :in { true false })
         (:set (locked w5) :in { true false })
         (:set (locked w4) :in { true false })
         (:set (locked w3) :in { true false })
         (:set (locked w2) :in { true false })
         (:set (locked w1) :in { true false }))
  (:goal (:and (locked w1)
               (locked w2)
               (locked w3)
               (locked w4)
               (locked w5)
               (locked w6)
               (locked w7))))


(define (problem p8)
  (:domain ring)
  (:objects w1 w2 w3 w4 w5 w6 w7 w8 - WINDOW)
  (:init (:set (next w1) w2)
         (:set (next w2) w3)
         (:set (next w3) w4)
         (:set (next w4) w1)
         (:set (next w5) w6)
         (:set (next w6) w7)
         (:set (next w7) w8)
         (:set (next w8) w1)
         (:set (prev w8) w7)
         (:set (prev w7) w6)
         (:set (prev w6) w5)
         (:set (prev w5) w4)
         (:set (prev w4) w3)
         (:set (prev w3) w2)
         (:set (prev w2) w1)
         (:set (prev w1) w7)
         (:set (pos win) :in { w1 w2 w3 w4 w5 w6 w7 w8 })
         (:set (closed w1) :in { true false })
         (:set (closed w2) :in { true false })
         (:set (closed w3) :in { true false })
         (:set (closed w4) :in { true false })
         (:set (closed w5) :in { true false })
         (:set (closed w6) :in { true false })
         (:set (closed w7) :in { true false })
         (:set (closed w8) :in { true false })
         (:set (locked w8) :in { true false })
         (:set (locked w7) :in { true false })
         (:set (locked w6) :in { true false })
         (:set (locked w5) :in { true false })
         (:set (locked w4) :in { true false })
         (:set (locked w3) :in { true false })
         (:set (locked w2) :in { true false })
         (:set (locked w1) :in { true false }))
  (:goal (:and (locked w1)
               (locked w2)
               (locked w3)
               (locked w4)
               (locked w5)
               (locked w6)
               (locked w7)
               (locked w8))))
