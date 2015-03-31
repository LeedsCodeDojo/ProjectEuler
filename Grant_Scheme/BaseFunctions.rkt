#lang racket

; some basic functions

(define (add1 n) (+ n 1))

(define (range from to)
  (cond
    ((> from to) '())
    (else (cons from
                (range (add1 from) to)))))

(provide (all-defined-out))