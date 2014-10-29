(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(backup-directory-alist (quote (("." . "~/.emacs.d/backups"))))
 '(comment-auto-fill-only-comments t)
 '(el-get-sources
   (quote
    ((:name package :post-init nil)
     (:name cl-lib :type builtin)
     (:name ibuffer-vc :checkout "0.7" :type elpa)
     (:name helm :checkout "v1.5.2")
     (:name ido-vertical-mode :repo
            ("MELPA" . "http://melpa.milkbox.net/packages/")
            :type elpa)
     (:name s :checkout "1.8.0" :type elpa)
     (:name dash :checkout "2.8.0" :type elpa)
     (:name projectile :repo
            ("MELPA" . "http://melpa.milkbox.net/packages/")
            :type elpa)
     (:name undo-tree :type elpa :version "0.6.5")
     (:name ido-ubiquitous :checkout "v2.9" :type elpa)
     (:name git-modes :checkout "0.15.0")
     (:name xml-gen :type elpa :version "0.4")
     (:name ProofGeneral :url "http://proofgeneral.inf.ed.ac.uk/releases/ProofGeneral-4.3pre131011.tgz")
     (:name clojure-mode :checkout "2.2.0" :type elpa)
     (:name cider :checkout "v0.4.0" :type elpa)
     (:name sml-mode :compile
            (".*\\.el$")
            :info "sml-mode.info" :type emacsmirror :build/darwin
            ("makeinfo sml-mode.texi")
            :version "6.4")
     (:name elisp-slime-nav :checkout "0.6" :type elpa)
     (:name diminish :type elpa :version "0.44")
     (:name exec-path-from-shell :checkout "1.7" :type elpa)
     (:name expand-region :repo
            ("MELPA" . "http://melpa.milkbox.net/packages/")
            :type elpa :version "0.10-SNAPSHOT")
     (:name ace-jump-mode :checkout "v2.0RC" :type elpa)
     (:name cyberpunk-theme :repo
            ("MELPA" . "http://melpa.milkbox.net/packages/")
            :type elpa)
     (:name align-cljlet :type elpa :version "0.3")
     (:name haskell-mode :checkout "v13.10")
     (:name browse-kill-ring :repo
            ("MELPA" . "http://melpa.milkbox.net/packages/")
            :type elpa)
     (:name smartparens :type elpa :version "1.6.1"))))
 '(flyspell-use-meta-tab nil)
 '(ido-save-directory-list-file "~/.emacs.d/savefiles/ido.last")
 '(indent-tabs-mode nil)
 '(ns-function-modifier (quote hyper) nil nil "http://irreal.org/blog/?p=1423")
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("MELPA stable" . "http://melpa-stable.milkbox.net/packages/"))))
 '(recentf-mode t)
 '(recentf-save-file "~/.emacs.d/savefiles/recentf" nil nil "I'd rather not clutter up my home dir with the default: ~/.recentf")
 '(require-final-newline (quote ask))
 '(save-place t nil (saveplace))
 '(show-paren-mode t)
 '(sm-base-directory "~/.emacs.d/smotitah/")
 '(smartparens-global-mode nil)
 '(sp-base-key-bindings (quote paredit))
 '(tab-always-indent (quote complete)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
