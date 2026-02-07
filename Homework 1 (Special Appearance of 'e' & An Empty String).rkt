#lang racket

(define appearances 0)

(define special_appearance
  (lambda (listObj)

    (cond
      [(string=? (car listObj) "e") (set! appearances (+ appearances 1))]
      [(string=? (car listObj) "") (set! appearances (+ appearances 1))])
    
    (if (null? listObj)
        (display (appearances))

        ())