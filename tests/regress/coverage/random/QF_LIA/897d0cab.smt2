(set-info :source |fuzzsmt|)
(set-info :smt-lib-version 2.0)
(set-info :category "random")
(set-info :status unknown)
(set-logic QF_LIA)
(declare-fun v0 () Int)
(declare-fun v1 () Int)
(assert (let ((e2 2))
(let ((e3 (- v0 v0)))
(let ((e4 (- v0)))
(let ((e5 (+ v1 e4)))
(let ((e6 (- e3 e5)))
(let ((e7 (- e5)))
(let ((e8 (* e3 e2)))
(let ((e9 (<= v0 v1)))
(let ((e10 (<= e6 e6)))
(let ((e11 (<= v0 e3)))
(let ((e12 (>= e8 e4)))
(let ((e13 (< e4 e7)))
(let ((e14 (< e8 e7)))
(let ((e15 (>= e5 e7)))
(let ((e16 (ite e15 v0 e5)))
(let ((e17 (ite e14 e3 e16)))
(let ((e18 (ite e14 e8 e16)))
(let ((e19 (ite e12 e17 e16)))
(let ((e20 (ite e10 v0 e17)))
(let ((e21 (ite e13 v1 e16)))
(let ((e22 (ite e9 e7 v1)))
(let ((e23 (ite e13 e20 e3)))
(let ((e24 (ite e12 e4 e7)))
(let ((e25 (ite e11 e19 e17)))
(let ((e26 (ite e11 e6 e20)))
(let ((e27 (<= v0 v1)))
(let ((e28 (>= e3 e21)))
(let ((e29 (distinct e25 e22)))
(let ((e30 (= e7 e4)))
(let ((e31 (>= e20 e20)))
(let ((e32 (> e17 e5)))
(let ((e33 (<= e24 e26)))
(let ((e34 (< e22 e26)))
(let ((e35 (> e7 e26)))
(let ((e36 (<= v1 e21)))
(let ((e37 (distinct e8 e26)))
(let ((e38 (> e16 v1)))
(let ((e39 (>= e23 e20)))
(let ((e40 (> e3 v0)))
(let ((e41 (>= e18 e5)))
(let ((e42 (<= e25 v1)))
(let ((e43 (distinct e19 e8)))
(let ((e44 (= v1 e17)))
(let ((e45 (>= e4 e8)))
(let ((e46 (= e21 e8)))
(let ((e47 (>= e26 e6)))
(let ((e48 (not e33)))
(let ((e49 (and e38 e14)))
(let ((e50 (or e29 e45)))
(let ((e51 (xor e48 e39)))
(let ((e52 (ite e44 e46 e12)))
(let ((e53 (not e15)))
(let ((e54 (= e41 e13)))
(let ((e55 (=> e35 e34)))
(let ((e56 (ite e54 e27 e53)))
(let ((e57 (= e31 e40)))
(let ((e58 (= e37 e47)))
(let ((e59 (or e32 e43)))
(let ((e60 (or e28 e30)))
(let ((e61 (or e50 e52)))
(let ((e62 (or e11 e11)))
(let ((e63 (=> e61 e9)))
(let ((e64 (ite e58 e62 e10)))
(let ((e65 (ite e36 e60 e59)))
(let ((e66 (and e63 e49)))
(let ((e67 (not e55)))
(let ((e68 (xor e51 e64)))
(let ((e69 (or e57 e68)))
(let ((e70 (not e56)))
(let ((e71 (and e42 e65)))
(let ((e72 (not e71)))
(let ((e73 (not e69)))
(let ((e74 (=> e67 e73)))
(let ((e75 (not e70)))
(let ((e76 (=> e75 e72)))
(let ((e77 (xor e76 e76)))
(let ((e78 (not e77)))
(let ((e79 (or e78 e74)))
(let ((e80 (= e79 e66)))
e80
))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

(check-sat)