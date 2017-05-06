;; Emmet
(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; マークアップ言語全部で使う
(add-hook 'css-mode-hook  'emmet-mode) ;; CSSにも使う
;(add-hook 'emmet-mode-hook (lambda () (setq emmet-indentation 4))) ;; indent はスペース4個
(add-hook 'sgml-mode-hook 'emmet-mode) ;; マークアップモードで自動的に emmet-mode をたちあげる
;(add-hook 'emmet-mode-hook (lambda () (setq emmet-indentation 4))) ;; indent 4 spaces
(add-hook 'web-mode-hook 'emmet-mode) ;; web-mode で自動的に emmet-mode を立ち上げる
(add-hook 'emmet-mode-hook (lambda () (setq emmet-indentation 4))) ;; indent 4 spaces
(setq emmet-move-cursor-between-quotes t) ;; 最初のクオートの中にカーソルをぶちこむ
(eval-after-load "emmet-mode"
  '(define-key emmet-mode-keymap (kbd "C-j") nil)) ;; C-j は newline のままにしておく
(keyboard-translate ?\C-i ?\H-i) ;;C-i と Tabの被りを回避
(define-key emmet-mode-keymap (kbd "H-i") 'emmet-expand-line) ;; C-i で展開
