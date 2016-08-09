(global-set-key (kbd "C-c h") 'helm-projectile)
(global-set-key (kbd "C-c C-f") 'helm-find-files)


(global-set-key (kbd "M-1") 'delete-other-windows)
(global-set-key (kbd "M-2") 'split-window-below)
(global-set-key (kbd "M-3") 'split-window-right)
(global-set-key (kbd "M-0") 'delete-window)
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)


(defun keybindings-python-anaconda ()
  (local-set-key (kbd "M-.") 'anaconda-mode-goto-definitions)
  (local-set-key (kbd "M-*") 'anaconda-nav-pop-marker)
  (local-set-key (kbd "M-?") 'anaconda-mode-view-doc)
  (local-set-key (kbd "M-r") 'anaconda-mode-usages))

(add-hook 'python-mode-hook 'keybindings-python-anaconda)


(defun window-half-height ()
  (max 1 (/ (1- (window-height (selected-window))) 2)))

(defun scroll-up-half ()
  (interactive)
  (scroll-up (window-half-height)))

(defun scroll-down-half ()
  (interactive)
  (scroll-down (window-half-height)))

(global-set-key (kbd "C-v") 'scroll-up-half)
(global-set-key (kbd "M-v") 'scroll-down-half)

(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
(define-key global-map (kbd "C-u C-c SPC") 'ace-jump-char-mode)
(define-key global-map (kbd "C-u C-u C-c SPC") 'ace-jump-line-mode)

(eval-after-load "ace-jump-mode"
  '(ace-jump-mode-enable-mark-sync))
(define-key global-map (kbd "C-x SPC") 'ace-jump-mode-pop-mark)
