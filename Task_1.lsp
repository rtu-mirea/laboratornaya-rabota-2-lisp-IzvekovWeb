;; Task_1
;; Addition

(print (list 78 23 9 32 1 66))

(defun addElem(lst id newelem)
    (if (= id 0)
        (setf lst (append (list newelem) lst)))
    (if (> id 0)
        (push newelem (cdr (nthcdr (- id 1) lst))))
    lst)
  
(addElem (78 23 9 32 1 66) 0 55)

;; Delete

(defun deleteElem(lst id)
    (append (subseq lst 0 id) (nthcdr (+ id 1) lst)))
  
(deleteElem (78 23 9 32 1 66) 0)

;; Find

(defun findElem (lst elem)
    (setq i 0)
    (setq elements '())
    (loop for x in lst
        do (setq i (+ i 1))
        do (if (= to-find x)
                (setq elem (append elem (list i))))
        )
    elem)

(print (findElem '(78 23 9 32 1 66) 9))