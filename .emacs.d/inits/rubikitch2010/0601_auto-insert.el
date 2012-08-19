;;; Auto Insert
(auto-insert-mode t)
(setq auto-insert-directory "~/.emacs.d/etc/insert/")
(define-auto-insert "\\.html" "html-template.html")
(define-auto-insert "\\.pl"   "perl-template.pl")
(define-auto-insert "\\.rb"   "ruby-template.rb")

(define-auto-insert "\\.h$"
  (lambda ()
    (insert "once")
    (yas/expand)))


