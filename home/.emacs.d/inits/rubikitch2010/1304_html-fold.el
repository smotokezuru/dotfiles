;;; "Emacs テクニックバイブル" 13.4 参照
;;; HTML, XML の要素を隠して見栄えをよくする
;;; (auto-install-from-url "https://raw.github.com/ataka/html-fold/master/html-fold.el")
(when (require 'html-fold nil t)
  (setq html-fold-inline-list
        '(("[a:" ("a"))
          ("[c:" ("code"))
          ("[k:" ("kbd"))
          ("[v:" ("var"))
          ("[s:" ("samp"))
          ("[ab:" ("abbr" "acronym"))
          ("[lab:" ("label"))
          ("[opt:" ("option"))
          ;; RSS の設定
          ("[rss:" ("rss"))
          ("[link:" ("link")))
        html-fold-block-list
        '("script" "style" "table"
          ;; RSSの設定
          "description" "content"))
  (add-hook 'html-mode-hook 'html-fold-mode))
