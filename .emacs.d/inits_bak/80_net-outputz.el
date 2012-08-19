;;; ** Outputz
;(install-elisp "http://svn.coderepos.org/share/lang/elisp/outputz/outputz.el")
(when (require 'outputz nil t)
  (setq outputz-key "KWlxuGsWPXWk"
        outputz-uri "http://%s.hohhon.net/")
  (global-outputz-mode t)
  (if (require 'diminish nil t)
      (diminish 'outputz-mode)))
