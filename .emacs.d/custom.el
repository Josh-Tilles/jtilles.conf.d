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
     (:name ibuffer-vc :type elpa :checkout "0.7")
     (:name helm :checkout "v1.5.2")
     (:name s :type elpa :checkout "1.8.0")
     (:name dash :type elpa :checkout "2.8.0")
     (:name projectile :type elpa :repo
            ("MELPA" . "http://melpa.milkbox.net/packages/"))
     (:name undo-tree :type elpa :version "0.6.5")
     (:name git-modes :checkout "0.15.0")
     (:name xml-gen :type elpa :version "0.4")
     (:name ProofGeneral :url "http://proofgeneral.inf.ed.ac.uk/releases/ProofGeneral-4.3pre131011.tgz")
     (:name clojure-mode :type elpa :checkout "2.2.0")
     (:name cider :type elpa :checkout "v0.4.0")
     (:name sml-mode :type emacsmirror :compile
            (".*\\.el$")
            :info "sml-mode.info" :build/darwin
            ("makeinfo sml-mode.texi")
            :version "6.4")
     (:name elisp-slime-nav :type elpa :checkout "0.6")
     (:name diminish :type elpa :version "0.44")
     (:name exec-path-from-shell :type elpa :checkout "1.7")
     (:name ace-jump-mode :type elpa :checkout "v2.0RC")
     (:name cyberpunk-theme :type elpa :repo
            ("MELPA" . "http://melpa.milkbox.net/packages/"))
     (:name align-cljlet :type elpa :version "0.3")
     (:name haskell-mode :checkout "v13.10")
     (:name browse-kill-ring :type elpa :repo
            ("MELPA" . "http://melpa.milkbox.net/packages/"))
     (:name smartparens :type elpa :version "1.6.1"))))
 '(flyspell-use-meta-tab nil)
 '(indent-tabs-mode nil)
 '(ns-function-modifier (quote hyper) nil nil "http://irreal.org/blog/?p=1423")
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("MELPA stable" . "http://stable.melpa.org/packages/"))))
 '(recentf-mode t)
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
