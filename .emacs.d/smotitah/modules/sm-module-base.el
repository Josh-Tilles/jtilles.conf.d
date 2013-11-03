;;;; This module should contain your basic configuration, that will be
;;;; shared by all the profiles - if they include the base module, of
;;;; course!

(sm-module "base"
           ;; add the packages required by your basic configuration here
           :require-packages '(smex
                               ido-ubiquitous
                               expand-region
                               smartparens
                               undo-tree
                               ace-jump-mode
                               browse-kill-ring)
           ;; set this to t if you want to manage this module yourself
           ;; instead of using the builtin package loading infrastructure
           :unmanaged-p nil)


;;;; Remove these 2 blocks if the module is unmanaged
(sm-module-pre (base)
  ;; TODO Write the code that should be executed BEFORE the packages are initialized
  )

(sm-module-post (base)
  ;; TODO Write the code that should be executed AFTER the packages are initialized

  ;; Sets $MANPATH, $PATH, and `exec-path' from my shell, but only on OS X.
  (when (memq window-system '(mac ns))
    (exec-path-from-shell-initialize))
  
  ;;;; `better-defaults' according to Phil Hagelberg (aka Technomancy)
  (bind-key "M-/" #'hippie-expand)
  (bind-key "C-x C-b" #'ibuffer)
  (bind-key "C-s" #'isearch-forward-regexp)
  (bind-key "C-r" #'isearch-backward-regexp)
  (bind-key "C-M-s" #'isearch-forward)
  (bind-key "C-M-r" #'isearch-backward)

  (bind-key "M-?" #'undo) ; a pseudo `hippie-UNexpand'

  ;; http://irreal.org/blog/?p=1781
  (bind-key "C-h C-f" #'find-function)
  (bind-key "C-h C-k" #'find-function-on-key)
  (bind-key "C-h C-v" #'find-variable)
  (bind-key "C-h C-l" #'find-library)

  ;; swap defaults of RET and C-j
  (bind-key "C-j" #'newline prog-mode-map)
  (bind-key "RET" #'newline-and-indent prog-mode-map)
  ;; many places recommend `reindent-then-newline-and-indent' instead.

  ;; workaround. Cf. http://stackoverflow.com/questions/16801689/why-is-it-that-these-prog-mode-keybindings-arent-working-in-emacs-lisp-mode/16809157#16809157
  (unless (keymap-parent lisp-mode-shared-map)
    (set-keymap-parent lisp-mode-shared-map prog-mode-map))

  (add-hook 'lisp-mode-hook #'smartparens-strict-mode)

  ;; Automatically wrap lines that are too long. (esp. comments)
  (add-hook 'prog-mode-hook #'auto-fill-mode)

  ;; Primarily for use in the minibuffer
  (bind-key "C-c C-g" #'abort-recursive-edit)

  )

(sm-provide :module base)
;;;; End base module
