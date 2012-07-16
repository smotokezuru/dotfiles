;;; Twittering
(require 'twittering-mode)
(setq twittering-status-format "%C{%Y/%m/%d %H:%M:%S} %s > %T // from %f%L%r%R"
      twittering-username      "smotokezuru"
      twittering-update-status-function 'twitterring-update-status-from-pop-up-buffer )

