(define (cube-root-iter guess n)
 (if (good? guess n)
     guess
     (cube-root-iter (improve-guess guess n) n)))

(define (good? guess n)
  (< (abs (- (cube guess) n)) 0.0001))

(define (cube p)
  (* p p p))

(define (improve-guess guess n)
  (/ (+ (/ n (* guess guess)) (* 2.0 guess)) 3))

(define (cube-root n)
  (cube-root-iter 1.0 n))

;; =====================================================
;; Test(-driv)ing our iterative cube-root procedure! :-)
;; =====================================================
(cube-root 27.0) ;; result: 3.0000005410641766
(cube-root 81.0) ;; result: 4.326748733642904
;; -----------------------------------------------------