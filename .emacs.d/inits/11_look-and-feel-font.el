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
  ;; (setq fixed-width-use-QuickDraw-for-ascii t)
  ;; (setq mac-allow-anti-aliasing t)
  ;; (set-face-attribute 'default nil
  ;;                     :family "Monaco"
  ;;                     :height 120)
  ;; (set-fontset-font (frame-parameter nil 'font)
  ;;                   'japanese-jisx0208
  ;;                   '("Hiragino Maru Gothic Pro" . "iso10646-1"))
  ;; (set-fontset-font (frame-parameter nil 'font)
  ;;                   'japanese-jisx0212
  ;;                   '("Hiragino Maru Gothic Pro" . "iso10646-1"))
  ;; (set-fontset-font (frame-parameter nil 'font)
  ;;                   'mule-unicode-0100-24ff
  ;;                   '("Lucida Grande" . "iso10646-1"))
  ;; ;; 日本語と英語を2:1の大きさにするための設定
  ;; (setq face-font-rescale-alist
  ;;       '(("^-apple-Hiragino_Maru_Gothic_Pro.*" . 1.2)
  ;;         (".*osaka-bold.*" . 1.2)
  ;;         (".*osaka-medium.*" . 1.2)
  ;;         (".*courier-bold-.*-mac-roman" . 1.0)
  ;;         (".*monaco cy-bold-.*-mac-cyrillic" . 0.9)
  ;;         (".*monaco-bold-.*-mac-roman" . 0.9)
  ;;         ("-cdac$" . 1.3)
  ;;         ))
(set-frame-font "ricty-15")
(add-to-list 'default-frame-alist '(font . "ricty-13.5"))
)
