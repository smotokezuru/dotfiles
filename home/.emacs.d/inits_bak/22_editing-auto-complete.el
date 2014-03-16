;;; ** Auto Complete

;;;  (auto-install-batch "auto-complete")
(when (require 'auto-complete-config nil t)
   (global-auto-complete-mode t)
;   (set-face-background 'ac-selection-face "steelblue")
;   (set-face-background 'ac-menu-face "skyblue")
   ;; (define-key ac-complete-mode-map "\t" 'ac-expand)
   ;; (define-key ac-complete-mode-map "\r" 'ac-complete)
   ;; (define-key ac-complete-mode-map "\C-n" 'ac-next)
   ;; (define-key ac-complete-mode-map "\C-p" 'ac-previous)
   (setq ac-auto-start t
         ac-sources '(ac-source-yasnippet
                      ac-source-abbrev
                      ac-source-words-in-buffer))
   (add-to-list 'ac-modes 'eshell-mode)
   (add-hook 'emacs-lisp-mode-hook
             (lambda ()
               (make-local-variable 'ac-sources)
               (setq ac-sources '(ac-source-yasnippet
                                  ac-source-abbrev
                                  ac-source-words-in-same-mode-buffers
                                  ac-source-symbols))))
   (add-hook 'eshell-mode-hook
             (lambda ()
               (make-local-variable 'ac-sources)
               (setq ac-sources '(ac-source-yasnippet
                                  ac-source-abbrev
                                  ac-source-files-in-current-dir
                                  ac-source-words-in-buffer))))
   (if (require 'diminish nil t)
      (diminish 'auto-complete-mode))
   ;; http://www.emacswiki.org/cgi-bin/wiki/download/ac-anything.el
   (if (require 'ac-anything nil t)
     (define-key ac-complete-mode-map (kbd "C-:") 'ac-complete-with-anything)))
