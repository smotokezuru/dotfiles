;;; *** Cobol : Major mode for editing COBOL source files in Emacs.
(autoload 'cobol-mode "cobol-mode"
  "A major mode for editing ANSI Cobol/Scobol files." t nil)
(autoload 'NMCobol-mode "nmcobol-mode"
  "A major mode for editing Tandem format Cobol files." t nil)
(add-to-list 'auto-mode-alist '("\\.cob" . cobol-mode))
