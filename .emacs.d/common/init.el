;;; ### Encoding ###
(setq default-buffer-file-coding-system 'utf-8-unix)            ;缓存文件编码
(setq default-file-name-coding-system 'utf-8-unix)              ;文件名编码
(setq default-keyboard-coding-system 'utf-8-unix)               ;键盘输入编码
(setq default-process-coding-system '(utf-8-unix . utf-8-unix)) ;进程输出输入编码
(setq default-sendmail-coding-system 'utf-8-unix)               ;发送邮件编码
(setq default-terminal-coding-system 'utf-8-unix)               ;终端编码

;; Basic Setting
(setq inhibit-startup-message t) ; hide GNU emacs first page
(setq echo-keystrokes 0.1) ; show key hint sequence as soon as possible
(setq column-number-mode t) ; show column number
(fset 'yes-or-no-p 'y-or-n-p) ; "yes or no" convert to "y or n"
(require 'saveplace) ; save last place of the cursor
(setq-default save-place t)
(setq scroll-margin 10 scroll-conservatively 10000) ; 防止页面滚动时跳动,scroll-margin 3可以在靠近屏幕边沿3行时就开始滚动,可以很好的看到上下文
(scroll-bar-mode -1) ;; hide the scroll view
(tool-bar-mode -1) ; hide toolbar
(setq kill-ring-max 1024) ;; 用一个很大的kill ring. 这样防止我不小心删掉重要的东西
(setq max-lisp-eval-depth 40000)        ;lisp最大执行深度
(setq max-specpdl-size 10000)           ;最大容量
(setq undo-outer-limit 5000000)         ;撤销限制
(setq message-log-max t)                ;设置message记录全部消息, 而不用截去
(setq eval-expression-print-length nil) ;设置执行表达式的长度没有限制
(setq eval-expression-print-level nil)  ;设置执行表达式的深度没有限制
(setq global-mark-ring-max 1024)        ;设置最大的全局标记容量
(setq history-delete-duplicates t)      ;删除minibuffer的重复历史
;(menu-bar-mode 1) ;;显示菜单栏
(put 'upcase-region 'disabled nil)
(put 'set-goal-column 'disabled nil)
(add-hook 'text-mode-hook 'turn-on-auto-fill)
;; Auto-refresh dired on file change
(add-hook 'dired-mode-hook 'auto-revert-mode)

(global-set-key (kbd "C-c l") 'goto-line)                  ; goto-line
(global-set-key (kbd "C-c o") 'previous-multiframe-window) ; previous-multiframe-window
(global-set-key (kbd "C-c s") 'shell-command)              ; shell-command
(global-set-key (kbd "C-c r") 'revert-buffer)              ; revert-buffer
(global-set-key (kbd "C-c d") 'delete-region)              ; delete-region
(global-set-key (kbd "C-c q") 'auto-fill-mode)             ; auto-fill-mode

;; load path
;; load utility modes on startup
(winner-mode) ; winner mode
(global-linum-mode) ; linum modew

(provide 'init)