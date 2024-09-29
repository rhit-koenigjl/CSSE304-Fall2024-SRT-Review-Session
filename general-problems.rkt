#lang racket
(provide avg-of-n post-order-traversal slope-management)


;Complete the following procedure
;Given a list of numbers, and a number n
;Return a list of numbers of length (ciel len(a) / n) wherin each element is the average value of the i'th set of n numbers
;See test cases for examples.
(define avg-of-n
  (lambda (a n)
    'nyi))

;Consider the following grammer:
;    <b-tree> ::= '() | '(number <b-tree> <b-tree>)

;Complete the following procedure to produce a pre-order traversal of a b-tree
(define post-order-traversal
  (lambda (a)
    'nyi))


;Complete the following procedure
;The procedure takes in a list of numbers, and returns a list of lists of numbers.
;The order of numbers within the sublists appended together is equal to the original list.
;The subdivisions between the lists occurs when there is a difference between two numbers > than 1.
;See test cases for examples
(define slope-management
  (lambda (a)
    'nyi))