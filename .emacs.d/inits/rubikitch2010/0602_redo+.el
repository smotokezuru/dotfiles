;;; redo+.el
;;; (auto-install-from-emacswiki "redo+.el")
(when (require 'redo+ nil t)
  ;; see also: ~/.emacs.d/inits/9999_define-key.el
  (setq undo-no-redo      t
        undo-limit        600000
        undo-strong-limit 900000))
