;; Generalizing the Newton-Raphson method to not just finding the square-root or the cube-root
;; but to compute the n'th root of a positive integer...! :)
;; Author : Raghu Ugaré

(define (power x n)
  (define (power-iter result base power)
  (if (<= power 0)
      result
      (power-iter (* result base) base (- power 1))))
(power-iter 1 x n))

(define (nth-root n number)
  
(define (nth-root-iter guess n number)
 (if (good-enough? guess n number)
 guess
 (nth-root-iter (improve guess n number) n number)))
  
(define (good-enough? guess n number)
 (< (abs (- (power guess n) number)) 0.000001))
  
(define (improve guess n number)
(/ (+ (/ number (power guess (- n 1))) (* (- n 1) guess)) n ))
(nth-root-iter 1.0 n number))

(nth-root 2 25)
(nth-root 3 2197)
(nth-root 5 243)
(nth-root 5 1419857)
(nth-root 2 144)
(nth-root 3 27)
(nth-root 3 729)