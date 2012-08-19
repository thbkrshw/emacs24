(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))
  (tooltip-mode -1)
  (mouse-wheel-mode t)
  (blink-cursor-mode -1)
  (set-font "Consolas" 8)
  (require 'solarized-dark-theme))


(provide 'hl-win)
