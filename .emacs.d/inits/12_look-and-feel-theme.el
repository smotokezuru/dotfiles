;;; ** Color Theme : Color Themes for Emacs. More
;;; https://gna.org/projects/color-theme
;(load "emacs-256color")
(when (and window-system (require 'color-theme nil t))
  (color-theme-initialize)
  (color-theme-arjen))
