;;; "Emacs テクニックバイブル" 9.1 参照
;;; Emacsでシェルを動かす
;;; M-x shell            :シェルバッファを作成
;;; M-x multi-shell-new  :シェルバッファを複数持てるように作成
;;; M-x multi-term       :対話型コマンドが動かせるように端末作成
;;; M-! M-| 1つのコマンドを実行
;; エスケープシーケンスによる色が付くようにする
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
;; パスワードのプロンプトを認識し、入力時はミニバッファで伏せ字になる
(add-hook 'comint-output-filter-functions 'comint-watch-for-password-prompt)
