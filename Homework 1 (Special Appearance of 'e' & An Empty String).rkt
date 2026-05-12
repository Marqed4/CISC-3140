#lang racket

(define random_strings
  (list "e" "" "foo" "bar" "" "fizz" "buzz" "e"))

(display "There are ")

(define appearances 0)

(define string_test
  (lambda (str)

    (cond
      [(string=? str "e") (set! appearances (+ appearances 1))]
      [(string=? str "") (set! appearances (+ appearances 1))])))

(define special_appearance
  (lambda (listObj)

    (if (null? listObj)
        (display appearances)
        
        (begin
          (string_test (car listObj))
          (special_appearance (cdr listObj))))))

(special_appearance random_strings)

(display " special appearances of 'e' & An Empty String!")