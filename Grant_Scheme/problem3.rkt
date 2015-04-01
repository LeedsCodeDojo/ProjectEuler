#lang racket

(require "eutils.rkt")

; The prime factors of 13195 are 5, 7, 13 and 29.
; What is the largest prime factor of the number 600851475143?

(define (factor-fermat n)
  (define (fermat a b)
    (cond
      ((square? b) (list (- a (sqrt b)) (+ a (sqrt b))))
      (else (fermat (add1 a) (- (* (add1 a) (add1 a)) n)))))
  (let ((a (ceiling (sqrt n))))
    (fermat a (- (* a a) n))))

(define (largest-prime-factor-of n)
  (define (factorise queue)
    (let* ([sorted-queue (sort queue >)]
           [highest-queue-item (car sorted-queue)]
           [factors (factor-fermat highest-queue-item)])
      (cond
        ((or (= 1.0 (car factors)) (= 1.0 (cadr factors))) highest-queue-item)
        (else (factorise (cons (car factors) (cons (cadr factors) (cdr sorted-queue))))))))
  (factorise (list n)))
    
(largest-prime-factor-of 600851475143)
