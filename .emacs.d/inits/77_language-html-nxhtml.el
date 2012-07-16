;;; nxhtml
;;; http://ourcomments.org/Emacs/nXhtml/doc/nxhtml.html
;(load "autostart.el")
;(setq nxhtml-skip-welcome t)
;(add-hook 'nxhtml-mode-hook
;          '(lambda ()
;            (local-set-key "\C-c\C-e" 'nxml-complete)))
;
;(defface mumamo-background-chunk-major
;  '((t (:background "black")))
;  "*Face used by mumamo.")
;(defface mumamo-background-chunk-submode
;  '((t (:background "gray20")))
;  "*Face used by mumamo.")
;
;(defmacro nxhtml-with-anything-sources (sources &rest body)
;  (let ((saved-anything-souces (gensym)))
;    `(let ((,saved-anything-souces anything-sources))
;       (unwind-protect
;           (let ((anything-sources ,sources))
;             ,@body)
;         (setq anything-sources ,saved-anything-souces)))))
;
;(defadvice popcmp-completing-read (around popcml-with-anything)
;  (let* ((table (ad-get-arg 1))
;         (alt-sets (apply 'append (mapcar 'cdr (ad-get-arg 9))))
;         ;(apply 'append (mapcar 'cdr nxhtml-tag-sets)))
;         (cands (cond ((not (listp table)) alt-sets)
;                      (t table)))
;         (source
;          `((name . "nxhtml-completion")
;            (candidates . ,cands)
;            (action . (("select" . (lambda (candidate)
;                                     (setq ad-return-value candidate))))))))
;    (nxhtml-with-anything-sources (list source)
;                                  (anything))))
;
