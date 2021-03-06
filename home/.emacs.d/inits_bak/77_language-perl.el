;;; *** Cperl : Major mode for editing Perl code.
(autoload 'cperl-mode "cperl-mode" "Yet another Perl mode." t)
(add-to-list 'auto-mode-alist '("\\.pl$" . cperl-mode))
(setq cperl-indent-level               4
      cperl-continued-statement-offset 4
      cperl-comment-column             40)
;(install-elisp "http://svn.coderepos.org/share/lang/elisp/set-perl5lib/set-perl5lib.el")
(require 'set-perl5lib nil t)

;;; **** Flymake for Perl
;;; http://unknownplace.org/memo/2007/12/21#e001
(defvar flymake-perl-err-line-patterns
  '(("\\(.*\\) at \\([^ \n]+\\) line \\([0-9]+\\)[,.\n]" 2 3 nil 1)))

(defconst flymake-allowed-perl-file-name-masks
  '(("\\.pl$" flymake-perl-init)
    ("\\.pm$" flymake-perl-init)
    ("\\.t$" flymake-perl-init)))

(defun flymake-perl-init ()
  (let* ((temp-file (flymake-init-create-temp-buffer-copy
                     'flymake-create-temp-inplace))
         (local-file (file-relative-name
                      temp-file
                      (file-name-directory buffer-file-name))))
    (list "perl" (list "-wc" local-file))))

(defun flymake-perl-load ()
  (interactive)
  (defadvice flymake-post-syntax-check (before flymake-force-check-was-interrupted)
    (setq flymake-check-was-interrupted t))
  (ad-activate 'flymake-post-syntax-check)
  (setq flymake-err-line-patterns flymake-perl-err-line-patterns
        flymake-allowed-file-name-masks
        (append flymake-allowed-file-name-masks flymake-allowed-perl-file-name-masks))
  (set-perl5lib)
  (flymake-mode t))

(add-hook 'cperl-mode-hook 'flymake-perl-load)
