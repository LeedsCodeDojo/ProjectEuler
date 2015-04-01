#lang racket

(require "eutils.rkt")

; A palindromic number reads the same both ways. The largest palindrome made from the 
; product of two 2-digit numbers is 9009 = 91 × 99.
; Find the largest palindrome made from the product of two 3-digit numbers.

(define (cartesian max)
  (flatten (map (lambda (x) 
                  (map (lambda (y) 
                         (* x y)) 
                       (range 1 (add1 max)))) 
                (range 1 (add1 max)))))

(define (palindrome? n)
  (= n (string->number (list->string (reverse (string->list (number->string n)))))))

(apply max (filter palindrome? (cartesian 999)))
