;;; Emacs 
;;; (auto-install-from-emacswiki "igrep.el")
(when (require 'igrep nil t)
  (igrep-define lgrep
    (igrep-use-zgrep nil)
    (igrep-regex-option "-n -0u8"))
  (igrep-find-define lgrep
    (igrep-use-zgrep nil)
    (igrep-regex-option "-n -0u8")))
