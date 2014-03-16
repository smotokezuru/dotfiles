;;; ** Jaspace
;;; http://homepage3.nifty.com/satomii/software/jaspace.el
(when (require 'jaspace nil t)
  (setq jaspace-alternate-eol-string "$\n"
        jaspace-highlight-tabs ?>)
  (custom-set-faces '(jaspace-highlight-eol-face ((t (:foreground "Gray10")))))
  (if (require 'diminish nil t)
      (diminish 'jaspace-mode)))
