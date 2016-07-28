(yas-global-mode 1)
(define-key yas-minor-mode-map (kbd "C-c C-e") 'yas-expand)

(setq yas-snippet-dirs (append yas-snippet-dirs '("~/.emacs.d/snippets")))
