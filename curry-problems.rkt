#lang racket
(provide digit-index-factory curry-up-now)

;Complete the following procedure:
;digit-index-factory takes in one numerical argument, and returns a procedure
;that procedure, when given one argument, returns the distance from the last digit
;of the original number to the number passed into the returned procedure
(define digit-index-factory
  (lambda (a)
    'nyi))

;Complete the following procedure
;curry up now takes in two numbers, an open and close time
;and returns something so that when it is called with the following:
;        ((((curry-up-now open close) price) quantity) time)
;it returns price * quantity if the time is within open and close inclusive
(define curry-up-now
  (lambda (open close)
    'nyi))