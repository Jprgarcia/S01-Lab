;https://onecompiler.com/commonlisp/459nbyj48

(defstruct criatura
  nome
  bioma
  profundidade
  perigo)

(defun texto-do-perigo (perigo)
  (case perigo
    (:inofensiva "Inofensiva")
    (:agressiva  "Agressiva")
    (:leviata    "Leviata: mantenha distancia")
    (otherwise   "Desconhecido")))

(defun descreve-criatura (c)
  (format nil "~a | Bioma: ~a | Profundidade: ~am | Perigo: ~a"
          (criatura-nome c)
          (criatura-bioma c)
          (criatura-profundidade c)
          (texto-do-perigo (criatura-perigo c))))

(defun abaixo-de (metros catalogo)
  (remove-if-not (lambda (c) (> (criatura-profundidade c) metros))
                 catalogo))

(defparameter *catalogo*
  (list
   (make-criatura :nome "Peeper"           :bioma "Safe Shallows" :profundidade 20  :perigo :inofensiva)
   (make-criatura :nome "Stalker"          :bioma "Kelp Forest"   :profundidade 80  :perigo :agressiva)
   (make-criatura :nome "Crabsquid"        :bioma "Deep Grand Reef" :profundidade 350 :perigo :agressiva)
   (make-criatura :nome "Reaper Leviathan" :bioma "Crash Zone"    :profundidade 250 :perigo :leviata)))

(defun main ()
  (format t "--- Catalogo Completo de 4546B ---~%")
  (dolist (texto (mapcar #'descreve-criatura *catalogo*))
    (format t "~a~%" texto))

  (let ((profundas (abaixo-de 100 *catalogo*)))
    (format t "~%--- Criaturas Abaixo de 100m ---~%")
    (dolist (texto (mapcar #'descreve-criatura profundas))
      (format t "~a~%" texto))
    (format t "Total encontradas: ~a~%" (length profundas))))

(main)
