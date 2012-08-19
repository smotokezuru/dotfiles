;;; *** Font Settings

;;; **** BDF Font Settings For GNU Emacs
(when (eq window-system 'x)
  (create-fontset-from-fontset-spec
   (concat
    "-mplus-*-medium-r-*--12-*-*-*-*-*-fontset-mplus_12r"
    ",ascii:"
    "-mplus-fxd-medium-R-semicondensed--12-120-75-75-C-60-iso8859-15"
    ",latin-iso8859-1:"
    "-mplus-fxd-medium-R-semicondensed--12-120-75-75-C-60-iso8859-15"
    ",katakana-jisx0201:"
    "-mplus-gothic-medium-R-normal--12-120-75-75-C-60-jisx0201.1976-0"
    ",japanese-jisx0208:"
    "-mplus-gothic-medium-R-normal--12-120-75-75-C-120-jisx0208.1990-0"))
  (create-fontset-from-fontset-spec
   (concat
    "-mplus-*-medium-r-*--12-*-*-*-*-*-fontset-mplus_12b"
    ",ascii:"
    "-mplus-fxd-bold-R-semicondensed--12-120-75-75-C-60-iso8859-15"
    ",latin-iso8859-1:"
    "-mplus-fxd-bold-R-semicondensed--12-120-75-75-C-60-iso8859-15"
    ",katakana-jisx0201:"
    "-mplus-gothic-bold-R-normal--12-120-75-75-C-60-jisx0201.1976-0"
    ",japanese-jisx0208:"
    "-mplus-gothic-bold-R-normal--12-120-75-75-C-120-jisx0208.1990-0"))
  (set-frame-font "fontset-mplus_12r")
)

;;; *** TTF for NTEmacs
(when (eq window-system 'w32)
  (set-face-attribute 'default nil
                      :family "Migu 1m"
                      :height 120)
  (set-fontset-font "fontset-default"
                    'japanese-jisx0208
                    '("Meiryo" . "iso10646-1"))
  (set-fontset-font "fontset-default"
                    'katakana-jisx0201
                    '("Meiryo" . "iso10646-1"))
  )

;;; *** TTF for Cocoa Emacs.
(when (eq window-system 'ns)
  ;; (set-frame-font "ricty-14")
  ;; (add-to-list 'default-frame-alist '(font . "ricty-14"))
  (let ((fontspec (font-spec :family "Ricty")))
    (set-face-attribute 'default nil :family "Ricty" :height 140)
    (set-fontset-font nil 'japanese-jisx0213.2004-1 fontspec)
    (set-fontset-font nil 'japanese-jisx0213-2 fontspec)
    (set-fontset-font nil 'katakana-jisx0201 fontspec)
    (set-fontset-font nil '(#x0080 . #x024F) fontspec)
    (set-fontset-font nil '(#x0370 . #x03FF) fontspec)))
