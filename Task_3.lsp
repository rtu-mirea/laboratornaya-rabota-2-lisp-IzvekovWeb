;; Task_3
(defun compress(lst &aux (cur (car lst)) (len 1) tail)
  (cons
   (if (= cur (cadr lst))
      (list (setq len (loop for i in lst when (/= i cur) do (loop-finish) count t)) cur) cur)
   (if (setq tail (subseq lst len)) (compress tail)))
)


(defun decompress(lst)
  (loop for elem in lst
    if (integerp elem) collect elem
    if (listp elem) nconc (make-list (car elem) 
  :initial-elem (cadr elem))))


(print (compress (list 19 19 19 25 25 25 32 32 32 44 54 66 70 70 70)))

(print (decompress (list (list 11 41) 9 10 (list 33 15) (list 75 27))))