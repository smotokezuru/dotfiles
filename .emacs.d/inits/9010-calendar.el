;;; ** Calendar : Calendar and time management support.
(require 'calendar)
(setq number-of-diary-entries   31
      mark-holidays-in-calendar t)
(define-key calendar-mode-map "f" 'calendar-forward-day)
(define-key calendar-mode-map "n" 'calendar-forward-day)
(define-key calendar-mode-map "b" 'calendar-backward-day)
(when (require 'japanese-holidays nil t)
  (setq calendar-weekend-marker 'diary
        calendar-holidays
        (append japanese-holidays local-holidays other-holidays))
  (add-hook 'today-visible-calendar-hook   'calendar-mark-weekend)
  (add-hook 'today-invisible-calendar-hook 'calendar-mark-weekend))

