(fset 'format-po
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([109 105 115 103 105 100 backspace backspace backspace backspace backspace 115 103 105 100 32 34 19 32] 0 "%d")) arg)))
