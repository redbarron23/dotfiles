(cua-mode 1)

(transient-mark-mode 1) ; highlight text selection
(delete-selection-mode 1) ; delete seleted text when typing

(global-font-lock-mode 1) ; turn on syntax coloring

(show-paren-mode 1) ; turn on paren match highlighting
(setq show-paren-style 'expression) ; highlight entire bracket expression

;(global-linum-mode 1) ; display line numbers in margin. New in Emacs 23

(column-number-mode 1)

;(require 'highlight-current-line) ; doesn't load

;(require 'package)
; add MELPA to repository list

;(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
; initialise package.el
;(package-initalize)

(global-hl-line-mode 1)

;(require 'rect-mark)
(global-set-key (kbd "C-x r C-SPC") 'rm-set-mark)
(global-set-key (kbd "C-x r C-x")   'rm-exchange-point-and-mark)
(global-set-key (kbd "C-x r C-w")   'rm-kill-region)
(global-set-key (kbd "C-x r M-w")   'rm-kill-ring-save)

;; Setup load-path, autoloads and your lisp system
;; Not needed if you install SLIME via MELPA
(add-to-list 'load-path "~/git/slime")
(require 'slime-autoloads)
(setq inferior-lisp-program "/usr/local/bin/sbcl")

;; Setup load-path, autoloads and your lisp system
(add-to-list 'load-path "~/dir/to/cloned/slime")
(require 'slime-autoloads)
;; Also setup the slime-fancy contrib
(add-to-list 'slime-contribs 'slime-fancy)


(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

;; enable python for in-buffer evaluation
(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)
   (ruby . t)
   (emacs-lisp . t)
   (perl . t)))

;; all python code be safe
;;(defun my-org-confirm-babel-evaluate (lang body)
;;(not (string= lang "python")))
;;(setq org-confirm-babel-evaluate 'my-org-confirm-babel-evaluate)

;; syntax coloring
(setq org-src-fontify-natively t)

;; stop emacs asking for confirmation
(setq org-confirm-babel-evaluate nil)

;(require 'ycmd)
;(ycmd-setup)
