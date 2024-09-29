#lang racket
(provide make-double-type-stack make-pseudo-fib make-dinosaur)

;For the following 3 problems, you are allowed to (and must) use mutation

;Write a procedure that creates a "double-type-stack"
;Double Type Stacks takes no parameters and has three commands: "push", "pop-sym", and "pop-num"

;"push": with a push you can add an item to one of the two internal stacks of the double-type-stack
;a number would go on the number stack, and a symbol would go on the symbol stack

;"pop-sym": returns the last symbol pushed to the stack and removes it from the stack

;"pop-num": returns the last number pushed to the stack and removes it from the stack
(define make-double-type-stack
  (lambda ()
    'nyi))

;Write a procedure that creates a "pseudo fibbonacci generator;
;Generators take in one start parameter, and have 2 commands "next" and "reset"

;"next": output the next pseudo fibbonacci number given the start value
;e.g. if the start variable is 1, than the sequence is (0 1 1 2 3 5 8 ...)
;whereas if the start variable is 3, than the sequence is (0 3 3 6 9 15 24 ...)

;"reset": resets the generator without changing the seed, the next value after a reset should be 0
(define make-pseudo-fib
  (lambda (start)
    'nyi))

;Write a procedure that creates a "dinosaur."
;Dinosaurs should be able to take 4 commands: "feed," "toilet," "meteor," and "autopsy."
;Dinosaurs should store two pieces of information, its stomach,
;and whether it has been hit by a meteor.

;"feed": Dinosaurs can eat one piece of food at a time
;and hold up to three at once in its stomach.
;If a dinosaur has already eaten three pieces of food,
;they must use the toilet before eating more.
;If a dino has been hit by a meteor, it can no longer feed.

;"toilet": Dinosaurs can remove the first element of its stomach by using the toilet.
;A dino will output/return the removed element, and adjust its stomach accordingly.

;"meteor": Dinosaurs may occasionally be hit by falling meteors.
;They unfortunately will not be able to feed or toilet once they have been struck.

;"autopsy": Archaeologists may want to determine what was in a dinosaur's stomach at
;the time of its death. They are too cowardly to approach a dinosaur who is still alive, however.
(define make-dinosaur
  (lambda ()
    'nyi))