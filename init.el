;;block the welcome screen
(setq inhibit-startup-message t)

;;set package option
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

;;easy to install other packages
(unless (package-installed-p 'use-packages)
  (package-refresh-contents)
  (package-install 'use-package))

;;defualt setting for #install other packages
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (company hungry-delete swiper counsel smartparens exec-path-from-shell monokai-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))
;; (org-babel-load-file (expand-file-name "~/.emacs.d/setting.org")) 
;; (org-babel-load-file (expand-file-name "~/.emacs.d/capture.org"))
(org-babel-load-file (expand-file-name "~/.emacs.d/macos-config.org"))
(load-file "~/.emacs.d/misc/wc.el")
(put 'set-goal-column 'disabled nil)
