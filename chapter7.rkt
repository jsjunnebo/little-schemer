#lang racket
(require "chapter5.rkt")

(println "Begin Chapter 7")

(define member?
  (lambda (a lat)
    (cond
      ((null? lat) #f)
      (else (or (equal? a (car lat))
                (member? a (cdr lat)))))))

(define set?
  (lambda (lat)
    (cond
      ((null? lat) #t)
      ((member? (car lat) (cdr lat)) #f)
      (else (set? (cdr lat))))))
      
(set? '(a b c))
(set? '(a b c a))
(set? '(a b 1 c 2 1))
(set? '(a b 1 c 2))