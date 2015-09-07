(define (author)
(newline)(newline)  
(display ":- Raghu.Ugare.(ragsoverriches.blogspot.com)")
(newline)
(display "Planet Earth"))
 
(define (1+ n)
  (+ 1 n))

(define (-1+ n)
  (- n 1))

(define (fibRec n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fibRec(- n 1)) (fibRec(- n 2))))))
 
(define (showFib start n)  
  (cond ((> start n) (display ""))
        (else (display (fibRec start))(display " ")
              (showFib (+ start 1) n))))
 
(showFib 0 10)
(author)
(newline)
(display "The car of (a b c) = ")
(car '(a b c))

(1+ 4)
(-1+ 3)
(+ 98 89)