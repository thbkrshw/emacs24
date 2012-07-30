(show-paren-mode 1)

(setq inhibit-startup-screen t)

(require 'ido)
(require 'ido-ubiquitous)
(ido-mode t)
(ido-ubiquitous t)
(setq ido-enable-prefix nil
      ido-enable-flex-matching t
      ido-auto-merge-work-directories-length nil
      ido-create-new-buffer 'always
      ido-use-filename-at-point 'guess
      ido-use-virtual-buffers t
      ido-handle-duplicate-virtual-buffers 2
      ido-max-prospects 10)

;; Org-mode
(setq org-log-done t)

(provide 'hl-misc)
