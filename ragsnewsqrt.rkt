ra(define (sqrt-iter guess n)
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

(square-root 25.0)
