;; Finding 'Approximation to the square-root by Successive Averaging'
;; Algorithm due to Heron of Alexandria(c. 10 – c. 70 AD)
;;
;; Implementation in Scheme using Recursion and Higher-order functions.
;;
;; Author: Raghu Ugaré
;;
;; Thanks: To my dear teachers--Harold Abelson & Gerald Jay Susssman @ MIT
;;
;;------------------------------------------------------------------
(define (sqrt-iter guess n)
 (if (good? guess n)
     guess
     (sqrt-iter (improve-guess guess n) n)))

(define (good? guess n)
  (< (abs (- (square guess) n)) 0.0001))

(define (square p)
  (* p p))

(define (improve-guess guess n)
  (average guess (/ n guess)))

(define (average a b)
  (/ (+ a b) 2.0))

(define (square-root n)
  (sqrt-iter 1.0 n))
;; -----------------------------------------------------------------

;; Let's test our procedure! :-)
(square-root 25.0)
