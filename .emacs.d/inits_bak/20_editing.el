;;; * Editing : Basic text editing facilities.

;;; ** Indent : Indentation commands.
(setq-default tab-stop-list
      '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76)
      indent-tabs-mode nil)

;;; ** Fill : Indenting and filling text.
;;; *** Comment : Indenting and filling of comments.
(setq comment-style 'multi-line)

;;; *** Longlines : Automatic wrapping of long lines when loading files.
(key-chord-define-global "lm" 'longlines-mode)
(add-hook 'longlines-mode-hook
          (lambda () (longlines-show-hard-newlines)))

;;; ** Mouse : Input from the mouse.
(mouse-wheel-mode t)


;;; Hippie Expand: Expand text trying various ways to find its expansion.
(setq hippie-expand-try-functions-list
      '(try-complete-file-name-partially
        try-complete-file-name
        try-expand-dabbrev
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill
        try-complete-lisp-symbol-partially
        try-complete-lisp-symbol))
