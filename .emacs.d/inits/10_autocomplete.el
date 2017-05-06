;; auto-complete-mode
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)
(add-to-list 'ac-modes 'text-mode)
