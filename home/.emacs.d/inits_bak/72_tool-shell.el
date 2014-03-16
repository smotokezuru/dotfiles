;;;; Shell
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
(add-hook 'comint-output-filter-functions 'comint-watch-for-password-prompt)

;;; Shell pop
;;; (install-elisp-from-emacswiki "shell-pop.el")
;; (require 'shell-pop)
;; (shell-pop-set-internal-mode "shell")
;; (shell-pop-set-internal-mode-shell "/bin/zsh")

(setq explicit-shell-file-name "zsh")
;(setq shell-file-name          "sh")
;(setq shell-command-switch     "-c")
