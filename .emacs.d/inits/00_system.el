;; homebrwe でインストールしたツールを使う
(add-to-list 'exec-path (expand-file-name "/usr/local/bin"))

;; optionキーをMetaキーとして利用
(setq mac-option-modifier 'meta)

;; Returnでオートインデント
(global-set-key "\C-m" 'newline-and-indent)

;; C-hをBSに
(global-set-key "\C-h" 'backward-delete-char)

;; C-x C-gでM-x goto-line
(global-set-key "\C-x\C-g" 'goto-line)


;; 分割した画面間をShift+矢印で移動
(setq windmove-wrap-around t)
(windmove-default-keybindings)

;; 音を出さない
(setq ring-bell-function 'ignore)
(put 'upcase-region 'disabled nil)

;; 1行ずつスクロールする
(setq scroll-step 1)

;; スクロールを加速させない
(global-set-key [wheel-up] '(lambda () "" (interactive) (scroll-down 1)))
(global-set-key [wheel-down] '(lambda () "" (interactive) (scroll-up 1)))
(global-set-key [double-wheel-up] '(lambda () "" (interactive) (scroll-down 1)))
(global-set-key [double-wheel-down] '(lambda () "" (interactive) (scroll-up 1)))
(global-set-key [triple-wheel-up] '(lambda () "" (interactive) (scroll-down 2)))
(global-set-key [triple-wheel-down] '(lambda () "" (interactive) (scroll-up 2)))

;; C-a で空白を除く行頭へ移動
;; インデント文字を飛ばした行頭に戻る。
;; ただし、ポイントから行頭までの間にインデント文字しかない場合は、行頭に戻る。
(global-set-key "\C-a" 'beggining-of-indented-line)
(defun beggining-of-indented-line (current-point)
  (interactive "d")
  (if (string-match
       "^[ \t]+$"
       (save-excursion
         (buffer-substring-no-properties
          (progn (beginning-of-line) (point))
          current-point)))
      (beginning-of-line)
    (back-to-indentation)))

;; emacs終了時に確認する
(setq confirm-kill-emacs 'y-or-n-p)

;; ファイルに変更があったら自動で再読み込みする
(global-auto-revert-mode 1)
