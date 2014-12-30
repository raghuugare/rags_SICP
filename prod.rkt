(define (prod term a next b)
  (if (> a b)
      1
      (* (term a)
      (prod term (next a) next b))))

(define (inc n) (+ n 1))

(define (factorial n) 
  (prod * 1 inc n))

(define square (lambda (x) (* x x)))

(factorial 4)

(factorial 10)

(square 19)