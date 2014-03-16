;;; ** Ispell : User variables for Emacs ispell interface.
;(setq-default ispell-program-name "aspell")
(setq-default ispell-program-name "aspell")
(eval-after-load "ispell"
  '(add-to-list 'ispell-skip-region-alist '("[^\000-\377]+")))

;;; *** Flyspell : Spell checking on the fly.
;; avoid keybind conflict with Anything
(custom-set-variables
 '(flyspell-auto-correct-binding (kbd "C-:")))

(add-hook 'org-mode-hook
          (lambda()
            (flyspell-mode)
            (when (require 'imenu-tree nil t)
              (define-key org-mode-map ("M-h") 'imenu-tree))))
