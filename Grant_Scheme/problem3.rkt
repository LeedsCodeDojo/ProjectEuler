#lang racket/base

(require "basefunctions.rkt")
(require "eutils.rkt")

; The prime factors of 13195 are 5, 7, 13 and 29.
; What is the largest prime factor of the number 600851475143?

(define (is-prime? n)
  (cond
    ((and (even? n) (> n 2)) #f)
    ((divisible-by-any? n (range 2 (sub1 n))) #f)
    (else #t)))

(define (primes-upto n)
  (define (primes current)
    (cond
      ((> current (sqrt n)) '())
      ((is-prime? current) 
       (cons 
        current (primes (add1 current))))
      (else (primes (add1 current)))))
  (primes 2))


(define (primes-eratos n)
  (define (eratos current-index remaining)
    (cond
      ((>= current-index (length remaining)) remaining)
      (else 
       (define (div? n)
         (not (divisible-by? n (list-ref remaining current-index)))) ; assume each next item in the 'remaining' list is prime.  True?
       (eratos (add1 current-index) (filter div? remaining)))))
  (eratos 2 (range 2 (sqrt n))))

(define (factorise n)
  (let ([primes (primes-upto (sqrt n))]) 
    (define (fac num factors prime-index)
      (let ([current-prime (list-ref primes prime-index)])
        (cond
          ((is-prime? num) (cons num factors))
          ((divisible-by? num current-prime)
           (fac (/ num current-prime) (cons current-prime factors) 0))
          (else (fac num factors (add1 prime-index))))))
    (fac n '() 0)))

;(factorise 600851475143)