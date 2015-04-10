(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))
  (tooltip-mode -1)
  (mouse-wheel-mode t)
  (blink-cursor-mode -1)
  (set-font "Source Code Pro" 9))

(load-theme 'darktooth t)

;; (global-linum-mode)
;; (global-hl-line-mode)

;; smart mode line
(sml/setup)


(provide 'hl-win)
