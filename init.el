(add-to-list 'load-path "~/.emacs.d")

;; Setup proxy if needed
(setq proxy-config (concat user-emacs-directory "proxy" ".el"))
(when (file-exists-p proxy-config) (load proxy-config))

;; One instance to rule them all
(server-start)

;; Set UTF8 encoding
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)

;; Hide GUI Stuff early
(dolist (mode '(tool-bar-mode scroll-bar-mode))
  (when (fboundp mode) (funcall mode -1)))

;; Load custom init files
(mapc 'require '(uniquify
		 hl-package
		 hl-misc
		 hl-defuns
		 hl-win
		 hl-keys
		 hl-mode-line
		 ;; hl-vendor
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

;; Load host specific config file
(setq system-config (concat user-emacs-directory system-name ".el"))
(when (file-exists-p system-config) (load system-config))
