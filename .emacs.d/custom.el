(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(after-save-hook (quote (executable-make-buffer-file-executable-if-script-p)))
 '(apropos-do-all t)
 '(backup-directory-alist (quote (("." . "~/.emacs.d/backups"))))
 '(blink-matching-paren nil nil nil "I don't like the cursor jumping around on me.")
 '(el-get-sources (quote ((:name package :post-init nil) (:name cl-lib :type builtin) (:name packed :checkout "0.3.4") (:name smotitah :type github :pkgname "MerelyAPseudonym/smotitah") (:name ibuffer-vc :checkout "0.6" :type elpa) (:name helm :checkout "v1.5.2") (:name smex :type elpa :checkout "2.0") (:name ido-vertical-mode :type elpa :repo ("MELPA" . "http://melpa.milkbox.net/packages/")) (:name s :type elpa :checkout "1.6.1") (:name dash :type elpa :checkout "1.4.0") (:name projectile :checkout "v0.9.1") (:name undo-tree :repo ("gnu" . "http://elpa.gnu.org/packages/") :type elpa :version "0.6.3") (:name evil :type elpa :checkout "1.0.3") (:name ido-ubiquitous :type elpa :checkout "v1.6") (:name gitconfig-mode :type elpa) (:name gitignore-mode :type elpa) (:name git-commit-mode :type elpa) (:name xml-gen :type elpa :version "0.4") (:name ProofGeneral :url "http://proofgeneral.inf.ed.ac.uk/releases/ProofGeneral-4.3pre130510.tgz" :build/darwin ("cd ProofGeneral && make clean")) (:name clojure-mode :type elpa :repo ("MELPA" . "http://melpa.milkbox.net/packages/")) (:name nrepl :type elpa :checkout "v0.1.7") (:name sml-mode :type elpa :version "6.4") (:name elisp-slime-nav :type elpa :checkout "0.5") (:name diminish :type elpa :version "0.44") (:name exec-path-from-shell :type elpa :checkout "1.2"))))
 '(ido-enable-flex-matching t)
 '(ido-mode (quote both) nil (ido))
 '(ido-use-filename-at-point (quote guess))
 '(ido-use-url-at-point nil)
 '(ido-use-virtual-buffers t)
 '(indent-tabs-mode nil)
 '(mouse-yank-at-point t)
 '(ns-function-modifier (quote hyper) nil nil "http://irreal.org/blog/?p=1423")
 '(package-archives (quote (("gnu" . "http://elpa.gnu.org/packages/") ("marmalade" . "http://marmalade-repo.org/packages/"))))
 '(recentf-mode t)
 '(recentf-save-file "~/.emacs.d/recentf" nil nil "I'd rather not clutter up my home dir with the default: ~/.recentf")
 '(require-final-newline (quote ask))
 '(save-place t nil (saveplace))
 '(save-place-file "~/.emacs.d/places" nil nil "I'd rather not clutter my home dir with the default: ~/.emacs-places")
 '(show-paren-mode t)
 '(sm-base-directory "~/.emacs.d/smotitah/")
 '(smex-save-file "~/.emacs.d/smex-items" nil nil "I'd rather not clutter my home dir with the default: ~/.smex-items")
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
