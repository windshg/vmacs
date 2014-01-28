;; require external modes;; php mode
(require 'php-mode)

;; load modes on startup
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . php-mode))
(add-to-list 'auto-mode-alist '("\\.c\\'" . c-mode))
(add-to-list 'auto-mode-alist '("\\.h\\'" . c-mode))

;; auto-complete mode
(require 'auto-complete)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac/dict")
(require 'auto-complete-config)
(ac-config-default)
(add-to-list 'ac-modes 'objc-mode) ;;here load the objc-mode

(provide 'dev)