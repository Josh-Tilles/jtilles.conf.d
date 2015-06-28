;;;; Package plundered-sublime
(sm-package plundered-sublime
            :package-manager nil
            :unmanaged-p t)

;;; TODO insert your package initialization code here

;;; http://www.sublimetext.com/docs/2/multiple_selection_with_the_keyboard.html
;; Command+D for "Quick Add Next"
;; Command+U to step backwards in selecting.
;; Control+Shift+{Up,Down} to add the line above or below to the selection.
;; Splitting the Selection into Lines (?) Command-Shift-L
;; To add all occurrences of the current word to the selection, use "Find All" on Control+Command+G.
;; Goto Definition is Command-Alt-Down



(sm-provide :package plundered-sublime)
