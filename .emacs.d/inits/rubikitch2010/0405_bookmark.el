;;; Bookmark group: Setting, annotation and jumping to bookmarks.
;;; C-x r m: bookmark-set
;;; C-x r l: bookmark-bmenu-list
;; ブックマークを変更したら即保存
(setq bookmark-save-flag 1)
;; 超整理法(好みに応じて)
(progn
  (setq bookmark-sort-flag nil)
  (defun bookmark-arrange-latest-top ()
    (let ((latest (bookmark-get-bookmark bookmark)))
      (setq bookmark-alist (cons latest (delq latest bookmark-alist))))
    (bookmark-save))
  (add-hook 'bookmark-after-jump-hook 'bookmark-arrange-latest-top))

                                      
