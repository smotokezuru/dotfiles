;;; (auto-install-from-emacswiki "grep-a-lot.el")
;;; "Emacs テクニックバイブル" 7.10 参照
;;;  複数の *grep* バッファを使い、検索結果を複数保持する
;;;  M-g = 現在の grep バッファを開く
;;;  M-g ] 次のgrep バッファを開く
;;;  M-g [ 前のgrep バッファを開く
;;;  M-g - 現在のgrep バッファを削除する
;;;  M-g _ 全てのgrep バッファを削除する

;(when (require 'grep-a-lot nil t)
;  (grep-a-lot-setup-keys)
;  (grep-a-lot-advise igrep))
; Emacs24.1でエラーとなったため適用保留

