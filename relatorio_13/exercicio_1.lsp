;https://onecompiler.com/commonlisp/459nbpubp

(defstruct erva
  nome
  preco-por-grama
  toxicidade)

(defun classifica-erva (e)
  (cond ((>= (erva-toxicidade e) 7) "veneno")
        ((>= (erva-toxicidade e) 4) "use com cuidado")
        (t "segura")))

(defun preco-da-dose (e gramas)
  (* (erva-preco-por-grama e) gramas))

(defun descreve-erva (e)
  (format nil "~a - R$~,2f/g (~a)"
          (erva-nome e)
          (erva-preco-por-grama e)
          (classifica-erva e)))

(defun aviso (e)
  (if (>= (erva-toxicidade e) 7)
      "Aviso: Maomao vai testar esta erva em si mesma antes!"
      "Liberada para o paciente."))

(defun main ()
  (let* ((e1 (make-erva :nome "Camomila" :preco-por-grama 2.50 :toxicidade 1))
         (e2 (make-erva :nome "Papoula"  :preco-por-grama 12.00 :toxicidade 5))
         (e3 (make-erva :nome "Beladona" :preco-por-grama 45.00 :toxicidade 9))
         (estoque (list e1 e2 e3)))
    (format t "--- Estoque da Farmacia ---~%")
    (dolist (e estoque)
      (format t "~a~%" (descreve-erva e))
      (format t "  ~a~%" (aviso e)))
    (format t "~%--- Preco da Dose ---~%")
    (format t "Dose de 5g de ~a: R$~,2f~%"
            (erva-nome e2)
            (preco-da-dose e2 5))))

(main)
