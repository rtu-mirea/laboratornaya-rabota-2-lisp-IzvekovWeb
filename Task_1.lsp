;; Task_1
;; Addition
(defun addElement(lst index value) 
    (if (= index 0) 
        (setf lst (append (list value) lst))) 
    (if (> index 0) 
        (push value (cdr (nthcdr (- index 1) lst)))) 
lst) 

(addElement (list 5 34 3 1 9 2 7) 0 3)

;; Delete
(defun delElement (index lst) 
    (if lst
    (if (equal index (car lst)) 
        (delElement index (cdr lst)) 
        (cons (car lst) (delElement index (cdr lst)))) 
nil))
  
(delElement 3 (list 7 3 1 9 9 8 2 9))

;; Find
(defun findElem (el lst)
    (loop
    for element in lst
    and position from 0
    when (eql element el)
        collect position))

(findElem 5 (list 2 5 9 11)) ;; Вызов функции
