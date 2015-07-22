(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(setq package-enable-at-startup nil)
(package-initialize)

;;; custom-file
(setq custom-file "~/.custom.el")
(load custom-file)

;;; emacs
(menu-bar-mode -1)

(global-linum-mode t)
(setq linum-format "%3d ")

;;; evil
(require 'evil)
(evil-mode t)

;;; evil-surround
(require 'evil-surround)
(global-evil-surround-mode 1)

;;; helm
(require 'helm) ; required for custamizations
(require 'helm-config)
(helm-mode 1)

;;; projectile
(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

;;; js2
(add-to-list 'auto-mode-alist '("\\.js[x]?\\'" . js2-mode))
(setq-default indent-tabs-mode nil)
(setq js-indent-level 2)

;;; magit
(global-set-key (kbd "C-x g") 'magit-status)

;;; theme
(load-theme 'base16-tomorrow-dark t)

;;; flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

;;; markdown
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
   (add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
   (add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
   (add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;;; org
;; (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

;;; key-chord
(require 'key-chord)
(key-chord-mode 1)
(key-chord-define evil-insert-state-map  "jk" 'evil-normal-state)

;;; aggressive-indent
(global-aggressive-indent-mode)
