;; Need connectivity to setup packages
(setq proxy (concat user-emacs-directory "proxy.el"))
(when (file-exists-p proxy) (load proxy))

(server-start)

;; Set UTF8 encoding
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)

;; (activate-input-method "latin-1-alt-postfix")
;; (set-language-environment 'utf-8)

;; (cd "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d")

;; Hide GUI Stuff early
(dolist (mode '(tool-bar-mode scroll-bar-mode))
  (when (fboundp mode) (funcall mode -1)))

(mapc 'require '(uniquify
		 hl-package
		 hl-misc
		 hl-defuns
		 hl-win
		 hl-keys
		 ;; hl-mode-line
		 hl-hook))


(setq auto-mode-alist
      (append
       '(
	 ("\\.js\\'" . js2-mode)
	 ("\\.php\\'" . php-mode)

	 )
       auto-mode-alist))


(setq abbrev-file-name             ;; tell emacs where to read abbrev
        "~/.emacs.d/abbrev_defs")    ;; definitions from...


(setq system-config (concat user-emacs-directory system-name ".el"))
(when (file-exists-p system-config) (load system-config))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("a234f91f9be6ed40f6ce0e94dce5cea1b9f1ccec2b9ccd42bb71c499867a3fcc" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
