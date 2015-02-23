(require 'package)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; Add in your own as you wish:
(defvar my-packages '(
		      restclient
		      arduino-mode
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
		      ace-window
		      go-mode)
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

(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2))
(add-hook 'web-mode-hook  'my-web-mode-hook)

;; Helm
(require 'helm)
(require 'helm-config)

(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))


(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-m") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)

(setq helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match    t)
(setq helm-M-x-fuzzy-match t)

(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-b") 'helm-mini)

(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-c h o") 'helm-occur)

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to do persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

(helm-autoresize-mode t)

(helm-mode 1)

;; Projectile
(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

; set method to native, seems to work even with Windows
(setq projectile-indexing-method 'native)
(setq projectile-enable-caching t)

; set grizzl as the completion method
(setq projectile-completion-system 'grizzl)

; hooks
(add-hook 'php-mode-hook 'projectile-mode)

;; ace-window
(global-set-key (kbd "M-p") 'ace-window)
(setq aw-keys '(?q ?s ?d ?f ?g ?h ?j ?k ?l ?m))

(global-set-key (kbd "M-o") 'helm-projectile)
;; go mode
(setq gofmt-command "goimports")
(add-hook 'before-save-hook 'gofmt-before-save)

(provide 'hl-package)
