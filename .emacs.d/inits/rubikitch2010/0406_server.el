;;; ** Server : Emacs running as a server process.
(server-start)
;; 編集が終了したらEmacsをアイコン化する(好みに応じて)
(add-hook 'server-done-hook
          '(lambda () (unless server-clients (iconify-frame))))
;; see also: ~/.emacs.d/inits/9999_define-key.el

