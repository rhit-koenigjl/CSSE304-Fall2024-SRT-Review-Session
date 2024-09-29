#lang racket
(require "object-problems.rkt")
(require "testcode-base.rkt")
(provide get-weights get-names individual-test test)

(define s (make-double-type-stack))
(s 'push 1)
(s 'push 'hello)
(s 'push 'world)
(s 'push 2)
(s 'push 3)

(define f (make-pseudo-fib 5))
(define f2 (make-pseudo-fib -3))
(f2 'next)
(f2 'next)
(f2 'reset)

(define d1 (make-dinosaur))
(d1 'feed "food1")
(d1 'feed "food2")
(d1 'feed "food3")

(define d2 (make-dinosaur))
(d2 'feed 1)
(d2 'meteor)

(define test (make-test

              (double-type-stack equal?
                                 [(s 'pop-sym) 'world 1]
                                 [(s 'pop-sym) 'hello 1]
                                 [(s 'pop-num) 3 1]
                                 [(s 'pop-num) 2 1]
                                 [(s 'pop-num) 1 1])

              (psuedo-fib-generator equal?
                                    [(f 'next) 0 1]
                                    [(f 'next) 5 1]
                                    [(f 'next) 5 1]
                                    [(f 'next) 10 1]
                                    [(f 'next) 15 1]
                                    [(f 'next) 25 1]
                                    [(f2 'next) 0 1]
                                    [(f2 'next) -3 1]
                                    [(f2 'next) -3 1]
                                    [(f2 'next) -6 1]
                                    [(f2 'next) -9 1]
                                    [(f2 'next) -15 1]
                                    )
              (make-dinosaur equal?
                             [(d1 'toilet) "food3" 1]
                             [(d1 'toilet) "food2" 1]
                             [(d1 'toilet) "food1" 1]
                             [(d1 'autopsy) "Dinosaur is still alive" 1]
                             [(d2 'autopsy) '(1) 1]
                             
                             )))
(implicit-run test)