;; This buffer is for text that is not saved, and for Lisp evaluation.
;; To create a file, visit it with C-x C-f and enter text in its buffer.


(setq inhibit-startup-screen t)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)))

;;; Code:
;;(setq default-directory "~/")

;; Update the load-path
(add-to-list 'load-path (expand-file-name (concat user-emacs-directory "lisp/")))

(require 'elpa-lndlong)
(require 'package-lndlong)

;; load custom file at last
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))


;; return Yes OR No
(defalias 'yes-or-no-p 'y-or-n-p)


;;change utf-8
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8) 
(set-terminal-coding-system 'utf-8) 
(set-keyboard-coding-system 'utf-8) 
(setq default-buffer-file-coding-system 'utf-8)


(setq gc-cons-threshold most-positive-fixnum)


(provide 'init)
