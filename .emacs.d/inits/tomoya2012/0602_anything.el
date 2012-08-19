;;; ** Anything
;;;  (auto-install-batch "anything")
;;; anything.el
;;; anything-config.el
;;; anything-match-plugin.el
;;; anything-migemo.el
;;; anything-complete.el
;;; anything-show-completion.el
;;; anything-auto-install.el
;;; descbinds-anything.el
;;; anything-grep.el
;;; anything-menu.el
;;; anything-gtags.el
;;; ipa.el
;;; anything-ipa.el
;;; anything-startup.el
;;; anything-obsolete.el
;(setq anything-sources
;      '(anything-c-source-buffer-not-found
;        anything-source-bookmarks
;        anything-c-source-info-pages
;        anything-c-source-info-elisp
;        anything-source-locate-r
;        anything-c-source-locate
;        anything-c-source-emacs-commands))
;;(setq anything-type-actions (list anything-actions-buffer
;;                                  anything-actions-file
;;                                  anything-actions-sexp))

(when (require 'anything nil t)
  (setq anything-idle-delay 0.3
        anything-input-idle-delay 0.2
        anything-candidate-number-limit 100
        anything-quick-update t
        anything-enable-shortcuts 'alphabet
        anything-kill-ring-threshold 5)
  ;; see also: ~/.emacs.d/inits/9999_define-key.el

  ;; Anything Config
  (when (require 'anything-config nil t)
    (setq anything-su-or-sudo "sudo"))

  ;; ;; Anything Match
  ;; (require 'anything-match-plugin nil t)

  ;; ;; Anything migemo
  ;; (when (and (executable-find "cmigemo")
  ;;            (require 'migemo nil t))
  ;;   (require 'anything-migemo nil t))

  ;; ;; Anything Complete
  ;; (when (require 'anything-complete nil t)
  ;;   (anything-read-string-mode 1)
  ;;   (anything-lisp-complete-symbol-set-timer 150))

  ;; ;; Anything Show Completion
  ;; (require 'anything-show-completion nil t)

  ;; ;; Anything Auto Install
  ;; (when (require 'auto-install nil t)
  ;;   (require 'anything-auto-install nil t))

  ;; ;; Descbinds Anything : Yet Another `describe-bindings' with `anything'.
  ;; (when (require 'descbinds-anything nil t)
  ;;   (descbinds-anything-install)
  ;;   (when (require 'key-chord nil t)
  ;;     (key-chord-define-global "fd" 'describe-bindings)))

  ;; ;; Anything Grep
  ;; (require 'anything-grep nil t)

  ;; Anything GTags : Gtags Anything interface
  (when (require 'anything-gtags nil t)
    (setq anything-gtags-classify t)))
