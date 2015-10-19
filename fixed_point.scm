;; Fixed point of a function 'f' about a point 'start'...
;;
;; Author: Raghu Ugaré
;; Courtesy: the great teacher/author-s of SICP! <3 :)
;; ------------------------------------------------------

(define (fixed-point f start)
  ;; t = tolerance
  (define t 0.000001)

  (define (iter old new)
    (if (close-enough? old new)
        new
        (iter new (f new))))

  (define (close-enough? old new)
    (< (abs (- old new)) t))

  (iter start (f start)))


;; ================================================
;; Some tests below for our Fixed-point function...
;; ================================================

(fixed-point cos 0) ;; Gives 0.7390855263619245
(fixed-point sin 0) ;; Gives 0
(fixed-point sin 1) ;; Gives 0.018169909847253

;; Now, finding the square-root is nothing but finding
;; 'fixed-point' of the function 'x'
