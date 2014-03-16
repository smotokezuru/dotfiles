;;; Key Chord
;;; (package-install 'key-chord)
(when (require 'key-chord nil t)
  (setq key-chord-two-keys-delay 0.04)
  (key-chord-mode t))
;; see also: ~/.emacs.d/inits/9999_define-key.el
