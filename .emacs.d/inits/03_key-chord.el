;;; ** Key Chord
(require 'key-chord)
(setq key-chord-two-keys-delay 0.04)
(key-chord-mode t)
(key-chord-define-global "hj" 'undo)
(key-chord-define-global "jk" 'view-mode)
(key-chord-define-global ",." "<>\C-b")
(key-chord-define-global "()" "()\C-b")
