;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Example 8:29|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (sort-num lon)
  (cond
    [(empty? lon) empty]
    [else
     (insert-num
      (first lon)
      (sort-num (rest lon)))]))

(define (insert-num num lon)
  (cond
    [(empty? lon) (cons num empty)]
    [(< num (first lon))
     (cons num lon)]
    [else
     (cons (first lon)
           (insert-num num (rest lon)))]))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define-struct person (fn ln age))
;; a person is a (make-person String String Natural)

(define (fn-for-person p)
  (...
   (person-fn p)
   (person-ln p)
   (person-age p)))

;;(define (fn-for-lop lop)
 ;; (cond
  ;;  [(empty? lop) ...]
   ;; [else
    ;; (...
     ;; (fn-for-person (first lop))
      ;;natural helper
     ;; (fn-for-lop (rest lop)))]))

(define (sort-person lop)
  (cond [(empty? lop) ""]
        [else
         (insert-person
          (first lop)
          (sort-person (rest lop)))]))

(define (insert-person p lop)
  (cond
    [(empty? lop) (cons p empty)]
    [(older? p (first lop))
     (cons p lop)]
    [else
     (cons (first lop)
           (insert-person p (rest lop)))]))

(define (older? p1 p2)
  (if (