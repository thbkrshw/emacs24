(global-set-key "\M-;" 'comment-dwim-line)

(global-set-key (kbd "C-x C-b") 'buffer-menu-other-window)
(global-set-key [(meta g)] 'goto-line)

(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(global-set-key (kbd "C-x C-i") 'ido-imenu)

(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "C-+") 'er/contract-region)

;; Smex
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key "\C-x\C-m" 'smex)
(global-set-key "\C-c\C-m" 'smex)

(define-key ctl-x-map   "d" 'diredp-dired-files)
(define-key ctl-x-4-map "d" 'diredp-dired-files-other-window)

(global-set-key (kbd "<f11>") 'ack-same)
(global-set-key (kbd "<f12>") 'ack)

;; Next/previous errors
(global-set-key (kbd "<f9>") 'previous-error)
(global-set-key (kbd "<f10>") 'next-error)

;; If OS X remap meta key
(if (string-match "darwin" system-configuration)
(progn     (setq mac-option-key-is-meta nil)
               (setq mac-command-key-is-meta t)
               (setq mac-command-modifier 'meta)
               (setq mac-option-modifier nil)))

(defalias 'yes-or-no-p 'y-or-n-p)



;; Setup shortcut for ace-jump-mode
(global-set-key (kbd "C-²") 'ace-jump-mode)

;; Windmove
(windmove-default-keybindings)

(provide 'hl-keys)
