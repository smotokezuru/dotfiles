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

