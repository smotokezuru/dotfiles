;;; ** Anything
;;;  (auto-install-batch "anything")
(when (require 'anything-config nil t)
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
  (global-set-key (kbd "C-;") 'anything)
  (global-set-key (kbd "M-y") 'anything-show-kill-ring)
  (setq anything-idle-delay 0.3
        anything-input-idle-delay 0.2
        anything-candidate-number-limit 100
        anything-quick-update t
        anything-enable-shortcuts 'alphabet
        anything-su-or-sudo "sudo"
        anything-kill-ring-threshold 5))

;;; *** Anything Split Window
(defun anything-split-window (buf)
  (split-window)
  (other-window 1)
  (switch-to-buffer buf))
(setq anything-display-function 'anything-split-window)

;;; *** Anything Project
;;; (install-elisp "http://github.com/imakado/anything-project/raw/master/anything-project.el")
(when (require 'anything-project nil t)
    (global-set-key (kbd "C-c C-f") 'anything-project)
    (setq ap:project-files-filters
          (list
           (lambda (files)
             (remove-if 'file-directory-p files)
             (remove-if '(lambda (file) (string-match-p "~$" file)) files)))))

;;; *** Anything Match Plugin
;;(auto-install-from-emacswiki "anything-match-plugin.el")
(require 'anything-match-plugin nil t)

;;; *** Anything GTags : Gtags Anything interface
;;(auto-install-from-emacswiki "anything-gtags.el")
(when (require 'anything-gtags nil t)
  (setq anything-gtags-classify t))

;;; *** Anything Complete
;;(auto-install-from-emacswiki "anything-complete.el")
(when (require 'anything-complete nil t)
  (anything-read-string-mode 1)
  (anything-lisp-complete-symbol-set-timer 150))

;;; *** Anything Kyr
;;(auto-install-from-emacswiki "anything-kyr.el")
;;(auto-install-from-emacswiki "anything-kyr-config.el")
(require 'anything-kyr-config nil t)

;;; *** anything-rcodetools
;; gem install rcodetools
;;  (when (require 'anything-rcodetools nil t)
;;    (setq rct-get-all-methods-command "refe -l"))

;;; *** Anything Migemo
(require 'anything-migemo nil t)

;;; *** Anything Show Completion
(require 'anything-show-completion nil t)

;;; *** Anything Grep
(require 'anything-grep nil t)

;;; *** Anything Hatena Bookmark
;; http://trac.codecheck.in/share/export/1401/lang/elisp/anything-hatena-bookmark/trunk/anything-hatena-bookmark.el
(if (require 'anything-hatena-bookmark nil t)
  (defalias 'htb 'anything-hatena-bookmark))

;;; *** Descbinds Anything : Yet Another `describe-bindings' with `anything'.
(when (require 'descbinds-anything nil t)
    (descbinds-anything-install)
    (key-chord-define-global "fd" 'describe-bindings))
