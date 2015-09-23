;; Different experiments in Higher order procedures
;; using the sums of certain series...
;;
;; Courtesy: Prof. Gerald Jay Sussman
;;
;; Author : Raghu Ugaré (@raghu_ugare)
;; 
;;
(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (sum-iter term a next b)
  (define (iter a result)
    (if (> a b)
        result
     (iter (next a) (+ result (term a)))))
  (iter a 0))

(define (inc n) (+ n 1))
(define (cube x) (* x x x))
(define (square x) (* x x))

(define (sum-cubes a b)
  (sum cube a inc b))

(define (same p) p)

(define (sum-integers m n)
  (sum identity m inc n))

(define (pi-sum a b)
  (define (pi-term x)
    (/ 1.0 (* x (+ x 2))))
  (define (pi-next x)
    (+ x 4))
  (sum pi-term a pi-next b))

;; define our own identity procedure! :)
;; NOTE: Need to comment this in Dr.Racket, since it's already defined there.
(define identity
  (lambda (x)
    x))

(sum-integers 1 10)

(sum-iter identity  1 inc 10)

(* 8 (pi-sum 1 1000))
