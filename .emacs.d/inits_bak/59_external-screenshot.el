;;; ** Screenshot
;;;  (auto-install-from-emacswiki "screenshot.el")
;;;  http://d.hatena.ne.jp/rubikitch/20090401/screenshot_emacs
(when (require 'screenshot nil t)
  (setq screenshot-default-scheme "local"
        screenshot-schemes
        '(("local"             :dir "~/Documents/images/")
          ("current-directory" :dir default-directory)
          ("remote-ssh"        :dir "/tmp/"
                               :ssh-dir "hohhon.net:public_html/archive/"
                               :url "http://hohhon.net/archive/")
          ("EmacsWiki"         :dir "~/.yaoddmuse/EmacsWiki/"
                               :yaoddmuse "EmacsWiki")
          ("local-server"      :dir "~/public_html/"
                               :url "http://127.0.0.1/"))))
