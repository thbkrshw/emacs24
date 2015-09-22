;; Global smartparens config
(require 'smartparens-config)
(setq sp-base-key-bindings 'paredit)
(setq sp-hybrid-kill-entire-symbol nil)
(sp-use-paredit-bindings)

(show-smartparens-global-mode +1)

;; Delete all whitespace when possible
(paradox-require 'hungry-delete)
(global-hungry-delete-mode)

(delete-selection-mode 1)

(provide 'hl-editor)
