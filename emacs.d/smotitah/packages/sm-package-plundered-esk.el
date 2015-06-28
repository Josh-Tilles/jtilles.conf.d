;;;; Package plundered-esk
(sm-package plundered-esk
            :package-manager nil
            :unmanaged-p t)

;;; TODO insert your package initialization code here
(defun esk:local-column-number-mode ()
  (make-local-variable 'column-number-mode)
  (column-number-mode t))

(defun esk:local-comment-auto-fill ()
  (set (make-local-variable 'comment-auto-fill-only-comments) t)
  (auto-fill-mode t))

(defun esk:turn-on-hl-line-mode ()
  (when (> (display-color-cells) 8)
    (hl-line-mode t)))

(defun esk:turn-on-save-place-mode ()
  (require 'saveplace)
  (setq save-place t))

(defun esk:pretty-lambdas ()
  (font-lock-add-keywords
   nil `(("(?\\(lambda\\>\\)"
          (0 (progn (compose-region (match-beginning 1) (match-end 1)
                                    ,(make-char 'greek-iso8859-7 107))
                    nil))))))

(defun esk:add-watchwords ()
  (font-lock-add-keywords
   nil `(("\\<\\(FIX\\(ME\\)?\\|TODO\\|HACK\\|REFACTOR\\|NOCOMMIT\\)"
          1 font-lock-warning-face t))))
;; @TODO follow up wth rx.el


(defun esk:pairing-bot ()
  "If you can't pair program with a human, use this instead."
  (interactive)
  (message (if (y-or-n-p "Do you have a test for that? " "Good." "Bad!"))))

(sm-provide :package plundered-esk)
