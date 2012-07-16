;;; ** Smartchr
;;; (install-elisp "http://github.com/imakado/emacs-smartchr/raw/master/smartchr.el")
(require 'smartchr)
(global-set-key (kbd "=") (smartchr '("=" "==" "===")))
(global-set-key (kbd "{") (smartchr '("{`!!' }" "{")))
