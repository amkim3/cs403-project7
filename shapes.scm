(define (get-conditions args)
      (define result (string-append (drop 2 args))))

(define (not-multiple-of-three? str)
  (let ((words (string-splitter str)))
    (not (zero? (module (length words) 3)))))

(define (perform action fileName . rest-args)
  (let ((conditions ""))
    (if (not (string-null? rest-args))
      (set! conditions (get-conditions rest-args))
      (set! conditions "")
      )
  )
    (if (not (string=? conditions ""))
      (if (not-multiple-of-three? conditions)
      (display "Incorrect number of arguments.")#f))
    (if (not (file-exists? fileName))
        (begin
          (display (string-append "\nUnable to open " fileName " for reading."))
          (newline)
          #f)
        (begin
          (let ((input-port (open-input-file fileName)))
            (let loop ((line (read-line input-port)))
              (cond ((eof-object? line)
                (close-input-port input-port)
                'done)
              (else
                (newline)
                (display line)
                (loop (read-line input-port)))))))))
    ; I do not know if the following is needed, basically if file exists but can't be read?
    ; (let ((input-port (open-input-file filename)))
    ;   (if (input-port? input-port)
    ;       input-port
    ;       (begin
    ;         (display (string-append "\nUnable to open " fileName " for reading."))
    ;         (newline)
    ;         (exit 1))))))
  