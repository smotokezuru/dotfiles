;;; ** Sequential Command
;;; (auto-install-batch "sequential-command")
;;; http://www.emacswiki.org/cgi-bin/wiki/download/sequential-command.el
;;; http://www.emacswiki.org/cgi-bin/wiki/download/sequential-command-config.el
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

(require 'sequential-command-config)
(define-sequential-command seq-mark
  set-mark-command cua-set-rectangle-mark)
  ;; (global-set-key (kbd "C-SPC") 'seq-mark)
(define-sequential-command seq-top
  beginning-of-indented-line beginning-of-line seq-return)
(global-set-key (kbd "C-a") 'seq-top)
(global-set-key (kbd "C-e") 'seq-end)
(when (require 'org nil t)
  (define-key org-mode-map (kbd "C-a") 'org-seq-home)
  (define-key org-mode-map (kbd "C-e") 'org-seq-end))
(define-key esc-map "u" 'seq-upcase-backword-word)
(define-key esc-map "c" 'seq-capitalize-backword-word)
(define-key esc-map "l" 'seq-downcase-backword-word)
(setq org-hide-leading-stars t)
