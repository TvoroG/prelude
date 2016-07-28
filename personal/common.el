(require 'moe-theme)
(moe-dark)

(setq default-input-method "russian-computer")
(set-frame-font "Source Code Pro light 10" t t)

(exec-path-from-shell-initialize)

(pyenv-mode)
(defun projectile-pyenv-mode-set ()
  (pyenv-mode-set (projectile-project-name)))
(add-hook 'projectile-switch-project-hook 'projectile-pyenv-mode-set)

(scroll-bar-mode -1)

(setq magit-last-seen-setup-instructions "1.4.0")

(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))

(defun my-web-mode-hook ()
  (setq web-mode-markup-indent-offset 4)
  (setq web-mode-css-indent-offset 4)
  (setq web-mode-code-indent-offset 4))
(add-hook 'web-mode-hook  'my-web-mode-hook)

(autoload 'ghc-init "ghc" nil t)
(autoload 'ghc-debug "ghc" nil t)
(add-hook 'haskell-mode-hook (lambda () (ghc-init)))

(setq whitespace-line-column 120)

(setq web-mode-engines-alist
      '(("django"    . "\\.html\\'")))
