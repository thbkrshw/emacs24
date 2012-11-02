(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))
  (tooltip-mode -1)
  (mouse-wheel-mode t)
  (blink-cursor-mode -1)
  (set-font "Consolas" 8)
  (require 'zenburn-theme))

(global-linum-mode)
(global-hl-line-mode)


(provide 'hl-win)
