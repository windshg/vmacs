;; load path
(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/common/")
(add-to-list 'load-path "~/.emacs.d/dev/")
(add-to-list 'load-path "~/.emacs.d/dev/scala/")
(add-to-list 'load-path "~/.emacs.d/ac/")
(add-to-list 'load-path "~/.emacs.d/revive/")
(add-to-list 'load-path "~/.emacs.d/cscope/")
(add-to-list 'load-path "~/.emacs.d/gdb/")

;; init.el
(require 'init)
;; gdb-gul.el
(require 'gud)
;; util.el
(require 'util)
;; revive+
(require 'revive-config)
;; hook.e
(require 'hook)
;; dev.el
(require 'dev)
;; cedet.el
;;(require 'cedet-devel-load)
;; find-file-in-project.el
(require 'find-file-in-project)