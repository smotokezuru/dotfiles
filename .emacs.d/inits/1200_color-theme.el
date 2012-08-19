;;; ** Color Theme : Color Themes for Emacs. More
;;; http://www.nongnu.org/color-theme/

(when (and window-system (require 'color-theme nil t))
  (color-theme-initialize)
  (color-theme-hober))
