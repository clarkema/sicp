;;; Define a procdure that takes three numbers as arguments and returns
;;; the sum of the squares of the two larger numbers

(define (square x)
  (* x x))

(define (square-sum a b c)
  (fold-left + 0
	     (map square
		  (cdr (sort (list a b c) <)))))

