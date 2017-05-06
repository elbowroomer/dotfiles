;; go-lang 用
(add-to-list 'exec-path (expand-file-name "~/.go/bin"))
;; auto-complete
(add-to-list 'load-path "~/.go/src/github.com/nsf/gocode/emacs/")
(require 'go-autocomplete)
;; go-flymake
(add-to-list 'load-path "~/.go/src/github.com/dougm/goflymake")
(require 'go-flymake)
;; M-. で godef
(add-hook 'go-mode-hook (lambda () (local-set-key (kbd "M-.") 'godef-jump)))
;; インデントをスペースに
(add-hook 'go-mode-hook
    '(lambda ()
        (setq indent-tabs-mode 1)
        (setq tab-width 2)
        (setq whitespace-style '(face   ; faceで可視化
                         trailing       ; 行末
                         tabs           ; タブ
                         empty          ; 先頭/末尾の空行
                         space-mark     ; 表示のマッピング
                         ))
     ))
