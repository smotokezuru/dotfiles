;;;; Keybind

;;; ** Global key bindings
(global-set-key (kbd "C-h")     'backward-delete-char-untabify)
(global-set-key (kbd "M-?")     'help-for-help)
(global-set-key (kbd "C-c i")   'indent-region)
(global-set-key (kbd "C-c C-i") 'dabbrev-expand)
(global-set-key (kbd "C-c ;")   'comment-region)
(global-set-key (kbd "C-c :")   'uncomment-region)
(global-set-key (kbd "M-g")     'goto-line)
(global-set-key (kbd "M-m")     'newline-and-indent)
(global-set-key (kbd "C-x C-m") 'execute-extended-command)
(global-set-key (kbd "C-c C-m") 'execute-extended-command)
(global-set-key (kbd "C-w")     'backward-kill-word)
(global-set-key (kbd "C-x C-k") 'kill-region)
(global-set-key (kbd "C-c C-k") 'kill-region)
;(global-unset-key ("\C-\\") ; disable swiching IM
(global-unset-key (kbd "C-z"))   ; disable suspend emacs

(global-set-key (kbd "M-y") 'anything-show-kill-ring)

;;; based on elisp library
(global-set-key (kbd "C-x C-j") 'skk-mode) ; ddskk
(global-set-key (kbd "C-t") 'dmacro-exec)  ; dmacro
(global-set-key (kbd "C-;") 'anything)     ; anything
(global-set-key (kbd "M-y") 'anything-show-kill-ring) ; anything

;; color-moccur
(global-set-key (kbd "M-o") 'occur-by-moccur)
(global-set-key (kbd "C-M-o") 'dmoccur)

;; anything-c-moccur
;(global-set-key (kbd "M-o")   'anything-c-moccur-occur-by-moccur)
;(global-set-key (kbd "C-M-o") 'anything-c-moccur-dmoccur)

;; point-undo
(global-set-key (kbd "<f7>")   'point-undo)
(global-set-key (kbd "S-<f7>") 'point-redo)

;; smartchr
;(global-set-key (kbd "=") (smartchr '("=" "==" "===")))
;(global-set-key (kbd "{") (smartchr '("{`!!' }" "{")))

;; server
(global-set-key (kbd "C-x C-c") 'server-edit)
(defalias 'exit 'save-buffers-kill-emacs)

;; redo+
(global-set-key (kbd "C-'") 'redo)

;; hippie-expand
(global-set-key (kbd "M-/") 'hippie-expand)
;; seqencial-command
;; (global-set-key (kbd "C-SPC") 'seq-mark)
;; bm
(global-set-key (kbd "M-SPC") 'bm-toggle)
(global-set-key (kbd "M-[")   'bm-previous)
(global-set-key (kbd "M-]")   'bm-next)

;; goto-chg
(global-set-key (kbd "<f8>")   'goto-last-change)
(global-set-key (kbd "S-<f8>") 'goto-last-change-reverse)

;; shell-pop
(global-set-key (kbd "<f8>")   'shell-pop)


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
;; (define-category ?U "Upper Case")
;; (define-category ?L "Lower Case")
;; (modify-category-entry (cons ?A ?Z) ?U)
;; (modify-category-entry (cons ?a ?z) ?L)
;; (add-to-list 'word-separating-categories (cons ?L ?U))

;; key-chord
(key-chord-define-global "hj" 'undo)
(key-chord-define-global "jk" 'view-mode)
(key-chord-define-global ",." "<>\C-b")
(key-chord-define-global "()" "()\C-b")
