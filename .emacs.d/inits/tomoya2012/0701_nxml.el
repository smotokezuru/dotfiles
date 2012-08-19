;;; Nxml group: New XML editing mode.
(add-to-list 'auto-mode-alist
             '("\\.[sx]?html?\\(\\.[a-zA-Z]+\\)?\\'" . nxml-mode))
(eval-after-load "rng-loc"
  '(add-to-list 'rng-schema-locating-files
                "~/.emacs.d/public_repos/html5-el/schemas.xml"))
;;(require 'whattf-dt)
(setq nxml-slash-auto-complete-flag t
      nxml-bind-meta-tab-to-complete-flag t)
(add-to-list 'ac-modes 'nxml-mode)
