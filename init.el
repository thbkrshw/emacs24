(setq user-files (expand-file-name "~/.emacs.d/lisp/"))
(add-to-list 'load-path user-files)

(setq gc-cons-threshold 50000000)

;; Setup proxy if needed
(setq proxy-config (concat user-files "proxy.el"))
(when (file-exists-p proxy-config) (load proxy-config))

;; One instance to rule them all
(server-start)

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
		 hl-hook

		 hl-js
		 hl-xml))


(setq abbrev-file-name             ;; tell emacs where to read abbrev
        "~/.emacs.d/abbrev_defs")    ;; definitions from...

;; Load host specific config file
(setq system-config (concat user-files system-name ".el"))
(when (file-exists-p system-config) (load system-config))
