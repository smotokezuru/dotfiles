;;; Ffap: Find file or URL at point.
(ffap-bindings)

;;; Uniquify: Unique buffer names dependent on file name.
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets
      uniquify-ignore-buffers-re "*[^*]+*")

;;; Iswitchb: Switch between buffers using substrings.
;;; バッファ切り替えの強化
;;; read-buffer-function = anything-read-buffer
;(iswitchb-mode t)
;(setq read-buffer-function     'iswitchb-read-buffers
;      iswitchb-regexp           nil
;      iswitchb-prompt-newbuffer nil)

;;; Ido: Switch between files using substrings.
;;; Iswitchb の強化版
;(ido-mode t)
;(ido-everywhere t)

;;; Recentf: Maintain a menu of recently opened files.
;;; (install-elisp-from-emacswiki "recentf-ext.el")
(setq recentf-max-saved-items 500
      recentf-exclude         '("/TAGS$" "/var/tmp/"))
(require 'recentf-ext)

;;; Bookmark group: Setting, annotation and jumping to bookmarks.
;;; C-x r m: bookmark-set
;;; C-x r l: bookmark-bmenu-list
(setq bookmark-save-flag 1)

;;; ** Server : Emacs running as a server process.
(server-start)
(add-hook 'server-done-hook '(lambda () (unless server-clients (iconify-frame))))
(global-set-key (kbd "C-x C-c") 'server-edit)
(defalias 'exit 'save-buffers-kill-emacs)

;;; ** Dired
(put 'dired-find-alternate-file 'disabled nil)
(setq dired-recursive-copies  'always
      dired-recursive-deletes 'top    ; just one time y-or-n-p on rm -R
      dired-listing-switches  "-alh")
;(install-elisp "http://www.meadowy.org/~shirai/elips/sorter.el")
(add-hook 'dired-load-hook (lambda () (require 'sorter nil t)))

;;; *** Wdired
(require 'wdired)
(define-key dired-mode-map "r" 'wdired-change-to-wdired-mode)
