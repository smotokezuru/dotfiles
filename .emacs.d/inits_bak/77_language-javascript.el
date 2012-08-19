;;; *** Js2 : An improved JavaScript mode.
;;; http://code.google.com/p/js2-mode/
(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(setq js2-bounce-indent-flag t
      js2-basic-offset       2)

;;; *** Ejacs
;;; http://code.google.com/p/ejacs/
(autoload 'js-console "js-console" nil t)

