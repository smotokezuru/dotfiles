;;; ** Outline : Support for hierarchical outlining.
(setq outline-minor-mode-prefix "\M-c")
(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (define-sequential-command seq-outline-toggle
              hide-subtree show-subtree)
            (setq outline-regexp ";;; [*\f]+")
            (outline-minor-mode t)))
(global-set-key "\M-i" 'seq-outline-toggle)

