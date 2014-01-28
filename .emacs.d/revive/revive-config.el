(require 'revive)
(autoload 'save-current-configuration "revive" "Save status" t)
(autoload 'resume "revive" "Resume Emacs" t)
(autoload 'wipe "revive" "Wipe Emacs" t)

;; keyboard
(define-key ctl-x-map "S" 'save-current-configuration)
(define-key ctl-x-map "R" 'resume)
(define-key ctl-x-map "W" 'wipe)

;; hooks
(add-hook 'kill-emacs-hook 'save-current-configuration) ; save configuration before quit emacs
(add-hook 'emacs-startup-hook 'resume) ; resume configuration after startup

(provide 'revive-config)