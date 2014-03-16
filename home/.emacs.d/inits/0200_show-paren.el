;;; Paren Showing Faces : Showing (un)matching of parens and expressions.
(setq sho-paren-delay 0)
(show-paren-mode t)
(setq show-paren-style 'expression)
(set-face-background 'show-paren-match-face "NavyBlue")
(set-face-underline-p 'show-paren-match-face "yellow")
(set-face-background 'show-paren-mismatch-face "Red")
(set-face-foreground 'show-paren-mismatch-face "Black")

