;; Need connectivity to setup packages
(setq proxy (concat user-emacs-directory "proxy.el"))
(when (file-exists-p proxy) (load proxy))

(server-start)

;; Set UTF8 encoding
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)

(activate-input-method "latin-1-alt-postfix")
;; (set-language-environment 'utf-8)

;; (cd "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d")

;; Hide GUI Stuff early
(dolist (mode '(tool-bar-mode scroll-bar-mode))
  (when (fboundp mode) (funcall mode -1)))

(mapc 'require '(uniquify hl-package hl-misc hl-defuns hl-win hl-keys hl-mode-line hl-vendor hl-hook))


(setq auto-mode-alist
      (append
       '(
	 ("\\.js\\'" . js2-mode)
	 ("\\.php\\'" . php-mode)

	 )
       auto-mode-alist))


;; Load
(setq system-config (concat user-emacs-directory system-name ".el"))
(when (file-exists-p system-config) (load system-config))
