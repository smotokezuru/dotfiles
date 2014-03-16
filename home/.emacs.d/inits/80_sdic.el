;;; sdic
(autoload 'sdic-describe-word "sdic" "Describe word." t nil)
(global-set-key "\C-cw" 'sdic-describe-word)
(autoload 'sdic-describe-word-at-point "sdic" "Describe word at point." t nil)
(setq sdic-eiwa-dictionary-list '((sdicf-client "~/.emacs.d/sdic/gene.sdic"))
      sdic-waei-dictionary-list '((sdicf-client "~/.emacs.d/sdic/jedict.sdic"
                                                (add-keys-to-headword t))))
