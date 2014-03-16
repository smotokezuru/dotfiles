;;; *** W3m : Emacs-w3m - the web browser of choice.
;(when (require 'w3m-load nil t)
;  (setq w3m-command "w3m"
;        w3m-default-display-inline-images t
;;        w3m-command-arguments (nconc w3m-command-arguments
;;                                     '("-o" "http_proxy=http://foo.com:8080/"))
;;        w3m-no-proxy-domains '("local.com" "neighbor.com")
;        )
;  (add-hook 'w3m-mode-hook
;            (lambda ()
;              (setq show-trailing-whitespace nil)
;              (linum-mode nil)))
;  (add-hook 'octet-find-file-hook 'view-mode)
;  (add-hook 'octet-find-file-hook 'w3m-minor-mode))
