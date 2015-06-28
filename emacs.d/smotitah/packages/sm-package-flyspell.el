;;;; Package flyspell
(sm-package flyspell
            ;;:package-manager "builtin"
            :unmanaged-p t)

;; Advice from http://www.emacswiki.org/emacs/FlySpell#toc7
(bind-key "<f8>" #'ispell-word)
(bind-key "C-S-<f8>" #'flyspell-mode)
(bind-key "C-M-<f8>" #'flyspell-buffer)
(bind-key "C-<f8>" #'flyspell-check-previous-higlighted-word)
(defun flyspell-check-next-highlighted-word ()
  "Custom function to spell check next highlighted word"
  (interactive)
  (flyspell-goto-next-error)
  (ispell-word))
(bind-key "M-<f8>" #'flyspell-check-next-highlighted-word)


;;;; trials


(add-hook 'text-mode-hook #'flyspell-mode)
(add-hook 'prog-mode-hook #'flyspell-prog-mode) ;i.e., in comments & strings

;; http://www.emacswiki.org/emacs/InteractiveSpell#toc5
(setq ispell-extra-args '("--sug-mode=ultra"))

(sm-provide :package flyspell)
