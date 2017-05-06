;; ruby-mode
;;(autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
;;(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
;;(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))
;;(add-hook 'enh-ruby-mode-hock (lambda () (setq emmet-indentation 2)))
(autoload 'enh-ruby-mode "enh-ruby-mode"
  "Mode for editing ruby source files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . enh-ruby-mode))
;; "encoding を自動挿入しない"
(defun remove-enh-magic-comment ()
  (remove-hook 'before-save-hook 'enh-ruby-mode-set-encoding t))
(add-hook 'enh-ruby-mode-hook 'remove-enh-magic-comment)
(setq ruby-insert-encoding-magic-comment nil)
(add-hook 'enh-ruby-mode-hook
  '(lambda ()
    (setq ruby-indent-level tab-width)
    (setq enh-ruby-deep-indent-paren nil)
    (define-key ruby-mode-map [return] 'ruby-reindent-then-newline-and-indent))
    (setenv "LC_ALL" "ja_JP.UTF-8"))
