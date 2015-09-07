(define (1+ n)
  (+ 1 n))

(define (-1+ n)
  (- n 1))

(define (square n)
  (* n n))

(define (sum-int a b)
  (if (> a b)
      0
      (+ a 
         (sum-int (1+ a) b))))

(define (sum-sq a b)
  (if (> a b)
      0
      (+ (square a) 
         (sum-sq (1+ a) b))))

(sum-int 1 10)
(sum-sq 1 10)

(define (sum a term next b)
  (if (> a b)
      0
      (+ (term a)
         (sum (next a)
              term
              next
              b))))

(sum 1 identity 1+ 10)
(sum 1 square 1+ 10)