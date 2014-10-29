;; imitate devblog.avdi.org/2011/09/08/emacs-reboot-4-customizing-customization
(defvar jpt:emacs-init-file load-file-name
  "Enables the ability to refer to relative paths")
(defvar jpt:emacs-config-dir
  (file-name-directory jpt:emacs-init-file)
  "The configuration directory, defined relative to `jpt:emacs-init-file'.")

(defconst +CUSTOM_FILE-NAME+ "custom.el"
  "The name of the file that holds my customizations.")
;; Other possible names are `customizations.el',

(defconst +EL-GET_RECIPES_DIRECTORY_NAME+ "Recipes for El-Get"
  "The name of the directory that holds my local el-get `.rcp' files.")

(defconst +MANUALLY-INSTALLED_PACKAGES_DIRECTORY_NAME+
  "manually-installed packages"
  "The name of the directory into which I place 3rd-party code not managed by
El-Get.")

;; (Common Lisp has the convention of bookending names of constants with `+'.)

(defvar jpt:manual-installations-dir
  (expand-file-name +MANUALLY-INSTALLED_PACKAGES_DIRECTORY_NAME+
		    jpt:emacs-config-dir)
  "This folder stores packages that I've manually installed.")

(defvar jpt:savefiles-dir (expand-file-name "savefiles" jpt:emacs-config-dir)
  "This folder stores all the automatically generated save/history-files.")

(unless (file-exists-p jpt:savefiles-dir)
  (make-directory jpt:savefiles-dir))

;; Make sure Emacs knows to prefer a newer *.el over an older *.elc.
(add-to-list 'load-path (expand-file-name "packed"
					  jpt:manual-installations-dir))
(add-to-list 'load-path (expand-file-name "auto-compile"
					  jpt:manual-installations-dir))
(let ((load-prefer-newer t)) ;(heeding the advice from the documentation for tarsius’s "auto-compile")
  (require 'auto-compile)
  (auto-compile-on-load-mode 1)
  (auto-compile-on-save-mode 1))

(set 'custom-file (expand-file-name +CUSTOM_FILE-NAME+ jpt:emacs-config-dir))
;;(load custom-file 'no-error)
(load custom-file) ; squawk if it doesn't exist

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
(add-to-list 'el-get-recipe-path
             (expand-file-name +EL-GET_RECIPES_DIRECTORY_NAME+ jpt:emacs-config-dir))
;;(el-get 'sync) ;set up ALL THE THINGS


;; The `bind-key' package is (currently) distributed as a part of jwiegley's
;; `use-package', but I want to use it in my configuration as though it were
;; native. In order to do that, I load it early in the configuration process.
(add-to-list 'load-path (expand-file-name "use-package"
                                          jpt:manual-installations-dir))
(require 'bind-key)


;; Set up the smotitah configuration framework
(add-to-list 'load-path (expand-file-name "smotitah"
                                          jpt:manual-installations-dir))
(autoload #'sm-initialize "smotitah")
(add-hook 'after-init-hook #'sm-initialize)
;; So `sm-initialize' will run *after* `package-initialize'

;;;;;; (added as per recommendation from `auto-compile' documentation)
;; Local Variables:
;; no-byte-compile: t
;; End:
