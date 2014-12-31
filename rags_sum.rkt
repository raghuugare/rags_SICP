(define (sum term a next b)
  (if (> a b) 
      0
      (+ (term a)
           (sum 
           term
           (next a)
           next
           b))))

(define (1+ a)
  (+ 1 a))

(define (sum-int a b)
  (define (identity x) x)
  (sum identity 
       a
       1+
       b))

(sum-int 1 10)