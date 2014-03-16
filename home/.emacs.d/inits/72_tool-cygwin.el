;;; ** W32 : MS-Windows specific features.
(when (eq window-system 'w32)
  (require 'cygwin-mount)
  (cygwin-mount-activate))
