(set-logic QF_LIA)
(declare-fun x () Int)
(assert (< x (* 5 (div x 5))))
(check-sat)
(get-model)

