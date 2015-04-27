(setq user-files (expand-file-name "~/.emacs.d/lisp/"))
(add-to-list 'load-path user-files)

;; Setup proxy if needed
(setq proxy-config (concat user-files "proxy.el"))
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
		 hl-custom
		 hl-package
		 hl-misc
		 hl-defuns
		 hl-win
		 hl-keys
		 ;; hl-mode-line
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
(setq system-config (concat user-files system-name ".el"))
(when (file-exists-p system-config) (load system-config))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "6cb86285d0cee020bcb0e9d0ffa56bad4c5be86d2bd14f2f4997a46130a6fe56" "764e3a6472a3a4821d929cdbd786e759fab6ef6c2081884fca45f1e1e3077d1d" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "e80932ca56b0f109f8545576531d3fc79487ca35a9a9693b62bf30d6d08c9aaf" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "c5a044ba03d43a725bd79700087dea813abcb6beb6be08c7eb3303ed90782482" "6a37be365d1d95fad2f4d185e51928c789ef7a4ccf17e7ca13ad63a8bf5b922f" "756597b162f1be60a12dbd52bab71d40d6a2845a3e3c2584c6573ee9c332a66e" default)))
 '(paradox-github-token t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
