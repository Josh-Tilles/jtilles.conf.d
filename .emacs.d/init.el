;; imitate devblog.avdi.org/2011/09/08/emacs-reboot-4-customizing-customization
(defvar jpt:emacs-init-file load-file-name
  "Enables the ability to refer to relative paths")
(defvar jpt:emacs-config-dir
  (file-name-directory jpt:emacs-init-file)
  "The configuration directory, defined relative to `jpt:emacs-init-file'.")


(defun jpt:bootstrap-el-get ()
  (add-to-list 'load-path 
	       (concat jpt:emacs-config-dir "el-get/el-get"))
  ;; copied 'n pasted from the el-get README
  (unless (require 'el-get nil 'noerror)
    (with-current-buffer
	(url-retrieve-synchronously
	 "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
      (goto-char (point-max))
      (eval-print-last-sexp))))

(jpt:bootstrap-el-get)
;;(el-get 'sync) ;set up ALL THE THINGS

;;(defvar el-get-sources) ;unnecessary because of auto-compile pkg?


;; Make sure Emacs knows to prefer a newer *.el over an older *.elc.
(add-to-list 'el-get-sources
	     '(:name packed :type github :pkgname "tarsius/packed"))
(add-to-list 'el-get-sources
	     '(:name auto-compile :type github :pkgname "tarsius/auto-compile"
		     :depends (packed) ;well, on cl-lib too...
                     ;;; I'd expect the below to work, but it doesn't...
		     ;; :after
		     ;; (progn
		     ;;   (auto-compile-on-save-mode 1)
		     ;;   (auto-compile-on-load-mode 1))))
		     ))
(el-get 'sync '(packed auto-compile))
(auto-compile-on-save-mode 1)
(auto-compile-on-load-mode 1)
;; @TODO alternate idea is make auto-compile & packed
;; the ONLY Git submodules. Then I really could load them first.
;; (Though it would be best if they just became a part of Emacs core.)


(defconst +CUSTOM_FILE-NAME+ "custom.el"
  "The name of the file that holds my customizations.")
;; Other possible names are `customizations.el', 
;; (Common Lisp has the convention of bookending names of constants with `+'.)

(set 'custom-file (expand-file-name +CUSTOM_FILE-NAME+ jpt:emacs-config-dir))
;;(load custom-file 'no-error)
(load custom-file) ; squawk if it doesn't exist


;; a few packages are special, like el-get, smotitah, use-package, and ...?
;; and so I configure them here, at the "top level".


(el-get 'sync 'use-package)
(require 'bind-key)


;; Set up the smotitah configuration framework
(add-to-list 'el-get-sources 
	     '(:name smotitah :type github :pkgname "MerelyAPseudonym/smotitah"))
(el-get 'sync 'smotitah)
(add-hook 'after-init-hook #'sm-initialize)


;; (added as per recommendation from `auto-compile' documentation)
;; Local Variables:
;; no-byte-compile: t
;; End:
