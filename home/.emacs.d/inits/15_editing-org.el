;;; *** Org
(when (require 'org-install nil t)
  (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
  (global-set-key "\C-cl" 'org-store-link)
  (global-set-key "\C-ca" 'org-agenda)

  (org-remember-insinuate)
  (setq org-startup-truncated nil
        org-return-follows-link t
        org-log-done t
        org-default-notes-file (concat org-directory "agenda.org")
        org-remember-templates
        '(("Todo" ?t "** TODO %?\n   %i\n   %a\n   %t" nil "Inbox")
          ("Bug"  ?b "** TODO %?   :bug:\n   %i\n   %a\n   %t" nil "Inbox")
          ("Idea" ?i "** %?\n   %i\n   %a\n   %t" nil "New Ideas")))

;;; **** Org functions for code reading
  (defvar org-code-reading-software-name nil)
  (defvar org-code-reading-file "code-reading.org")
  (defun org-code-reading-read-software-name ()
    (set (make-local-variable 'org-code-reading-software-name)
         (read-string "Code Reading Software: "
                      (or org-code-reading-software-name
                          (file-name-nondirectory
                           (buffer-file-name))))))
  (defun org-code-reading-get-prefix (lang)
    (concat "[" lang "]"
            "[" (org-code-reading-read-software-name) "]"))
  (defun org-remember-code-reading ()
    (interactive)
    (let* ((prefix (org-code-reading-get-prefix
                    (substring (symbol-name major-mode) 0 -5)))
           (org-remember-templates
            `(("CodeReading" ?r "** %(identity prefix)%?\n  \n  %a\n %t"
               ,org-code-reading-file "Memo"))))
      (org-remember)))
  (when (require 'key-chord nil t)
    (key-chord-define-global "cr" 'org-remember-code-reading)))
