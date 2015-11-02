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
(setq-default indent-tabs-mode nil)
(setq tab-width 2)

(global-linum-mode t)
(setq linum-format "%3d ")
(setq auto-save-default nil) ; autosave: off

(global-set-key (kbd "C-c C-c") 'comment-line)

;;; evil
(setq evil-shift-width 2)
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
;(add-to-list 'auto-mode-alist '("\\.js[x]?\\'" . js2-mode))
;(setq-default js2-basic-offset 2)

;;; js
(add-to-list 'auto-mode-alist '("\\.js[x]?\\'" . js-mode))
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


;;; backups: off
;; http://stackoverflow.com/questions/151945/how-do-i-control-how-emacs-makes-backup-files#answer-151946
(setq make-backup-files nil)

;; whitespace-mode
;; http://stackoverflow.com/questions/6378831/emacs-globally-enable-whitespace-mode
(global-whitespace-mode 1)

;; http://ergoemacs.org/emacs/whitespace-mode.html
;; http://www.gnu.org/software/emacs/manual/html_node/emacs/Useless-Whitespace.html
;; http://ergoemacs.org/emacs/emacs_delete_trailing_whitespace.html
(setq whitespace-style (quote
  (face tabs trailing empty)))

;; auto-complete
(global-auto-complete-mode t)

;; coffee-mode
(custom-set-variables
 '(coffee-tab-width 2))

;;; yasnippet
(yas-global-mode 1)