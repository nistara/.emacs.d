
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(beacon-mode t)
 '(custom-enabled-themes (quote (wombat)))
 '(custom-safe-themes
   (quote
    ("bfdcbf0d33f3376a956707e746d10f3ef2d8d9caa1c214361c9c08f00a1c8409" "40da996f3246a3e99a2dff2c6b78e65307382f23db161b8316a5440b037eb72c" default)))
 '(doc-view-continuous t)
 '(fci-rule-color "gray50")
 '(initial-buffer-choice "~/projects")
 '(markdown-command "/usr/local/bin/pandoc")
 '(org-bullets-bullet-list (quote ("○" "○" "○" "✸" "✿" "◉")))
 '(org-hide-emphasis-markers t)
 '(org-replace-disputed-keys t)
 '(package-selected-packages
   (quote
    (flycheck org-babel-eval-in-repl use-package benchmark-init osx-dictionary evil-search-highlight-persist synosaurus rainbow-delimiters nord-theme pdf-tools auctex htmlize highlight-parentheses git-gutter-fringe fringe-helper git-gutter vimish-fold visual-fill-column zotxt swiper pandoc-mode multiple-cursors markdown-mode magit json-mode exec-path-from-shell elpy csv-mode cl-lib-highlight auto-complete))))


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor ((t (:background "forest green"))))
 '(org-level-1 ((t (:inherit outline-1 :foreground "peru" :weight bold :height 1.1))))
 '(vimish-fold-fringe ((t (:foreground "dark cyan"))))
 '(vimish-fold-mouse-face ((t (:weight bold))))
 '(vimish-fold-overlay ((t (:foreground "dark cyan")))))
(add-to-list 'load-path "/Users/nistara/Documents/ESS/lisp") ;;for R
(load "ess-site")


;; ref: https://github.com/dholm/benchmark-init-el
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)


