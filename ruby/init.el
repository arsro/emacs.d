(add-to-list 'load-path "~/.emacs.d/ruby")

;; ruby mode
(autoload 'ruby-mode "ruby-mode"
  "Mode for editing ruby source files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))

;; # -*- coding: utf-8 -*-を自動挿入しない
(setq ruby-insert-encoding-magic-comment nil)

;; ruby block
(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle 'overlay)

;; ruby end
(require 'ruby-end)

;; rubocop-emacs
;; (require 'rubocop)
;; (add-hook 'ruby-mode-hook #'rubocop-mode)

;; slim-mode
(require 'slim-mode)

;; rubocop
(require 'rubocop)
(add-hook 'ruby-mode-hook 'rubocop-mode)

;; flycheck
(add-hook 'ruby-mode-hook
          '(lambda ()
             (setq flycheck-checker 'ruby-rubocop)
             (flycheck-mode 1)))
