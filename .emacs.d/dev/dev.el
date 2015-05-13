;; require external modes;; php mode
(require 'php-mode)
(require 'scala-mode)

;; load modes on startup
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'auto-mode-alist '("\\.scala\\'" . scala-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . php-mode))
(add-to-list 'auto-mode-alist '("\\.c\\'" . c-mode))
(add-to-list 'auto-mode-alist '("\\.h\\'" . c-mode))

;; auto-complete mode
(require 'auto-complete)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac/dict")
(require 'auto-complete-config)
(ac-config-default)
(add-to-list 'ac-modes 'objc-mode) ;;here load the objc-mode




(defun toggle-comment-region (beg end &optional n)
  (interactive "r\nP")
  (if n
      (comment-region beg end (prefix-numeric-value n))
    (save-excursion
      (goto-char beg)
      (beginning-of-line)
      ;; skip blank lines
      (skip-chars-forward " \t\n")
      (if (looking-at (concat "[ \t]*\\(" (regexp-quote comment-start) "+\\)"))
          (uncomment-region beg end)
        (comment-region beg end)))))

;; Set Keyboard Shortcut
(global-set-key (kbd "C-x /")  'toggle-comment-region)               ; comment-region

(provide 'dev)