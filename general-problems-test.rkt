#lang racket
(require "general-problems.rkt")
(require "testcode-base.rkt")
(provide get-weights get-names individual-test test)

(define test (make-test

              (avg-of-n equal?
                        [(avg-of-n '() 1) '() 1]
                        [(avg-of-n '(1 2 3) 1) '(1 2 3) 1]
                        [(avg-of-n '(1 2 3) 3) '(2) 1]
                        [(avg-of-n '(1 3 2 4 3 7 7) 2) '(2 3 5 7) 1])
              (post-order-traversal equal?
                                    [(post-order-traversal '(7 (3 (1 () ()) (2 () ())) (6 (4 () ()) (5 () ())))) '(1 2 3 4 5 6 7) 1]
                                    [(post-order-traversal '(1 (2 () ()) (3 (4 () ()) (5 () ())))) '(2 4 5 3 1) 1])
              (slope-management equal?
                                [(slope-management '(1 2 3 4 5 6 7 9)) '((1 2 3 4 5 6 7) (9)) 1]
                                [(slope-management '(-100 -101 -100 -101 0 1 2 3 2 3 2 1)) '((-100 -101 -100 -101) (0 1 2 3 2 3 2 1)) 1]
                                [(slope-management '(1 3 2 4 5))'((1) (3 2) (4 5)) 1])
              ))

              
(implicit-run test)