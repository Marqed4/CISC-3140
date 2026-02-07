#lang racket

(define Michael_Kelso
  (list "Ashton Kutcher" "February" '7 '1978))

(define Reverse_Michael_Kelso_Info
  (list))

;; length limiter
(define getLen
  (lambda (listObj)
    (if (null? listObj)
        0
        (+ 1 (getLen(cdr listObj))))))

(display (getLen Michael_Kelso))

(while (> (getLen Michael_Kelso) 0))

;;  (define lambda (reverse)
;;  if eq? reverse(list))