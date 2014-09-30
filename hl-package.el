(require 'package)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives
	     '("ELPA" . "http://tromey.com/elpa/"))
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; Add in your own as you wish:
(defvar my-packages '(
		      ;; full-ack
		      ack-and-a-half
		      ;; sass-mode
		      expand-region
		      ;; ido-ubiquitous
		      ;; idomenu
		      php-mode
		      rainbow-mode
		      rainbow-delimiters
		      ;; yaml-mode
		      ;; smex
		      js2-mode
		      dired+
		      dired-single
		      mark-multiple
		      ace-jump-mode
		      coffee-mode
		      autopair
		      ;; icicles
		      leuven-theme
		      flycheck
		      flycheck-color-mode-line
		      web-mode ;; simple mode for template files
		      helm
		      projectile
		      helm-projectile
		      zenburn-theme
		      grizzl
		      )
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))


;; Setup php-mode
(autoload 'php-mode "php-mode" "Major mode for editing php code." t)

;; Load rainbow mode when editing css file
(add-hook 'css-mode-hook 'rainbow-mode)

;; Load rainbow delimiters mode when programming
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

(require 'dired+)
(setq diredp-find-file-reuse-dir-buffer t)


;; Autopair
(autopair-global-mode)


(provide 'hl-package)


;; Web mode

(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.twig\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))

;; Disable autopair for web-mode
(add-hook 'web-mode-hook
	  #'(lambda ()
	      (autopair-mode -1)))

;; Helm
(require 'helm)
(require 'helm-config)

(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-c h o") 'helm-occur)


(helm-mode 1)

;; Projectile

; set method to native, seems to work even with Windows
(setq projectile-indexing-method 'native)
(setq projectile-enable-caching t)

; set grizzl as the completion method
(setq projectile-completion-system 'grizzl)

; hooks
(add-hook 'php-mode-hook 'projectile-mode)
