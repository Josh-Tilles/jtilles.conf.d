(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(after-save-hook
   (quote
    (executable-make-buffer-file-executable-if-script-p)))
 '(apropos-do-all t)
 '(backup-directory-alist (quote (("." . "~/.emacs.d/backups"))))
 '(blink-matching-paren nil nil nil "I don't like the cursor jumping around on me.")
 '(comment-auto-fill-only-comments t)
 '(custom-safe-themes
   (quote
    ("007b69ffec046a5842e34fea287b23c49175dfd6c6d5a0d9cdf150a2e8a8979f" "ea0c5df0f067d2e3c0f048c1f8795af7b873f5014837feb0a7c8317f34417b04" default)))
 '(delete-selection-mode t)
 '(el-get-sources
   (quote
    ((:name package :post-init nil)
     (:name cl-lib :type builtin)
     (:name packed :checkout "0.3.4")
     (:name auto-compile :checkout "1.0.12")
     (:name smotitah :type github :pkgname "MerelyAPseudonym/smotitah")
     (:name ibuffer-vc :checkout "0.7" :type elpa)
     (:name helm :checkout "v1.5.2")
     (:name smex :checkout "3.0" :type elpa)
     (:name ido-vertical-mode :type elpa :repo
            ("MELPA" . "http://melpa.milkbox.net/packages/"))
     (:name s :checkout "1.8.0" :type elpa)
     (:name dash :checkout "2.4.0" :type elpa)
     (:name projectile :type elpa :repo
            ("MELPA" . "http://melpa.milkbox.net/packages/"))
     (:name undo-tree :type elpa :version "0.6.5")
     (:name evil :checkout "1.0.9")
     (:name ido-ubiquitous :checkout "v2.9" :type elpa)
     (:name gitconfig-mode :type elpa :version "0.4-SNAPSHOT" :repo
            ("MELPA" . "http://melpa.milkbox.net/packages/"))
     (:name gitignore-mode :type elpa :version "0.2-SNAPSHOT" :repo
            ("MELPA" . "http://melpa.milkbox.net/packages/"))
     (:name git-commit-mode :checkout "git-commit-mode-0.13" :type elpa)
     (:name xml-gen :type elpa :version "0.4")
     (:name ProofGeneral :url "http://proofgeneral.inf.ed.ac.uk/releases/ProofGeneral-4.3pre131011.tgz")
     (:name clojure-mode :type elpa :repo
            ("MELPA" . "http://melpa.milkbox.net/packages/"))
     (:name cider :checkout "v0.4.0" :type elpa)
     (:name sml-mode :compile
            (".*\\.el$")
            :info "sml-mode.info" :type emacsmirror :build/darwin
            ("makeinfo sml-mode.texi")
            :version "6.4")
     (:name elisp-slime-nav :checkout "0.6" :type elpa)
     (:name diminish :type elpa :version "0.44")
     (:name exec-path-from-shell :checkout "1.6" :type elpa)
     (:name expand-region :type elpa :repo
            ("MELPA" . "http://melpa.milkbox.net/packages/")
            :version "0.10-SNAPSHOT")
     (:name ace-jump-mode :checkout "v2.0RC" :type elpa)
     (:name cyberpunk-theme :type elpa :repo
            ("MELPA" . "http://melpa.milkbox.net/packages/"))
     (:name align-cljlet :type elpa :version "0.3")
     (:name haskell-mode :checkout "v13.10")
     (:name browse-kill-ring :type elpa :repo
            ("MELPA" . "http://melpa.milkbox.net/packages/"))
     (:name smartparens :type elpa :version "1.6.1"))))
 '(evil-want-C-u-scroll t)
 '(flyspell-use-meta-tab nil)
 '(global-undo-tree-mode t)
 '(ido-enable-flex-matching t)
 '(ido-mode (quote both) nil (ido))
 '(ido-save-directory-list-file "~/.emacs.d/savefiles/ido.last")
 '(ido-use-filename-at-point (quote guess))
 '(ido-use-url-at-point nil)
 '(ido-use-virtual-buffers t)
 '(indent-tabs-mode nil)
 '(mouse-yank-at-point t)
 '(ns-function-modifier (quote hyper) nil nil "http://irreal.org/blog/?p=1423")
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("marmalade" . "http://marmalade-repo.org/packages/"))))
 '(recentf-mode t)
 '(recentf-save-file "~/.emacs.d/savefiles/recentf" nil nil "I'd rather not clutter up my home dir with the default: ~/.recentf")
 '(require-final-newline (quote ask))
 '(save-place t nil (saveplace))
 '(save-place-file "~/.emacs.d/savefiles/places" nil nil "I'd rather not clutter my home dir with the default: ~/.emacs-places")
 '(show-paren-mode t)
 '(sm-base-directory "~/.emacs.d/smotitah/")
 '(smartparens-global-mode nil)
 '(smex-save-file "~/.emacs.d/savefiles/smex-items" nil nil "I'd rather not clutter my home dir with the default: ~/.smex-items")
 '(sp-base-key-bindings (quote paredit))
 '(tab-always-indent (quote complete))
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
