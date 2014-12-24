;; packages
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("org" . "http://orgmode.org/elpa/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(package-initialize)

;; evil-mode: on w/ surround
(require 'evil)
(evil-mode 1)

;; evil-surround
(global-evil-surround-mode 1)

;; evil-nerd-commenter
(evilnc-default-hotkeys)

;; theme: twilight bright
(require 'twilight-bright-theme)

;; menu-bar: off
(menu-bar-mode -1)

;; indentation(JS): 2 spaces
;; http://stackoverflow.com/questions/4177929/how-to-change-the-indentation-width-in-emacs-javascript-mode
(setq js-indent-level 2)

;; line-numbers: on
;; http://superuser.com/questions/212193/how-do-i-display-line-numbers-in-emacs-not-in-the-mode-line
(global-linum-mode t)

;; backups: off
;; http://stackoverflow.com/questions/151945/how-do-i-control-how-emacs-makes-backup-files#answer-151946
(setq make-backup-files nil)

;; whitespace-mode: on
;; http://stackoverflow.com/questions/6378831/emacs-globally-enable-whitespace-mode
(global-whitespace-mode 1)

;; whitespace-mode
;; http://ergoemacs.org/emacs/whitespace-mode.html
;; http://www.gnu.org/software/emacs/manual/html_node/emacs/Useless-Whitespace.html
;; http://ergoemacs.org/emacs/emacs_delete_trailing_whitespace.html
(setq whitespace-style (quote
  (face tabs trailing empty)))