(require 'benchmark-init)
;; To disable collection of benchmark data after init is done.
(add-hook 'after-init-hook 'benchmark-init/deactivate)


;; use package
;; This is only needed once, near the top of the file
(eval-when-compile
  ;; Following line is not needed if use-package.el is in ~/.emacs.d
  ;; (add-to-list 'load-path "<path where use-package is installed>")
  (require 'use-package))


(require 'package)
(add-to-list 'package-archives
             '("elpy" . "http://jorgenschaefer.github.io/packages/"))

(package-initialize)
(elpy-enable)



;; So that stuff similar to terminal is used
;; =============================================================================
(when (memq window-system '(mac ns));;
  (exec-path-from-shell-initialize))


;; To get emacs to use the anaconda python 3, else it was using the older python 2
;; =============================================================================
(setq python-shell-interpreter "/Users/nistara/anaconda3/bin/python")


;;(elpy-use-ipython)

;;add-hook 'python-mode-hook #'(lambda () (setq py-python-command "/usr/local/Cellar/python3/3.5.1/bin/python3")))

;; For correcting tab and space issue
(add-hook 'inferior-python-mode-hook
  (lambda ()
    (setq
      indent-tabs-mode nil ;; i.e. indent with spaces
      tab-width 4          ;; i.e. tabs consts of 4 spaces
      )))

(ac-config-default) ;; for autocomplete


;;for smart underscore, from http://jmonlong.github.io/Hippocamplus/emacs/#smart-underscores
;; =============================================================================
(add-to-list 'load-path "/Users/nistara/Documents/emacs-downloads") 
(require 'ess-smart-underscore)
(setq ess-S-underscore-when-last-character-is-a-space t)


;; For polymode. From https://github.com/vspinu/polymode
;; =============================================================================
(setq load-path
      (append '("/Users/nistara/Documents/emacs-downloads/polymode"  "/Users/nistara/Documents/emacs-downloads/polymode/modes")
              load-path))
(require 'poly-R)
(require 'poly-markdown)


;;; MARKDOWN
;; =============================================================================
(add-to-list 'auto-mode-alist '("\\.md" . poly-markdown-mode))

;;; R modes
(add-to-list 'auto-mode-alist '("\\.Snw" . poly-noweb+r-mode))
(add-to-list 'auto-mode-alist '("\\.Rnw" . poly-noweb+r-mode))
(add-to-list 'auto-mode-alist '("\\.Rmd" . poly-markdown+r-mode))(add-to-list 'auto-mode-alist '("\\.Rmd\\'" . poly-markdown+r-mode))



;; keybinding for occur
;; =============================================================================
(global-set-key (kbd "C-c o") 'occur)


;; stop indenting after single '#':
;; =============================================================================
;; http://stackoverflow.com/questions/780796/emacs-ess-mode-tabbing-for-comment-region
(setq ess-fancy-comments nil) 

;; (add-hook 'ess-mode-hook 
;;           (lambda () 
;;             (local-set-key (kbd "RET") 'newline)))


;; (defun my-ess-settings ()
;;   (setq ess-indent-with-fancy-comments nil))
;; (add-hook 'ess-mode-hook #'my-ess-settings) 


;; ESS Keybinding for C-RET so that I can use Cmd-RET as well
;; =============================================================================
;; https://stat.ethz.ch/pipermail/ess-help/2013-November/009530.html
(define-key ess-mode-map (kbd "<s-return>") 'ess-eval-region-or-line-and-step)
(define-key ess-mode-map (kbd "<M-return>") 'ess-eval-line) 


;;;; multiple cursors: http://pragmaticemacs.com/emacs/multiple-cursors/
;; =============================================================================
(global-set-key (kbd "C-c m c") 'mc/edit-lines)


;;;; move-lines.el https://github.com/targzeta/move-lines
;; =============================================================================
(require 'move-lines)
(move-lines-binding)


;; ESS switch between the R command line and the file
;; =============================================================================
(global-set-key [C-tab] 'other-window)


;; ;; Backward-kill-line shortcut: http://emacsredux.com/blog/2013/04/08/kill-line-backward/
;; (global-set-key (kbd "<s-backspace>") (lambda ()
;; 					(interactive)
;; 					(kill-line 0)))


;; Kill whole line (because I wanted to delete from anywhere in line)
(global-set-key (kbd "s-d") 'kill-whole-line)


;; Backward kill line
;; =============================================================================
;; ref:https://www.emacswiki.org/emacs/BackwardKillLine
(defun backward-kill-line (arg)
  "Kill ARG lines backward."
  (interactive "p")
  (kill-line (- 1 arg)))

(global-set-key (kbd "<s-backspace>") 'backward-kill-line)


;; Switching between visible windows easily:
;; =============================================================================
;; http://emacs.stackexchange.com/questions/3458/how-to-switch-between-windows-quickly
(windmove-default-keybindings)



;; Create shortcut for 'M-x buffer-menu'
;; =============================================================================
;; (global-set-key (kbd "s-b") 'buffer-menu)
(global-set-key (kbd "s-b") 'ibuffer)


;; Allows use of erase-buffer (first time use sets this command):
;; =============================================================================
;; http://stackoverflow.com/questions/4886745/emacs-what-is-the-shortcut-key-to-clear-buffer
(put 'erase-buffer 'disabled nil)
;; Erase buffer (something like ctrl-l)
(global-set-key (kbd "C-c <backspace>") 'erase-buffer)




;; Getting emacs to use the 'Marked' app:
;; http://superuser.com/questions/569517/is-there-an-extension-that-previews-markdown-instantly
(defun markdown-preview-file ()
  "run Marked on the current file and revert the buffer"
  (interactive)
  (shell-command
   (format "open -a /Applications/Marked\\ 2.app %s"
       (shell-quote-argument (buffer-file-name))))
)


(eval-after-load 'markdown-mode
  '(define-key markdown-mode-map (kbd "C-x p") 'markdown-preview-file)
  )


;; Fix markdown-mode's hijacking of left-word and right-word
;; =============================================================================
;; https://www.reddit.com/r/emacs/comments/51zyda/markdown_mode_hijacked_leftword_and_rightword/d7g9ix1/
;; (eval-after-load "markdown-mode"
;;   '(progn
;;     (define-key markdown-mode-map (kbd "M-<left>") nil)
;;     (define-key markdown-mode-map (kbd "M-<right>") nil)))


;; Replace highlighted text with what I type?:
;; =============================================================================
;; https://www.gnu.org/software/emacs/manual/html_node/efaq/Replacing-highlighted-text.html
(delete-selection-mode 1)



;; Keybinding to use CMD-Left/Right to move through lines
;; =============================================================================
(global-set-key (kbd "<s-right>") 'move-end-of-line)
(global-set-key (kbd "<s-left>") 'move-beginning-of-line)


;; Highlight or color characters written after 8 columns:
;; https://github.com/jordonbiondo/column-enforce-mode
(require 'column-enforce-mode)


;; Pandoc mode:
;; https://joostkremers.github.io/pandoc-mode/
;; (add-hook 'markdown-mode-hook 'pandoc-mode)


;; Fill line with dashes till the end (column 80)
;; =============================================================================
;; http://stackoverflow.com/questions/29435904/emacs-fill-a-line-with-character-x-up-to-column-y
;; NOTE: I edited it to go to end of line and new line as well!!!! :)
(defun fill-to-end ()
  (interactive)
  (save-excursion
    (end-of-line)
    (while (< (current-column) 80)
      (insert-char ?-)))
  (end-of-line)
  ;; (newline)
  )

(global-set-key (kbd "s--") 'fill-to-end)

;; ;; Add hashes till end of line (based on above)
;; (defun fill-hash-to-end ()
;;   (interactive)
;;   (save-excursion
;;     (end-of-line)
;;     (while (< (current-column) 80)
;;       (insert-char ?#)))
;;   (end-of-line)
;;   ;; (newline)
;;   )
;; 
;; (global-set-key (kbd "s-3") 'fill-hash-to-end)

;; Add = till end of line (based on above)
(defun fill-equal-to-end ()
  (interactive)
  (save-excursion
    (end-of-line)
    (while (< (current-column) 80)
      (insert-char ?=)))
  (end-of-line)
  ;; (newline)
  )

(global-set-key (kbd "s-=") 'fill-equal-to-end)





;; Get defau;t copy-pasting behaviour:
;; https://www.emacswiki.org/emacs/Comments_on_CopyAndPaste

(setq x-select-enable-clipboard t)

(require 'simpleclip)

(simpleclip-mode 1)








;; Adding back deleted stuff

 
;; Multiple cursors!!! Add one on mouse click :) 'Binding mouse events'
;; https://github.com/magnars/multiple-cursors.el
(global-set-key (kbd "<C-s-mouse-1>") 'mc/add-cursor-on-click)
;; Other interesting shortcuts:
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
;; NOTE: to copy paste multiple cursor words, exit multiple-cursor (enter) and hit C-x r y
;; Above: http://emacs.stackexchange.com/questions/10879/copying-text-selected-by-multiple-cursors-to-a-new-buffer
 
 
;; turning off echoing of the script inside the R to improve buffer speeds
;; https://stat.ethz.ch/pipermail/ess-help/2011-March/006734.html
(setq ess-eval-visibly-p nil)

;; Toggle comment on region or line: http://stackoverflow.com/a/9697222/5443003
(defun comment-or-uncomment-region-or-line ()
    "Comments or uncomments the region or the current line if there's no active region."
    (interactive)
    (let (beg end)
        (if (region-active-p)
            (setq beg (region-beginning) end (region-end))
            (setq beg (line-beginning-position) end (line-end-position)))
        (comment-or-uncomment-region beg end)
	(next-line)))

(global-set-key (kbd "M-3") 'comment-or-uncomment-region-or-line)


;; Copy paste file from one directory to another
;; http://emacs.stackexchange.com/questions/5603/how-to-quickly-copy-move-file-in-emacs-dired
(setq dired-dwim-target t)


;; Auto revert doc view mode: http://stackoverflow.com/a/4705746/5443003
(add-hook 'doc-view-mode-hook 'auto-revert-mode)
(add-hook 'pdf-view-mode-hook 'auto-revert-mode)


;; ;; Today's date and time: http://stackoverflow.com/a/619525/5443003
;; (defun now ()
;;   "Insert string for the current time formatted like '2:34 PM'."
;;   (interactive)                 ; permit invocation in minibuffer
;;   (insert (format-time-string "%D %-I:%M %p")))

;; (defun today ()
;;   "Insert string for today's date nicely formatted in American style,
;; e.g. Sunday, September 17, 2000."
;;   (interactive)                 ; permit invocation in minibuffer
;;   (insert (format-time-string "%A, %B %e, %Y")))


;; journal: https://www.emacswiki.org/emacs/Journal
 (load "journal")
               (if (file-directory-p "/Users/nistara/projects/journal/")
		   (setq-default journal-dir "/Users/nistara/projects/journal/"))

;; journal: https://www.emacswiki.org/emacs/Journal
 (load "meetings")
               (if (file-directory-p "/Users/nistara/projects/meetings/")
		   (setq-default meeting-dir "/Users/nistara/projects/meetings/"))


(setq insert-directory-program "gls" dired-use-ls-dired t)


;; So emacs opens shell in the same buffer that called it (instead of opening in a separate one
;; and messing up my arrangement
;; https://www.reddit.com/r/emacs/comments/gjqki/is_there_any_way_to_tell_emacs_to_not/#bottom-comments
;; http://www.chemie.fu-berlin.de/chemnet/use/info/emacs/emacs_20.html#SEC157

(add-to-list 'same-window-buffer-names "*shell*")



;; A better shortcut to delete frame:
;; =============================================================================
;; http://pragmaticemacs.com/emacs/a-better-shortcut-for-delete-frame/
(global-set-key (kbd "C-x w") 'delete-frame)


;; Easily move between buffers
;; =============================================================================
;; to do 

;; Stop emacs from locking files: https://www.emacswiki.org/emacs/LockFiles
;; =============================================================================
(setq create-lockfiles nil)







;; ESS customizations:
;; =============================================================================
;; -----------------------------------------------------------------------------
;; For my current directory to show up in the chell prompt:---------------------
;; From: http://superuser.com/questions/31533/how-do-i-fix-my-prompt-in-emacs-shell-mode
;; http://emacs.stackexchange.com/questions/28995/bash-profile-or-bashrc-for-shell-in-emacs/28999#28999
;; http://stackoverflow.com/questions/27953807/how-to-set-shell-mode-prompt-in-emacs
;; http://www.joshstaiger.org/archives/2005/07/bash_profile_vs.html
;; 
;; Hence, created an .emacs_bash file with just the single line:
;; export PS1='\u@ \W\$ '
;;
;; Note: \w instead of \W will give directory path also
;; 
;; When calling shell mode, the first line is bash, but the subsequent ones reflect my current directory.
;; -----------------------------------------------------------------------------



;; ;; Highlight the cursor line.
;; (global-hl-line-mode 1)

;; Highlight matching pairs.
(show-paren-mode 1)



;; (require 'ess-site)
;; (setq-default ess-dialect "R")
;; (require 'ess-eldoc)

;; (setq-default inferior-R-args "--no-restore-history --no-save ")

;; (defadvice ess-eval-buffer (before really-eval-buffer compile activate)
;;   "Prevent call ess-eval-buffer by accident, frequently by
;;    hitting C-c C-b instead of C-c C-n."
;;   (if (yes-or-no-p
;;        (format "Are you sure you want to evaluate the %s buffer?"
;;                buffer-file-name))
;;       (message "ess-eval-buffer started.")
;;     (error "ess-eval-buffer canceled!")
;;     )
;;   )

;; http://www.kieranhealy.org/blog/archives/2009/10/12/make-shift-enter-do-a-lot-in-ess/
(add-hook 'ess-mode-hook
          '(lambda()
             ;; (setq comint-scroll-to-bottom-on-input t)
             ;; (setq comint-scroll-to-bottom-on-output t)
             ;; (setq comint-move-point-for-output t)
             ;; (setq ess-smart-operators t)
             ;; No indent styles.
             (setq ess-indent-with-fancy-comments nil)
             ;; No ## as default to comment.
             (setq-local comment-add 0)
             ))


(setq ess-fancy-comments nil)



  (defun my-ess-settings () 
    (setq ess-indent-with-fancy-comments nil)) 
  (add-hook 'ess-mode-hook #'my-ess-settings) 



;; Comment even in empty lines.
(setq comment-empty-lines t)


;;----------------------------------------------------------------------

;; Mark a word at a point.
;; =============================================================================

(defun mark-whole-word ()
  "Mark the word where the point is."
  (interactive)
  (skip-chars-backward "[[:alnum:]]._")
  (set-mark (point))
  (skip-chars-forward "[[:alnum:]]._"))

(global-set-key (kbd "s-'") 'mark-whole-word)
		     


;; https://github.com/walmes/emacs/blob/master/functions.el


;; (require 'bm)				;https://github.com/joodland/bm

;; (defun bm-bookmark-chunk-in-buffer ()
;;   "Set bookmark on chunk header lines in Rnw and Rmd files."
;;   (interactive)
;;   (let ((regexp "^<<.*>>=$\\|^```{.*}$")
;;         (annotation nil)
;;         (count 0))
;;     (save-excursion
;;       (if bm-annotate-on-create
;;           (setq annotation
;;                 (read-from-minibuffer
;;                  "Annotation: " nil nil nil 'bm-annotation-history)))
;;       (goto-char (point-min))
;;       (while (and (< (point) (point-max))
;;                   (re-search-forward regexp (point-max) t))
;;         (bm-bookmark-add annotation)
;;         (setq count (1+ count))
;;         (forward-line 1)))
;;     (message "%d bookmark(s) created." count)))


;; Pomodoro: https://www.emacswiki.org/emacs/pomodoro.el
;; =============================================================================
;; (require 'pomodoro)


;; Shortcut to open and eval .emacs buffer. And Other shorcuts:
;; =============================================================================
;; http://stackoverflow.com/a/12558095
(global-set-key (kbd "s-0") (lambda() (interactive)(find-file "~/.emacs.d/init.el")))
(global-set-key (kbd "s-9") 'eval-buffer)

;; Shortcut to open journal and todo 
(global-set-key (kbd "s-1") 'journal)
(global-set-key (kbd "s-2") 'todo)

;; Shorcut to open notes folder
(global-set-key (kbd "C-c note") (lambda() (interactive)(find-file "~/projects/journal/notes")))

;; Shorcut to open meetings folder
(global-set-key (kbd "C-c meet") (lambda() (interactive)(find-file "~/projects/meetings")))

;; Shortcut to open bat-tracking folder
(global-set-key (kbd "C-c bat") (lambda() (interactive)(find-file "~/projects/bat-tracking")))

;; Shortcut to open network folders
(global-set-key (kbd "C-c net") (lambda() (interactive)(find-file "~/projects/epi-net")))
(global-set-key (kbd "C-c flu") (lambda() (interactive)(find-file "~/projects/flu-net")))
(global-set-key (kbd "C-c ebo") (lambda() (interactive)(find-file "~/projects/ebo-net")))
(global-set-key (kbd "C-c dis") (lambda() (interactive)(find-file "~/projects/disnet")))

;; Shortcut to open Projects folder in Dropbox
(global-set-key (kbd "C-c dpo") (lambda() (interactive)(find-file "~/Dropbox/UC Davis/Projects")))

;; Shortcut to open projects folder 
(global-set-key (kbd "C-c pro") (lambda() (interactive)(find-file "~/projects")))

;; Shortcut to hugo blog folder
(global-set-key (kbd "C-c hugo") (lambda() (interactive)(find-file "~/projects/hugo-blog")))


;; Insert ""/[]/() around highlighted word:
;; =============================================================================
;; http://stackoverflow.com/questions/2951797/wrapping-selecting-text-in-enclosing-characters-in-emacs
;; For parens you can do M-(
(global-set-key (kbd "M-\"") 'insert-pair)
(global-set-key (kbd "M-(") 'insert-pair)
(global-set-key (kbd "M-[") 'insert-pair)

;; Finding file
;; =============================================================================
(global-set-key (kbd "C-x o") 'find-file)


;; Bigger sized emacs window when launching:
;; =============================================================================
;; http://emacs.stackexchange.com/a/2272
;; http://emacs.stackexchange.com/a/3008
(add-to-list 'initial-frame-alist '(fullscreen . maximized))


;; Disable menu bars when launching:
;; =============================================================================
;; http://kb.mit.edu/confluence/display/istcontrib/Disabling+the+Emacs+menubar,+toolbar,+or+scrollbar
;; To disable the menu bar, place the following line in your .emacs file:
(menu-bar-mode -1)
;; To disable the scrollbar, use the following line:
(toggle-scroll-bar -1)
;; To disable the toolbar, use the following line:
(tool-bar-mode -1) 


;; Improving vertical window divider's color (from white to gray)
;; =============================================================================
;; https://www.reddit.com/r/emacs/comments/3u0d0u/how_do_i_make_the_vertical_window_divider_more/cxbth2e/
(set-face-background 'vertical-border "dark gray")
(set-face-foreground 'vertical-border (face-background 'vertical-border))


;; =============================================================================
;; For pdf-tools to work:
;; =============================================================================
;; (pdf-tools-install) ; only install when needed, because it slows things down
(global-set-key (kbd "M-g h") 'pdf-annot-add-highlight-markup-annotation)



;; To copy files easily from one dired to another:
;; =============================================================================
;; http://emacs.stackexchange.com/questions/5603/how-to-quickly-copy-move-file-in-emacs-dired
;; Put this in your init file: (setq dired-dwim-target t). Then, go to dired, split your window,
;; split-window-vertically & go to another dired directory. When you will press C to copy,
;; the other dir in the split pane will be default destination.
(setq dired-dwim-target t)



;; Setting up emacs backups: http://stackoverflow.com/a/20824625
;; =============================================================================
(setq version-control t     ;; Use version numbers for backups.
      kept-new-versions 10  ;; Number of newest versions to keep.
      kept-old-versions 0   ;; Number of oldest versions to keep.
      delete-old-versions t ;; Don't ask to delete excess backup versions.
      backup-by-copying t)  ;; Copy all files, don't rename them.

(setq vc-make-backup-files t)

;; Default and per-save backups go here:
(setq backup-directory-alist '(("" . "~/.emacs.d/backup/per-save")))

(defun force-backup-of-buffer ()
  ;; Make a special "per session" backup at the first save of each
  ;; emacs session.
  (when (not buffer-backed-up)
    ;; Override the default parameters for per-session backups.
    (let ((backup-directory-alist '(("" . "~/.emacs.d/backup/per-session")))
          (kept-new-versions 3))
      (backup-buffer)))
  ;; Make a "per save" backup on each save.  The first save results in
  ;; both a per-session and a per-save backup, to keep the numbering
  ;; of per-save backups consistent.
  (let ((buffer-backed-up nil))
    (backup-buffer)))

(add-hook 'before-save-hook  'force-backup-of-buffer)


;; To get spell check in emacs: http://emacs.stackexchange.com/questions/19175/where-is-ispell
;; =============================================================================
(setq ispell-program-name "/usr/local/bin/ispell")



;; ;; So I can get function indents like Duncan's suggestions
;; ;; https://stat.ethz.ch/pipermail/ess-help/2010-May/006089.html
;; ;; Changing the default style to RRR+ within R session led to
;; ;;    emacs forgetting that I didn't want fancy indents. So
;; ;;    making RRR+ the default style ensured that emacs combined it
;; ;;    with the indent specification
;; (setq ess-default-style 'RRR+)



;; So I can find the active window more easily, instead of squinting!!
;; =============================================================================
;; http://stackoverflow.com/a/9448316
;; To see colors: M-x list-colors-display
(set-face-attribute  'mode-line
                 nil 
                 ;; :background "deepskyblue3"
                 ;; :background "deep sky blue" 		 
                 :background "DodgerBlue4" 		 
                 :box '(:line-width 1 :style released-button))

;; Icomplete mode
;; https://www.emacswiki.org/emacs/IcompleteMode
;; As you type in the minibuffer, a list of matching commands is echoed
;;    there so you can see how to complete a command
 ;; (icomplete-mode 1)


;; Visual line mode: https://github.com/joostkremers/visual-fill-column
;; (global-visual-line-mode t)
(setq visual-fill-column-fringes-outside-margins t
      visual-fill-column-center-text t
      visual-fill-column-width 100)


;; Making it more intuitive to split windows
;; =============================================================================
;; Ref: ftp://ftp.gnu.org/old-gnu/Manuals/emacs-20.7/html_chapter/emacs_20.html
;; Ref: https://stackoverflow.com/a/6465415/5443003
;; (global-set-key (kbd "M-1") 'split-window-vertically)
;; (global-set-key (kbd "M-2") 'split-window-horizontally)
(global-set-key (kbd "M-1") (lambda () (interactive)(split-window-vertically) (other-window 1)))
(global-set-key (kbd "M-2") (lambda () (interactive)(split-window-horizontally) (other-window 1)))
(global-set-key (kbd "M-0") 'delete-other-windows)
(global-set-key (kbd "M-`") 'delete-window)



;; Get visual-fill-column-mode to be enabled on markdown files
;; (add-hook 'markdown-mode-hook 'visual-fill-column)



;; Seeing file sizes in kbytes
;; =============================================================================
;; http://stackoverflow.com/a/2859033/5443003
(setq dired-listing-switches "-alk")


;; Postgres in emacs:
;; =============================================================================
;; https://www.emacswiki.org/emacs/SqlMode
;; Workaround for postgres database names---------------------------------------
;; Note from site: "PostgreSQL databases with underscores in their names trip
;; up the prompt specified in sql.el. I work around this with the following. Warning,
;; this sets the prompt globally, which is fine by me since I only ever use Postgres.

(add-hook 'sql-interactive-mode-hook
            (lambda ()
              (setq sql-prompt-regexp "^[_[:alpha:]]*[=][#>] ")
              (setq sql-prompt-cont-regexp "^[_[:alpha:]]*[-][#>] ")))


;; https://truongtx.me/2014/08/23/setup-emacs-as-an-sql-database-client
(add-hook 'sql-interactive-mode-hook
          (lambda ()
            (toggle-truncate-lines t)))


(add-hook 'sql-login-hook 'my-sql-login-hook)
 (defun my-sql-login-hook ()
   "Custom SQL log-in behaviours. See `sql-login-hook'."
   ;; n.b. If you are looking for a response and need to parse the
   ;; response, use `sql-redirect-value' instead of `comint-send-string'.
   (when (eq sql-product 'postgres)
     (let ((proc (get-buffer-process (current-buffer))))
       ;; Output each query before executing it. (n.b. this also avoids
       ;; the psql prompt breaking the alignment of query results.)
       (comint-send-string proc "\\set ECHO queries\n"))))



;; For regex:
;; https://www.masteringemacs.org/article/re-builder-interactive-regexp-builder
(require 're-builder)
(setq reb-re-syntax 'string)




;; neotree
;; vimish
;; git gutter


;; Code folding
;; ref: https://github.com/mrkkrp/vimish-fold
(require 'vimish-fold)
(vimish-fold-global-mode 1)


;; ;; sending line to shell
;; ;; ref: https://www.emacswiki.org/emacs/essh.el
;; (require 'essh)                                                    ;;
;; (defun essh-sh-hook ()                                             ;;
;;   (define-key sh-mode-map "\C-c\C-r" 'pipe-region-to-shell)        ;;
;;   (define-key sh-mode-map "\C-c\C-b" 'pipe-buffer-to-shell)        ;;
;;   (define-key sh-mode-map "\C-c\C-j" 'pipe-line-to-shell)          ;;
;;   (define-key sh-mode-map "\C-c\C-n" 'pipe-line-to-shell-and-step) ;;
;;   (define-key sh-mode-map "\C-c\C-f" 'pipe-function-to-shell)      ;;
;;   (define-key sh-mode-map "\C-c\C-d" 'shell-cd-current-directory)) ;;
;; (add-hook 'sh-mode-hook 'essh-sh-hook)                             ;;



;; ;; SQL
;; (add-hook 'sql-mode-hook
;;           (lambda ()
;;             ;; (load-library "sql-library")
;;             (local-set-key (kbd "<s-return>") 'sql-send-line-and-next)))



;; ;; From Dr. Mathieu Basille
;; ;; ref: 
;; (electric-pair-mode 1)
;; (setq electric-pair-pairs '(
;;                             (?\" . ?\")
;;                             (?\` . ?\`)
;;                             (?\( . ?\))
;;                             (?\[ . ?\])
;;                             (?\{ . ?\})
;;                             ) )


;; (setq frame-title-format '(buffer-file-name "Emacs: %b (%f)" "Emacs: %b"))


(setq initial-scratch-message nil)


;; Git gutter
;; =============================================================================
;; ref: https://github.com/syohex/emacs-git-gutter
;; ref: https://github.com/syohex/emacs-git-gutter-fringe
;; Installed fringe-helper, git-gutter-fringe and git-gutter-mode through MELPA
(require 'git-gutter-fringe)
(global-git-gutter-mode +1)


;; Color of the fringe
(set-face-background 'fringe "#181a26")
;; (set-face-background 'git-gutter:modified "purple") ;; background color
(set-face-foreground 'git-gutter:added "SeaGreen4")
(set-face-foreground 'git-gutter:deleted "IndianRed")



;; ;; Speedbar
;; ;; =============================================================================
;; (require 'sr-speedbar)


;; Highlight parenthesis
;; =============================================================================
; Highlight matching parentheses (from Gabor's emacs)
;; (require 'highlight-parentheses)
;; (setq hl-paren-colors '("DeepSkyBlue1" "gold" "IndianRed" "cyan" "green" "orange"
;; 			"magenta"))
;; 
;; (defun hpm-on ()
;;   (highlight-parentheses-mode t))
;; (add-hook 'ess-mode-hook 'hpm-on)
;; (add-hook 'inferior-ess-mode-hook 'hpm-on)


;; Select/mark current line
;; =============================================================================
(defun xah-select-current-line ()
  "Select current line.
URL `http://ergoemacs.org/emacs/modernization_mark-word.html'
Version 2016-07-22"
  (interactive)
  (end-of-line)
  (set-mark (line-beginning-position)))

(global-set-key (kbd "M-l") 'xah-select-current-line)

;; =============================================================================


;; Better shortcut for commenting
;; -----------------------------------------------------------------------------
(global-set-key (kbd "s-3") 'comment-dwim)


;; Recenter with C-l starts with top, then middle, then bottom:
;; -----------------------------------------------------------------------------
(setq recenter-positions '(top middle bottom))


;; org-mode
;; -----------------------------------------------------------------------------
;; ref: http://orgmode.org/worg/org-tutorials/orgtutorial_dto.html

(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

;; ref: http://orgmode.org/manual/Closing-items.html
(setq org-log-done 'time)

;; org-mode export to markdown
;; ref: https://stackoverflow.com/a/22990257/5443003
(eval-after-load "org"
  '(require 'ox-md nil t))


;; Global shortcut for forward/backword word
;; -----------------------------------------------------------------------------
(global-set-key (kbd "<C-right>") 'forward-word)
(global-set-key (kbd "<C-left>") 'left-word)


;; Getting biblio to work; using MELPA (in addition to MELPA stable)
;; -----------------------------------------------------------------------------
;; ref: https://github.com/org-trello/org-trello/issues/195
;; (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
;; (package-refresh-contents)
;; Then installed biblio (needed version 0.2 which was on MELPA, not MELPA stable
;; Then installed org-ref (from MELPA)
;; The commented the above out, so emacs doesn't look for MELPA each time this
;; buffer is evaluated.


;; Customizing org mode:
;; -----------------------------------------------------------------------------
(setq reftex-default-bibliography '("~/Drive/bibliography/references.bib"))

(setq org-ref-bibliography-notes "~/Drive/bibliography/notes.org"
;; see org-ref for use of these variables
      org-ref-default-bibliography '("~/Drive/bibliography/references.bib")
      org-ref-pdf-directory "~/Drive/bibtex-pdfs/")
(setq org-latex-prefer-user-labels t) 

(add-to-list 'load-path "/Users/nistara/Documents/emacs-downloads/org-ref") 
;; (require 'org-ref)

;; for latex export to work with citations and bibliography
;; ref: https://github.com/jkitchin/org-ref/issues/423
(setq org-latex-pdf-process (list "latexmk -shell-escape -bibtex -f -pdf %f"))


;; Setting hyper keys
;; ref: http://ergoemacs.org/emacs/emacs_hyper_super_keys.html
(setq ns-function-modifier 'hyper)  ; make Fn key do Hyper


;; Code highlighting in org-mode
(setq org-src-fontify-natively t
    org-src-tab-acts-natively t
    org-confirm-babel-evaluate nil
    org-edit-src-content-indentation 0)



;; Fill column indicator to mark column
;; =============================================================================
(require 'fill-column-indicator)


;; Modifying emacs prompts
;; =============================================================================
;; ref: https://www.masteringemacs.org/article/disabling-prompts-emacs
(setq kill-buffer-query-functions
  (remq 'process-kill-buffer-query-function
         kill-buffer-query-functions))

;; stop emacs from asking confirmation to kill buffer
;; ref: https://superuser.com/a/354900
(global-set-key (kbd "s-w") (lambda ()
                              (interactive)
                              (kill-buffer (current-buffer))))

(global-set-key (kbd "C-x k") (lambda ()
                              (interactive)
                              (kill-buffer (current-buffer))))


;; latex
;; =============================================================================
(require 'ox-pandoc)
(setq org-pandoc-options-for-latex-pdf '((latex-engine . "xelatex")))


;; org-mode to export doc with ox-pandoc
;; =============================================================================
;; ref: http://kitchingroup.cheme.cmu.edu/blog/2015/06/11/ox-pandoc-org-mode-+-org-ref-to-docx-with-bibliographies/#sec-2
(setq helm-bibtex-format-citation-functions
      '((org-mode . (lambda (x) (insert (concat
                                         "\\cite{"
                                         (mapconcat 'identity x ",")
                                         "}")) ""))))


;; org-mode image size:
;; =============================================================================
(setq org-image-actual-width nil)


;; org-mode executing code-conversion-map-vector
;; =============================================================================
(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)
   (org . t)
   (sh . t)
   (R . t)
   (python . t)
   (latex . t)))

;; org-mode disable underscore to subsript on export
;; =============================================================================
;; use #+OPTIONS: ^:{} in your org file


;; org-mode ovverride key bindings
;; =============================================================================
;; ref: https://superuser.com/a/828744

(require 'org)
(define-key org-mode-map (kbd "<M-S-up>") nil)
(define-key org-mode-map (kbd "<M-S-down>") nil)
(define-key org-mode-map (kbd "<M-up>") nil)
(define-key org-mode-map (kbd "<M-down>") nil)
(define-key org-mode-map (kbd "<M-S-left>") nil)
(define-key org-mode-map (kbd "<M-S-right>") nil)
;; (define-key org-mode-map (kbd "<M-left>") nil)
(define-key org-mode-map (kbd "<S-left>") nil)
(define-key org-mode-map (kbd "<S-right>") nil)
(define-key org-mode-map (kbd "<S-up>") nil)
(define-key org-mode-map (kbd "<S-down>") nil)
;; (define-key org-mode-map (kbd "<M-right>") nil) 
(define-key org-mode-map (kbd "C-<tab>") nil)
(define-key org-mode-map (kbd "C-S-<tab>") nil)
(define-key org-mode-map (kbd "<C-up>") nil)
(define-key org-mode-map (kbd "<C-down>") nil)
(define-key org-mode-map (kbd "<C-S-down>") nil)
(define-key org-mode-map (kbd "<C-S-up>") nil)
(setq org-support-shift-select 'always)

;; ESS indentation
;; =============================================================================
;; ref: https://emacs.stackexchange.com/a/632
(add-hook 'ess-mode-hook (lambda () (setq ess-arg-function-offset nil)))


;; Tab completion in ESS R
;; =============================================================================
;; ref: https://emacs.stackexchange.com/a/29281
(require 'auto-complete-config)
(ac-config-default)
(define-key ac-completing-map (kbd "M-h") 'ac-quick-help)
;; Get tab completion in R script files
;; See this page here
;; https://stat.ethz.ch/pipermail/ess-help/2013-March/008719.html
;; Make sure that this is after the auto-complete package initialization
(setq  ess-tab-complete-in-script t)


;; Backward kill words
;; =============================================================================
;; ref: https://emacs.stackexchange.com/a/30404
(defun backward-kill-char-or-word ()
  (interactive)
  (cond 
   ((looking-back (rx (char word)) 1)
    (backward-kill-word 1))
   ((looking-back (rx (char blank)) 1)
    (delete-horizontal-space t))
   (t
    (backward-delete-char 1))))

(global-set-key (kbd "<M-backspace>") 'backward-kill-char-or-word)


;; Inline images in org-mode
;; =============================================================================

;; ref: https://lists.gnu.org/archive/html/emacs-orgmode/2012-08/msg01402.html
;; -----------------------------------------------------------------------------
;; (setq org-image-actual-width 300)
;;   ;; => always resize inline images to 300 pixels

(setq org-image-actual-width '(600))
  ;; => if there is a #+ATTR.*: width="200", resize to 200,
     ;; otherwise resize to 400

;; (setq org-image-actual-width nil)
;;   ;; => if there is a #+ATTR.*: width="200", resize to 200,
;;      ;; otherwise don't resize
;; 
;; (setq org-image-actual-width t)
;;   ;; => Never resize and use original width (the default)

;; -----------------------------------------------------------------------------

;; ;; code to preview pdf images not working
;; (add-to-list 'image-type-file-name-regexps '("\\.pdf\\'" . imagemagick))
;; (add-to-list 'image-file-name-extensions "pdf")
;; (setq imagemagick-types-inhibit (remove 'PDF imagemagick-types-inhibit))
;; (setq org-image-actual-width 600)



;; show inline images by default
;; =============================================================================
;; ref: https://emacs.stackexchange.com/a/14776/16948
(setq org-startup-with-inline-images t)


;; Increase size of latex (math) fragments
;; =============================================================================
;; ref: https://stackoverflow.com/a/11272625
(setq org-format-latex-options (plist-put org-format-latex-options :scale 1.5))


;; org mode
;; =============================================================================
;; ref: https://emacs.stackexchange.com/a/22180
;; ref: http://endlessparentheses.com/changing-the-org-mode-ellipsis.html

;; `with-eval-after-load' macro was introduced in Emacs 24.x
;; In older Emacsen, you can do the same thing with `eval-after-load'
;; and '(progn ..) form.
(with-eval-after-load 'org       
  (setq org-startup-indented t) ; Enable `org-indent-mode' by default
  ;; (setq org-ellipsis "↴")
  (setq org-ellipsis " ▼")
  (add-hook 'org-mode-hook #'visual-line-mode))

;; Recommendation: You should not directly require a package (even though doing
;; so will also work). Doing so will make emacs load that whole package at
;; startup and could result in slower startup. Instead, you should allow the
;; org package to get automatically loaded as configured in the package itself,
;; and then do org-specific setup in the with-eval-after-load or eval-after-load
;; form.


;; Add matching parentheses
;; =============================================================================
;; ref: https://emacs.stackexchange.com/a/915
(defun close-all-parentheses ()
  (interactive "*")
  (let ((closing nil))
    (save-excursion
      (while (condition-case nil
         (progn
           (backward-up-list)
           (let ((syntax (syntax-after (point))))
             (case (car syntax)
               ((4) (setq closing (cons (cdr syntax) closing)))
               ((7 8) (setq closing (cons (char-after (point)) closing)))))
           t)
           ((scan-error) nil))))
    (apply #'insert (nreverse closing))))


;; org-mode subtree
;; =============================================================================
(global-set-key (kbd "M-s <up>") 'org-move-subtree-up)
(global-set-key (kbd "M-s <down>") 'org-move-subtree-down)


;; org-mode flyspell
;; =============================================================================
;; ref: https://joelkuiper.eu/spellcheck_emacs
(dolist (hook '(org-mode-hook))
  (add-hook hook (lambda () (flyspell-mode 1))))

(eval-after-load "flyspell"
  '(progn
     (define-key flyspell-mouse-map [down-mouse-3] #'flyspell-correct-word)
     (define-key flyspell-mouse-map [mouse-3] #'undefined)))


;; y or n and sentences
;; =============================================================================
;; ref: https://sriramkswamy.github.io/dotemacs/
(fset 'yes-or-no-p 'y-or-n-p)
(setq sentence-end-double-space nil)


;; Synosaurus lookup
;; =============================================================================
(global-set-key (kbd "M-s s") 'synosaurus-lookup)


;; Subtly flash the modeline instead of irritating screen flashing
;; =============================================================================
;; ref: https://www.emacswiki.org/emacs/AlarmBell
(setq ring-bell-function
      (lambda ()
        (let ((orig-fg (face-foreground 'mode-line)))
          (set-face-foreground 'mode-line "#F2804F")
          (run-with-idle-timer 0.1 nil
                               (lambda (fg) (set-face-foreground 'mode-line fg))
                               orig-fg))))


;; Org Mode: Prevent editing of text within collapsed subtree
;; =============================================================================
;; ref: https://emacs.stackexchange.com/a/2091
(setq-default org-catch-invisible-edits 'smart)


;; Shortcut for revert-buffer
;; =============================================================================
(global-set-key (kbd "s-r") 'revert-buffer)


;; Org heading mobility
;; =============================================================================
(global-set-key (kbd "C-c <C-right>") 'org-next-visible-heading)
(global-set-key (kbd "C-c <C-left>") 'org-previous-visible-heading)


;; Shortcut for current working drafts
;; =============================================================================
(global-set-key (kbd "C-c d1")
		(lambda()
		  (interactive)
		  (find-file "~/projects/flu-net/notes/org-draft/flu-net.org")))


;; Screenshot in org-mode
;; =============================================================================
;; ref: https://stackoverflow.com/a/31868530/5443003
(defun my-org-screenshot ()
  "Take a screenshot into a time stamped unique-named file in the
same directory as the org-buffer and insert a link to this file."
  (interactive)
  (org-display-inline-images)
  (setq filename
        (concat
         (make-temp-name
          (concat (file-name-nondirectory (buffer-file-name))
                  "_imgs/"
                  (format-time-string "%Y%m%d_%H%M%S_")) ) ".png"))
  (unless (file-exists-p (file-name-directory filename))
    (make-directory (file-name-directory filename)))
  ; take screenshot
  (if (eq system-type 'darwin)
      (call-process "screencapture" nil nil nil "-i" filename))
  (if (eq system-type 'gnu/linux)
      (call-process "import" nil nil nil filename))
  ; insert into file if correctly taken
  (if (file-exists-p filename)
    (insert (concat "[[file:" filename "]]"))))

(global-set-key (kbd "H-s") 'my-org-screenshot)
(global-set-key (kbd "H-d") 'org-display-inline-images)
(global-set-key (kbd "H-d") 'org-toggle-inline-images)


;; Commecting to mac dictionary
;; =============================================================================
;; ref: https://github.com/xuchunyang/osx-dictionary.el

(require 'osx-dictionary)

;; Key bindings
(global-set-key (kbd "M-s d") 'osx-dictionary-search-word-at-point)
;; (global-set-key (kbd "C-c ds") 'osx-dictionary-search-input)



;; Rmd insert code chunk
;; =============================================================================
;; ref: https://emacs.stackexchange.com/a/27419/16948

(defun tws-insert-r-chunk (header) 
  "Insert an r-chunk in markdown mode. Necessary due to interactions between polymode and yas snippet" 
  (interactive "sHeader: ") 
  (insert (concat "```{r " header "}\n\n```")) 
  (forward-line -1))

(global-set-key (kbd "M-s r") 'tws-insert-r-chunk)


;; Org-mode changing font appearence
;; =============================================================================
;; ref: https://emacs.stackexchange.com/a/5892/16948
(add-to-list 'org-emphasis-alist
             '("*" (:foreground "orange")
               ))

(add-to-list 'org-emphasis-alist
             '("~" (:background "RoyalBlue4")
               ))


;; emacs color picker
;; =============================================================================
;; url: http://raebear.net/comp/emacscolors.html



;; org-mode org-bullets
;; =============================================================================
;; (require 'org-bullets)
;; (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
;; (put 'narrow-to-region 'disabled nil)


;; Using deft package
;; =============================================================================
;; ref: https://github.com/jrblevin/deft
;; (require 'deft)
;; ;; (setq deft-extensions '("txt" "tex" "org"))
;; (setq deft-extensions '("org"))
;; (setq deft-directory "~/projects/research-notes")
;; (setq deft-recursive t)
;; (setq deft-use-filename-as-title nil)
;; (setq deft-use-filter-string-for-filename t)
;; (setq deft-file-naming-rules '((noslash . "-")
;;                                (nospace . "-")
;;                                (case-fn . downcase)))



;; ox-extra
;; =============================================================================
;; ref: https://emacs.stackexchange.com/a/27828/16948
;; ref: https://emacs.stackexchange.com/a/17677/16948
(require 'ox-extra)
(ox-extras-activate '(ignore-headlines))


;; org-mode view tags by setting paths to Agenda
;; =============================================================================
;; ref:https://emacs.stackexchange.com/a/23820/16948
(setq org-agenda-files (apply 'append
                  (mapcar
                   (lambda (directory)
                 (directory-files-recursively
                  directory org-agenda-file-regexp))
                   '("~/projects/"))))



;; Getting flycheck
;; =============================================================================
;; It's istalled, but not loading it when I start emacs, since it takes time

;; IVY Swiper search
;; =============================================================================
;; ref: http://oremacs.com/swiper/#getting-started
;; ref: https://github.com/basille/.emacs.d
(global-set-key (kbd "C-s") 'swiper)



;; Send line to shell
;; =============================================================================
;; ref: https://stackoverflow.com/a/7053298/5443003
(defun sh-send-line-or-region (&optional step)
  (interactive ())
  (let ((proc (get-process "shell"))
        pbuf min max command)
    (unless proc
      (let ((currbuff (current-buffer)))
        (shell)
        (switch-to-buffer currbuff)
        (setq proc (get-process "shell"))
        ))
    (setq pbuff (process-buffer proc))
    (if (use-region-p)
        (setq min (region-beginning)
              max (region-end))
      (setq min (point-at-bol)
            max (point-at-eol)))
    (setq command (concat (buffer-substring min max) "\n"))
    (with-current-buffer pbuff
      (goto-char (process-mark proc))
      (insert command)
      (move-marker (process-mark proc) (point))
      (setq comint-scroll-to-bottom-on-output t)
      ) ;;pop-to-buffer does not work with save-current-buffer -- bug?
    (process-send-string  proc command)
    (display-buffer (process-buffer proc) t)
    (when step 
      (goto-char max)
      (next-line))
    ))

(defun sh-send-line-or-region-and-step ()
  (interactive)
  (sh-send-line-or-region t))

(require 'sh-script)
(define-key sh-mode-map (kbd "<s-return>") 'sh-send-line-or-region-and-step)
;; (define-key sh-mode-map (kbd "<C-s-return>") 'sh-switch-to-process-buffer)


