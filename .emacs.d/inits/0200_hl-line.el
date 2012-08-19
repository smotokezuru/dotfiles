;;; Hl Line: Highlight the current line.
(defface my-hl-line-face
  '((((class color) (background dark))
     (:background nil t))
    (((class color) (background light))
     (:background "LightGoldenrodYellow" t))
    (t (:bold t)))
  "hl-line's my face")
(set-face-underline-p 'my-hl-line-face "pink")
(setq hl-line-face 'my-hl-line-face)
(global-hl-line-mode t)
