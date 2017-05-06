;; 保存時に行末の空白を削除
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; タブ幅を4に設定。タブを使わずスペースにする
(setq-default tab-width 4 indent-tabs-mode nil)

;; タブ幅の倍数を設定
(setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60))

;; 括弧の自動補完
(global-set-key (kbd "(") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "{") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "[") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "\"") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "\'") 'skeleton-pair-insert-maybe)
(setq skeleton-pair 1)

;; 最終行に必ず一行挿入する
(setq require-final-newline t)

;; 行の移動を実装
;; Shift-Alt-p: 上へ移動
;; Shift-Alt-n: 下へ移動
(defun move-line-down ()
  (interactive)
  (let ((col (current-column)))
    (save-excursion
      (forward-line)
      (transpose-lines 1))
    (forward-line)))

(defun move-line-up ()
  (interactive)
  (let ((col (current-column)))
    (save-excursion
      (forward-line)
      (transpose-lines -1))
    (move-to-column col)
    (previous-line)))

(global-set-key (kbd "M-P") 'move-line-up)
(global-set-key (kbd "M-N") 'move-line-down)
