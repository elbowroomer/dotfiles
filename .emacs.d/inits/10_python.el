;; python 用インデント設定
(add-hook 'python-mode-hook
    '(lambda ()
;;        (setq indent-line-function 'tab-to-tab-stop)
        (setq python-indent 4)
        (setq indent-level 4)
        (setq indent-tabs-mode nil)
    ))
