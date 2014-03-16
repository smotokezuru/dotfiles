;;;; Keybind

;;; ** Global key bindings
(global-set-key (kbd "C-h")     'backward-delete-char-untabify)
(global-set-key (kbd "M-?")     'help-for-help)
(global-set-key (kbd "C-c i")   'indent-region)
(global-set-key (kbd "C-c C-i") 'dabbrev-expand)
(global-set-key (kbd "C-c ;")   'comment-region)
(global-set-key (kbd "C-c :")   'uncomment-region)
(global-set-key (kbd "M-g")     'goto-line)
(global-set-key (kbd "C-x C-m") 'execute-extended-command)
(global-set-key (kbd "C-c C-m") 'execute-extended-command)
(global-set-key (kbd "C-w")     'backward-kill-word)
(global-set-key (kbd "C-x C-k") 'kill-region)
(global-set-key (kbd "C-c C-k") 'kill-region)
;(global-unset-key ("\C-\\") ; disable swiching IM
(global-unset-key (kbd "C-z"))   ; disable suspend emacs

;;; ** Command Alius
(defalias 'qrr 'query-replace-regexp)
(defalias 'qr  'query-replace)
(defalias 'cg 'customize-group)
(defalias 'cv 'customize-variable)

;;; ** Key Settings for OSX Cocoa
(when (featurep 'ns)
  ;; prevent key interception by osx's input method
  (setq mac-pass-control-to-system nil
        mac-pass-command-to-system nil
        mac-pass-option-to-system  nil
        mac-command-key-is-meta    nil)
  (setq ns-command-modifier        'meta
        ns-alternate-modifier      'super)
  (define-key global-map [ns-drag-file] 'ns-find-file))

;;; ** Adding CamelCase Separation
(define-category ?U "Upper Case")
(define-category ?L "Lower Case")
(modify-category-entry (cons ?A ?Z) ?U)
(modify-category-entry (cons ?a ?z) ?L)
(add-to-list 'word-separating-categories (cons ?L ?U))
