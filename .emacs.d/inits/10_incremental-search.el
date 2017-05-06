;; C−x C-f C-rで開くファイルを履歴からインクリメンタルサーチする。
(require 'minibuf-isearch)
(require 'session)
(add-hook 'after-init-hook 'session-initialize)
