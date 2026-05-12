#lang racket

(define Michael_Kelso
  (list "Ashton Kutcher" "February" '7 '1978))

(define Reverse_Michael_Kelso_Info
  (list))

;; length limiter
(define rev
  (lambda (listObj)
    (if (null? listObj)
        '()
        (append (rev (cdr listObj))
                (list (car listObj))))))

(display (rev Michael_Kelso))

;;  (define lambda (reverse)
;;  if eq? reverse(list))