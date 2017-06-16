(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (wombat)))
 '(doc-view-continuous t)
 '(initial-buffer-choice "~/projects")
 '(markdown-command "/usr/local/bin/pandoc")
 '(package-selected-packages
   (quote
    (vimish-fold visual-fill-column pdf-tools zotxt swiper pandoc-mode multiple-cursors markdown-mode magit json-mode exec-path-from-shell elpy csv-mode cl-lib-highlight auto-complete))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(add-to-list 'load-path "/Users/nistara/Documents/ESS/lisp") ;;for R
(load "ess-site")



(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)




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


;; Backward kill sentence (like I do in Macs)
;; =============================================================================
(global-set-key (kbd "<s-backspace>") 'backward-kill-sentence)


;; Switching between visible windows easily:
;; =============================================================================
;; http://emacs.stackexchange.com/questions/3458/how-to-switch-between-windows-quickly
(windmove-default-keybindings)



;; Create shortcut for 'M-x buffer-menu'
;; =============================================================================
(global-set-key (kbd "s-b") 'buffer-menu)


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
(eval-after-load "markdown-mode"
  '(progn
    (define-key markdown-mode-map (kbd "M-<left>") nil)
    (define-key markdown-mode-map (kbd "M-<right>") nil)))


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

;; Add hashes till end of line (based on above)
(defun fill-hash-to-end ()
  (interactive)
  (save-excursion
    (end-of-line)
    (while (< (current-column) 80)
      (insert-char ?#)))
  (end-of-line)
  ;; (newline)
  )

(global-set-key (kbd "s-3") 'fill-hash-to-end)

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


(setq insert-directory-program "gls" dired-use-ls-dired t)


;; So emacs opens shell in the same buffer that called it (instead of opening in a separate one
;; and messing up my arrangment
;; https://www.reddit.com/r/emacs/comments/gjqki/is_there_any_way_to_tell_emacs_to_not/#bottom-comments
;; http://www.chemie.fu-berlin.de/chemnet/use/info/emacs/emacs_20.html#SEC157

(add-to-list 'same-window-buffer-names "*shell*")



;; A better shortcut to delete frame:
;; =============================================================================
;; http://pragmaticemacs.com/emacs/a-better-shortcut-for-delete-frame/
(global-set-key (kbd "C-x w") 'delete-frame)


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

;; Shortcut to open bats folder
(global-set-key (kbd "C-c bats") (lambda() (interactive)(find-file "~/projects/bats")))

;; Shortcut to open network folder
(global-set-key (kbd "C-c net") (lambda() (interactive)(find-file "~/projects/epi-net")))

;; Shortcut to open Projects folder in Dropbox
(global-set-key (kbd "C-c dpo") (lambda() (interactive)(find-file "~/Dropbox/UC Davis/Projects")))

;; Shortcut to open projects folder 
(global-set-key (kbd "C-c pro") (lambda() (interactive)(find-file "~/projects")))


;; Insert ""/[]/() around highlighted word:
;; =============================================================================
;; http://stackoverflow.com/questions/2951797/wrapping-selecting-text-in-enclosing-characters-in-emacs
;; For parens you can do M-(
(global-set-key (kbd "M-\"") 'insert-pair)
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
(global-set-key (kbd "M-1") 'split-window-vertically)
(global-set-key (kbd "M-2") 'split-window-horizontally)
(global-set-key (kbd "M-`") 'delete-other-windows)
(global-set-key (kbd "M-0") 'delete-window)



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


;; ;; ref: https://stackoverflow.com/a/7053298/5443003
;; (defun sh-send-line-or-region (&optional step)
;;   (interactive ())
;;   (let ((proc (get-process "shell"))
;;         pbuf min max command)
;;     (unless proc
;;       (let ((currbuff (current-buffer)))
;;         (shell)
;;         (switch-to-buffer currbuff)
;;         (setq proc (get-process "shell"))
;;         ))
;;     (setq pbuff (process-buffer proc))
;;     (if (use-region-p)
;;         (setq min (region-beginning)
;;               max (region-end))
;;       (setq min (point-at-bol)
;;             max (point-at-eol)))
;;     (setq command (concat (buffer-substring min max) "\n"))
;;     (with-current-buffer pbuff
;;       (goto-char (process-mark proc))
;;       (insert command)
;;       (move-marker (process-mark proc) (point))
;;       ) ;;pop-to-buffer does not work with save-current-buffer -- bug?
;;     (process-send-string  proc command)
;;     (display-buffer (process-buffer proc) t)
;;     (when step 
;;       (goto-char max)
;;       (next-line))
;;     ))
;; 
;; (defun sh-send-line-or-region-and-step ()
;;   (interactive)
;;   (sh-send-line-or-region t))
;; (defun sh-switch-to-process-buffer ()
;;   (interactive)
;;   (pop-to-buffer (process-buffer (get-process "shell")) t))

;; (define-key sh-mode-map [(control ?j)] 'sh-send-line-or-region-and-step)
;; (define-key sh-mode-map [(control ?c) (control ?z)] 'sh-switch-to-process-buffer)


;; Code folding
;; ref: https://github.com/mrkkrp/vimish-fold
(require 'vimish-fold)
(vimish-fold-global-mode 1)





