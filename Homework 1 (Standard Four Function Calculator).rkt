#lang racket

(define (Start)
  (display "At any time type 'Abort' to exit program... or 'Reset' to start over!")
  (newline)

  (display "Constraint: Integer or Floating Point only...")
  (newline)

  ;; abort function in progress...

  (display "Enter a number: ")
  (define x1 (read))
  (newline)

  (cond
    [(eq? x1 'Reset) (Start)]
    [(eq? x1 'Abort) (exit)])
 
  (define (system_loop)
    (display "Enter an arithmetic function/operation (+ - * /): ")
    (define operation (read))
    (newline)

    (cond
      [(eq? operation 'Reset) (Start)]
      [(eq? operation 'Abort) (exit)])

    (define raw_operation
      (cond
        [(eq? operation '+) +]
        [(eq? operation '-) -]
        [(eq? operation '*) *]
        [(eq? operation '/) /]
        [else (error "Error: Unknown Operation")]))

    (display "Enter a number: ")
    (define x2 (read))
    (newline)

    (cond
      [(eq? x2 'Reset) (Start)]
      [(eq? x2 'Abort) (exit)])

    (define ans (raw_operation x1 x2))
    (display "Answer: ")
    (display ans)
    (newline)

    (set! x1 ans)
  
    (system_loop)
    )

  (system_loop))

(Start)
