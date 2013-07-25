;;;; Package browse-kill-ring
(sm-package browse-kill-ring
            ;; :package-manager "el-get"
            :unmanaged-p t)

(eval-after-load 'browse-kill-ring
  '(browse-kill-ring-default-keybindings))

(sm-provide :package browse-kill-ring)
