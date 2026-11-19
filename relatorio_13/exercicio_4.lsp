;https://onecompiler.com/commonlisp/459nc6eu9

(defstruct dominio
  nome
  elemento
  dificuldade
  mora)

(defun bonus-elemental (elemento)
  (case elemento
    (:electro  1.5)
    (:hydro    1.2)
    (otherwise 1)))

(defun recompensa-final (d)
  (* (dominio-mora d) (bonus-elemental (dominio-elemento d))))

(defun rota (lista dificuldade-maxima)
  (let* ((filtrados (remove-if-not
                     (lambda (d) (<= (dominio-dificuldade d) dificuldade-maxima))
                     lista))
         (textos (mapcar
                  (lambda (d)
                    (format nil "~a - Recompensa Final: ~,2f mora"
                            (dominio-nome d)
                            (recompensa-final d)))
                  filtrados)))
    textos))

(defun main ()
  (let ((dominios
          (list
           (make-dominio :nome "Jardim de Cecilia"      :elemento :hydro   :dificuldade 2 :mora 1000)
           (make-dominio :nome "Palacio de Lianshan"    :elemento :electro :dificuldade 3 :mora 1500)
           (make-dominio :nome "Pico de Vindagnyr"      :elemento :cryo    :dificuldade 4 :mora 2000)
           (make-dominio :nome "Vale das Lembrancas"    :elemento :anemo   :dificuldade 1 :mora 800)
           (make-dominio :nome "Palacio Oculto de Zhou" :elemento :pyro    :dificuldade 5 :mora 2500))))
    (format t "--- Rota (Dificuldade Maxima: 3) ---~%")
    (dolist (texto (rota dominios 3))
      (format t "~a~%" texto))

    (format t "~%--- Total de Mora (Todos os Dominios) ---~%")
    (format t "Total: ~,2f mora~%"
            (reduce #'+ (mapcar #'recompensa-final dominios)))

    (format t "~%--- Teste de Alteracao com copy-dominio e setf ---~%")
    (let* ((original (car dominios))
           (copia    (copy-dominio original)))
      (setf (dominio-mora copia) 9999)
      (format t "Mora da copia (~a): ~a~%"
              (dominio-nome copia)
              (dominio-mora copia))
      (format t "Mora do original (~a): ~a~%"
              (dominio-nome original)
              (dominio-mora original)))))

(main)
