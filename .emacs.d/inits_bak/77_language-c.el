;;; *** C : Support for the C language and related languages.
(setq c-default-style "k&r")
(setq c-mode-common-hook
      '(lambda ()
         (c-toggle-hungry-state 1)
         (setq c-basic-offset 4)
         (define-key c-mode-base-map "\C-m" 'newline-and-indent)
         (define-key c-mode-map "\C-c\C-c" 'compile)
         (define-key c-mode-map "\C-c\C-n" 'next-error)
         (gtags-mode t)
         (flymake-mode)
         (font-lock-add-keywords nil '(("^[^\n]\\{80\\}\\(.*\\)$"
                                        1 font-lock-warning-face t)))

;         (gtags-make-complete-list) ; deprecated in emacs23
))

(add-to-list 'compilation-finish-functions
      (lambda (buf str)
        (if (string-match "exited abnormally" str)
            (message "compilation errors, press C-x ` to visit")
          (run-at-time 0.5 nil 'delete-windows-on buf)
          (message "no compilation errors."))))

(define-key mode-specific-map "c" 'compile)
(setq compilation-window-height 8)
(add-to-list 'auto-mode-alist '("\\.cpp$" . c++-mode))
