;; Add line numbers
(require 'linum)
(global-linum-mode t)
(setq linum-format (lambda (line) (propertize (format (let ((w (length (number-to-string (count-lines (point-min) (point-max)))))) (concat "%" (number-to-string w) "d ")) line) 'face 'linum)))

;; Highlight lines over 80 chars
(global-whitespace-mode +1)
(require 'whitespace)
(setq whitespace-line-column 80)
(setq whitespace-style '(face lines-tail))
(add-hook 'prog-mode-hook 'whitespace-mode)

;; Disable line wrap
(setq-default truncate-lines 1)