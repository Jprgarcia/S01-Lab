;https://onecompiler.com/commonlisp/459nc3t5v

(defstruct garota-magica
  nome
  escuridao
  bruxas)

(defun escuridao-total (grupo)
  (if (null grupo)
      0
      (+ (garota-magica-escuridao (car grupo))
         (escuridao-total (cdr grupo)))))

(defun total-de-bruxas (grupo)
  (reduce #'+ (mapcar #'garota-magica-bruxas grupo)))

(defun purifica (g quantidade)
  (make-garota-magica
   :nome      (garota-magica-nome g)
   :escuridao (if (>= quantidade (garota-magica-escuridao g))
                  0
                  (- (garota-magica-escuridao g) quantidade))
   :bruxas    (garota-magica-bruxas g)))

(defun main ()
  (let* ((homura (make-garota-magica :nome "Homura" :escuridao 40 :bruxas 12))
         (mami   (make-garota-magica :nome "Mami"   :escuridao 25 :bruxas 8))
         (sayaka (make-garota-magica :nome "Sayaka" :escuridao 70 :bruxas 5))
         (grupo  (list homura mami sayaka)))
    (format t "--- Grupo Inicial ---~%")
    (format t "Escuridao total: ~a~%" (escuridao-total grupo))
    (format t "Total de bruxas derrotadas: ~a~%" (total-de-bruxas grupo))

    (let* ((madoka     (make-garota-magica :nome "Madoka" :escuridao 10 :bruxas 1))
           (grupo-novo (cons madoka grupo)))
      (format t "~%--- Novo Contrato (cons) ---~%")
      (format t "Escuridao do grupo original: ~a~%" (escuridao-total grupo))
      (format t "Escuridao do novo grupo: ~a~%" (escuridao-total grupo-novo)))

    (let ((sayaka-purificada (purifica sayaka 50)))
      (format t "~%--- Purificacao ---~%")
      (format t "Escuridao original de ~a: ~a~%"
              (garota-magica-nome sayaka)
              (garota-magica-escuridao sayaka))
      (format t "Escuridao apos purificar: ~a~%"
              (garota-magica-escuridao sayaka-purificada)))))

(main)
