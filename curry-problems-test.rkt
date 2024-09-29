#lang racket
(require "curry-problems.rkt")
(require "testcode-base.rkt")
(provide get-weights get-names individual-test test)

(define a (digit-index-factory 12345))
(define b (digit-index-factory 3001))

(define c (curry-up-now 11 20))

(define test (make-test
              (digit-index-factory equal?
                        [(a 3) 2 1]
                        [(a 1) 4 1]
                        [(a 6) -1 1]
                        [(b 1) 0 1]
                        [(b 0) 1 1])
              (curry-up-now equal?
                            [(((c 3) 5) 11) 15 1]
                            [(((c 1) 2) 10) 'Wait! 1]
                            [(((c 1) 2) 21) 'Wait! 1])))
              
(implicit-run test)