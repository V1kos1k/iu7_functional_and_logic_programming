;;A\B

; (defun x_in_B (x B)
; 	(cond ((null B) nil)
; 		((equal (car B) x) 'T)
; 			(t (x_in_B x (cdr B)))))
			
; (defun f (A B)
; 	(setq A (lst_to_set A))
; 	(setq B (lst_to_set B))
; 	(rm2 nil (mapcar #'(lambda (x) 
; 		(cond  ((equal(x_in_B x B) T) nil) (t x))) A)))
		
; (defun lst_to_set (A)
; 	(maplist #'(lambda (x) 
; 		(cond  ((equal(x_in_B (car x) (cdr x)) T) nil) (t (car x)))) A))
		
; (defun my_remove (x lst) (cond ((null lst) nil)
;                      ((equal x lst) (cons (car x) (my_remove x (cdr lst)))))) 
					 
; (defun rm2 (x s)
;    (cond ((null s) nil)
;          ((equal x (car s)) (rm2 x (cdr s)))
;          (t (cons (car s) (rm2 x (cdr s))))))
		 
; ;;Дан смешанный структурированный список.
; ;;Реализовать удаление из списка, не меняя его структуры, заданных эл-ов: атома и списка

; (defun myfunk(X El)
;     (if (equalp x el)
;    	 nil
;    	 (if(listp x)
;    		 (list (myrem x el))
;    		 (list x)
;    	 )
;     )
; )

; (defun myrem (lst el)
;     (mapcan #'(lambda(X)(myfunk X El)) lst
;     )
; )


; ;///////////////////////////////




; ; найти количество элементов из заданного множества 

; (defun get-set-count (lst set)
; 	(cond ((atom lst) (if (member lst set) 1 0))
; 		(t (+ (get-set-count (car lst) set) (get-set-count (cdr lst) set)))))

; (defun insert-k (lst count k)
; 	(cond ((null lst) (list count))
; 		((equal k 0) (cons count lst))
; 		(t (cons (car lst) (insert-k (cdr lst) count (- k 1))))))

; (defun task (lst set k)
; 	(insert-k lst (get-set-count lst set) k))


(defun help())

(defun f(lst a1 a2 sum) 
	(cond
		((null lst) sum)
		((numberp (car lst)) 
			(cond 
				((equal T (and (> (car lst) a1) (< (car lst) a2))) (f (cdr lst) a1 a2 (+ sum (car lst)))) 
			  	(t (f (cdr lst) a1 a2 sum))
			)
		) 
		(t (f (cdr lst) a1 a2 sum))
	)
)




(defun f(lst a1 a2 sum) (cond((null lst) sum)((numberp (car lst)) (cond ((equal T (and (> (car lst) a1) (< (car lst) a2))) (f (cdr lst) a1 a2 (+ sum (car lst)))) (t (f (cdr lst) a1 a2 sum)))) (t (f (cdr lst) a1 a2 sum))))




























