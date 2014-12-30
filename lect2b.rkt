; Wishful Thinking...!! :)
(define (+rat x y)
  (make-rat 
   (+ (* (numer x) (denom y))
      (* (numer y) (denom x)))
   (* (denom x) 
      (denom y))))

(define (*rat x y)
  (make-rat (* (numer x) (numer y))
            (* (denom x) (denom y))))


; just trying out various stuff...! :)

(define (make-rat n d)
  (let (
        (g (gcd n d))
        )
    (cons (/ n g)   
          (/ d g))
    )
  )

(define (numer x)
  (car x))

(define (denom x)
  (cdr x))

(define (make-vec x y)
  (cons x y))

(define (xcor v)
  (car v))

(define (ycor v)
  (cdr v))

(define (make-segment v1 v2)
  (cons v1 v2))

(define (seg-start s)
  (car s))

(define (seg-end s)
  (cdr s))

(define (square n)
  (* n n))

(define (len s)
  (let (
        (dx (- (xcor (seg-end s))
              (xcor (seg-start s))))
        (dy (- (ycor (seg-end s))
                (ycor (seg-start s)))) 
        )
    (sqrt (+ (square dx) (square dy)))  
    ))

(gcd 6 8)
; Rational arithmetic...
(display "\nRational arithmetic... \n")

(define x (make-rat 1 2))
(display "x = ")x
(define y (make-rat 1 4))
(display "y = ")y
(display "x + y = ")(+rat x y)
(display "x * y = ")(*rat x y)

; Line operations...
(display "\nLine operations...\n")
(define p (make-vec 0 0))
(define q (make-vec 3 4))
(display "Point p = ")p
(display "Point q = ")q
(define s (make-segment p q))
;s
(define l (len s))
(display "Length of segment PQ = ")l
