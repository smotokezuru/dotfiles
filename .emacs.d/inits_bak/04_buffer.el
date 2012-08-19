;;; ** Dired
(put 'dired-find-alternate-file 'disabled nil)
(setq dired-recursive-copies  'always
      dired-recursive-deletes 'top    ; just one time y-or-n-p on rm -R
      dired-listing-switches  "-alh")
;(install-elisp "http://www.meadowy.org/~shirai/elips/sorter.el")
(add-hook 'dired-load-hook (lambda () (require 'sorter nil t)))
