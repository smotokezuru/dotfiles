;;; * Editing : Basic text editing facilities.

;;; ** Editing Basics : Most basic editing facilities.
(setq-default require-final-newline t
              tab-width 4)
(delete-selection-mode t)

;;; Auto Insert
(auto-insert-mode t)
(setq auto-insert-directory "~/.emacs.d/insert/")
(define-auto-insert "\\.html" "html-template.html")
(define-auto-insert "\\.pl"   "perl-template.pl")
(define-auto-insert "\\.rb"   "ruby-template.rb")

;;; redo+.el
;;; (install-elisp-from-emacswiki "redo+.el")
(when (require 'redo+ nil t)
  (global-set-key(kbd "C-S-/") 'redo)
  (setq undo-no-redo      t
        undo-limit        600000
        undo-strong-limit 900000))

;;; ** Sense Region
;;; (install-elisp "http://taiyaki.org/elisp/sense-region/src/sense-region.el")
(if (require 'sense-region)
    (sense-region-on))

;;; ** Cua : Emulate CUA key bindings including C-x and C-c.
(cua-mode t)
(setq cua-enable-cua-keys nil)

;;; ** Killing : Killing and yanking commands.
(setq kill-whole-line t)
;;(setq backward-delete-char-untabify-method 'hungry)

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

;;; ** I18n : Internationalization and alternate character-set support.

;;; *** Mule : MULE Emacs internationalization.
(set-language-environment 'Japanese)
(prefer-coding-system 'utf-8)
(setq file-name-coding-systemd 'utf-8
      locale-coding-system 'utf-8)

(when (featurep 'ns)
    (require 'ucs-normalize)
    (prefer-coding-system 'utf-8-hfs)
    (setq file-name-coding-systemd 'utf-8-hfs
          locale-coding-system 'utf-8-hfs))

;(set-default-coding-systems    'utf-8)
;(set-buffer-file-coding-system 'utf-8)
;(set-terminal-coding-system    'utf-8)
;(set-keyboard-coding-system    'utf-8)
;(set-selection-coding-system   'utf-8)
;(set-clipboard-coding-system (cond ((featurep 'mac-carbon)  'sjis-mac)
;                                   ((eq window-system 'w32) 'sjis-dos)
;                                   (t 'utf-8)))
;(utf-translate-cjk-mode (memq window-system '(w32 x)))

;;; Hippie Expand: Expand text trying various ways to find its expansion.
(setq hippie-expand-try-functions-list
      '(try-complete-file-name-partially
        try-complete-file-name
        try-expand-dabbrev
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill
        try-complete-lisp-symbol-partially
        try-complete-lisp-symbol))
