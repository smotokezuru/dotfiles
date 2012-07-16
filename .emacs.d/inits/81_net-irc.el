;;; ** Riece : Riece specific customize group.
;;(autoload 'riece "riece" "Start Riece" t)

;;; Rcirc group: Simple IRC client.
(setq rcirc-server-alist
      '(("irc.freenode.net" :channels ("#emacs-lisp-ja" "#emacs-ja"))
        ("irc.media.kyoto-u.ac.jp" :channels ("#ruby")))
      rcirc-log-flag t)

