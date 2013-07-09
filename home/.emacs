(autoload 'python-mode "python-mode.el" "Python mode." t)
(setq auto-mode-alist (append '(("/*.\.py$" . python-mode)) auto-mode-alist))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (tsdh-dark)))
 '(show-paren-mode t)
 '(transient-mark-mode (quote (only))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#201f1f" :foreground "#e0dedb" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 90 :width normal :foundry "xos4" :family "Terminus")))))

;; coisas de latex
(autoload 'whizzytex-mode
            "whizzytex"
            "WhizzyTeX, a minor-mode WYSIWIG environment for LaTeX" t)
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)

;; Pra miorá o c-mode
(add-hook 'c-mode-common-hook '(lambda () (c-toggle-auto-state 1)))
(require 'linum)
(global-linum-mode 1)


;; emacs auto-complete
(add-to-list 'load-path "/usr/share/emacs/site-lisp/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "/usr/share/emacs/site-lisp/auto-complete/ac-dict")
(ac-config-default)
;; emacs ide
;; (require 'eide)
;; (eide-start)

;; magit, não bem testado ainda
(autoload 'magit-status "magit" nil t)

;; Modo Lua
    (setq auto-mode-alist (cons '("\.lua$" . lua-mode) auto-mode-alist))
    (autoload 'lua-mode "lua-mode" "Lua editing mode." t)
