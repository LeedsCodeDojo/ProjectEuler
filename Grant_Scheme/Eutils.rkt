#lang racket

(require "basefunctions.rkt")

; some basic functions used in the problems

(define (divisible-by? dividend divisor)
  (= (modulo dividend divisor) 0))

(provide (all-defined-out))