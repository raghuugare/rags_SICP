;; Program illustrating creation of custom data-structures
;; In particular, this shows the definition of 2D-vectors, along with
;; support for rudimentary operations on this new 'user-dfined TYPE' like vector addition, 
;; scaling of a vector, etc.
;;
;; Author : Raghu Ugaré
;; Courtesy: the great teacher/author-s of SICP! <3 :)

(define make-vec cons)
(define xcor car)
(define ycor cdr)

(define make-segment cons)
(define seg-start car)
(define seg-end cdr)

(define (+vec v1 v2)
  (make-vec (+ (xcor v1)
               (xcor v2))
            (+ (ycor v1)
               (ycor v2))))

(define (scale v f)
  (make-vec (* f (xcor v))
            (* f (ycor v))))

(define a (make-vec 1 2))
(define b (make-vec 3 4))
(define sum (+vec a b))
(printf "a = ~a~n" a)
(printf "b = ~a\n" b)
(printf "a+b = sum = ~a~n~n" sum)

; List operations...! :)

; CDR-ing down a list...
(define (scale-list s l)
  (if (null? l)
      () ; was originally 'nil'
      (cons (* s (car l)) 
            (scale-list s (cdr l)))))

; The MAP procedure...!!! BEAUTY...!! <3 :)
; was initially 'map' but it seems to exist olready
(define (ragsMap p l)
  (if (null? l)
      () ; was originally 'nil' --can be replaced by the term 'nil  :)
      (cons (p (car l)) 
            (ragsMap p (cdr l)))))


(define 1-to-4 (list 1 2 3 4))
1-to-4
(cdr (cdr (cdr (cdr 1-to-4))))

(scale-list 10 1-to-4)

; My own Map procedure...!!!
(ragsMap (lambda (x)(* 10 x)) 1-to-4)
(define (square x) (* x x))
(ragsMap square 1-to-4)
(ragsMap (lambda (x)(+ 10 x)) 1-to-4)

; Henderson-Escher problem...!
;(define (coord-map rect)
;  (lambda (point)
;    (+vec
;      (+vec (scale) 
;       )
