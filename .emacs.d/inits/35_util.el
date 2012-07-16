;;; Column Highlight: Highlight the current column.
(require 'col-highlight)
;; (column-highlight-mode t)
;; (toggle-highlight-column-when-idle t)
;; (col-highlight-set-interval 6)

(require 'crosshairs)
;; (crosshairs-mode t)

;;; (install-elisp "http://taiyaki.org/elisp/mell/src/mell.el")
;;; (install-elisp "http://taiyaki.org/elisp/text-adjust/src/text-adjust.el")
(require 'text-adjust)
;; (text-adjust-codecheck-buffer) ; 半角カナ, 規格外文字をゲタに置換
;; (text-adjust-hankaku-buffer)   ; 全角英数を半角に置換
;; (text-adjust-kutouten-buffer)  ; 句読点を,.に置換
;; (text-adjust-space-buffer)     ; 全角/ 半角の区切りに空白を入れる
;; (text-adjust-buffer)           ; 上記すべて

