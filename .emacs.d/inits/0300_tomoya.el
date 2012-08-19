;;; 5.5 
(setq-default tab-width 4)
;; don't use tab
(setq-default indent-tabs-mode nil)

;;; 5.9 hook
;; save +x if file begins with #!
(add-hook 'after-save-hook
          'executable-make-buffer-file-executable-if-script-p)

(add-hook 'emacs-lisp-mode-hook
          '(lambda ()
             (when (require 'eldoc nil t)
               (setq eldoc-idle-delay 0.2)
               (setq eldoc-echo-area-use-multiline-p t)
               (turn-on-eldoc-mode))))
