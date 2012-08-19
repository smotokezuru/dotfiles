;;; Sequential Command
;;; (auto-install-batch "sequential-command")
;;; http://www.emacswiki.org/cgi-bin/wiki/download/sequential-command.el
;;; http://www.emacswiki.org/cgi-bin/wiki/download/sequential-command-config.el
;;; 参考: Emacsテクニックバイブル 3.8
(defun beginning-of-indented-line (current-point)
  (interactive "d")
  (if (string-match
       "^[ \t]+$"
       (save-excursion
         (buffer-substring-no-properties
          (progn (beginning-of-line) (point))
          current-point)))
      (beginning-of-line)
    (back-to-indentation)))

(when (require 'sequential-command-config nil t)
  (sequential-command-setup-keys)
;; (define-sequential-command seq-mark
;;   set-mark-command cua-set-rectangle-mark)
;; see also: ~/.emacs.d/inits/9999_define-key.el
;; (setq org-hide-leading-stars t)
  )

