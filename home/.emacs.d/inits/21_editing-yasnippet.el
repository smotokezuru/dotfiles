;;; yasnippet.el
;;; http://code.google.com/p/yasnippet/
;;; (install-elisp-from-emacswiki "yasnippet-config.el")
;;; anything-c-yasnippet
;;; http://svn.coderepos.org/share/lang/elisp/anything-c-yasnippet/anything-c-yasnippet.el
;;; http://d.hatena.ne.jp/IMAKADO/20080324/1206370301
(when (require 'yasnippet-config nil t)
  (yas/setup "~/.emacs.d/plugins/yasnippet-0.6.1c")
  (when (require 'anything-c-yasnippet nil t)
    (setq anything-c-yas-space-match-any-greedy t)
    (global-set-key (kbd "C-c y") 'anything-c-yas-complete)))

;  (setq yas/use-menu nil
;        yas/trigger-key    " ";(kbd "SPC")
;        yas/next-field-key (kbd "TAB"))
;    (require 'dropdown-list)
;    (setq yas/text-popup-function #'yas/dropdown-list-popup-for-template)
;    (setq yas/buffer-local-condition
;          '(or (not (or (string= "font-lock-comment-face"
;                                 (get-char-property (point) 'face))
;                        (string= "font-lock-string-face"
;                                 (get-char-property (point) 'face))))
;               '(require-snippet-condition . force-in-comment)))

;;; disable flymake when in yasnippet
;(defvar flymake-is-active-flag nil)
;(defadvice yas/expand-snippet
;  (before inhibit-flymake-syntax-checking-while-expanding-snippet activate)
;  (setq flymake-is-active-flag
;        (or flymake-is-active-flag
;            (assoc-default 'flymake-mode (buffer-local-variables))))
;  (when flymake-is-active-flag
;    (flymake-mode-off)))
;(add-hook 'yas/after-exit-snippet-hook
;          '(lambda ()
;             (when flymake-is-active-flag
;               (flymake-mode-on)
;               (setq flymake-is-active-flag nil))))
