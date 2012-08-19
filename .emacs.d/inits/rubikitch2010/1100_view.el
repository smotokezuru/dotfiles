;;; View : Peruse file or buffer without editing.
;;; "Emacs テクニックバイブル" 11.1 参照
(setq view-read-only t)

;;; "Emacs テクニックバイブル" 11.2 参照
;;;
;; see also: ~/.emacs.d/inits/9999_define-key.el

;;; "Emacs テクニックバイブル" 11.3 参照
;;; view-mode のキー割り当てを変更する
(require 'view)

;; less like keybind
(define-key view-mode-map (kbd "N") 'View-search-last-regexp-backward)
(define-key view-mode-map (kbd "?") 'View-search-regexp-backward)
(define-key view-mode-map (kbd "G") 'View-goto-line-last)
(define-key view-mode-map (kbd "f") 'View-scroll-page-forward)
(define-key view-mode-map (kbd "b") 'View-scroll-page-backward)

;; vi like keybind
(define-key view-mode-map (kbd "h") 'backward-char)
(define-key view-mode-map (kbd "j") 'next-line)
(define-key view-mode-map (kbd "k") 'previous-line)
(define-key view-mode-map (kbd "l") 'forward-char)
(define-key view-mode-map (kbd "J") 'View-scroll-page-forward)
(define-key view-mode-map (kbd "K") 'View-scroll-page-backward)

(define-key view-mode-map (kbd "m") 'bm-toggle)
(define-key view-mode-map (kbd "[") 'bm-previous)
(define-key view-mode-map (kbd "]") 'bm-next)

;;; "Emacs テクニックバイブル" 11.7 参照
;;; 特定のファイルを view-mode で開く
(setq view-mode-by-default-regexp "\\.log$")
