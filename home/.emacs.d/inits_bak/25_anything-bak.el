;;; *** Anything Split Window
(defun anything-split-window (buf)
  (split-window)
  (other-window 1)
  (switch-to-buffer buf))
(setq anything-display-function 'anything-split-window)

;;; *** Anything Project
;;; (install-elisp "http://github.com/imakado/anything-project/raw/master/anything-project.el")
(when (require 'anything-project nil t)
    (global-set-key (kbd "C-c C-f") 'anything-project)
    (setq ap:project-files-filters
          (list
           (lambda (files)
             (remove-if 'file-directory-p files)
             (remove-if '(lambda (file) (string-match-p "~$" file)) files)))))



;;; *** Anything Kyr
;;(auto-install-from-emacswiki "anything-kyr.el")
;;(auto-install-from-emacswiki "anything-kyr-config.el")
(require 'anything-kyr-config nil t)

;;; *** anything-rcodetools
;; gem install rcodetools
;;  (when (require 'anything-rcodetools nil t)
;;    (setq rct-get-all-methods-command "refe -l"))


;;; *** Anything Hatena Bookmark
;; http://trac.codecheck.in/share/export/1401/lang/elisp/anything-hatena-bookmark/trunk/anything-hatena-bookmark.el
(if (require 'anything-hatena-bookmark nil t)
  (defalias 'htb 'anything-hatena-bookmark))

