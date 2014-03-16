;;; Hippie Expand : Expand text trying various ways to find its expansion.
(setq hippie-expand-try-functions-list
      '(try-complete-file-name-partially    ; ファイル名の一部
        try-complete-file-name              ; ファイル名全体
        try-expand-all-abbrevs              ; 動的略語展開
        try-expand-dabbrev                  ; 動的略語展開(カレントバッファ)
        try-expand-dabbrev-all-buffers      ; 動的略語展開(全バッファ)
        try-expand-dabbrev-from-kill        ; 動的略語展開(キルリング)
        try-complete-lisp-symbol-partially  ; Lispシンボル名の一部
        try-complete-lisp-symbol            ; Lispシンボル名全体
        ))
;; see also: ~/.emacs.d/inits/9999_define-key.el
