
;; ref: https://github.com/dholm/benchmark-init-el
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
;; ref: https://github.com/dholm/benchmark-init-el
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))

(package-initialize)

;; For org-mode
(add-to-list 'load-path "~/Documents/emacs-downloads/org-9.1.9/lisp") 
(add-to-list 'load-path "~/Documents/emacs-downloads/org-9.1.9/contrib/lisp" t)

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
 '(custom-enabled-themes (quote (night-owl)))
 '(custom-safe-themes
   (quote
    ("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "4aa183d57d30044180d5be743c9bd5bf1dde686859b1ba607b2eea26fe63f491" "039399f7bf49e440fee74e17e77c6ad982a6336831769e51958b02db6ed77952" "7673563371dcabdad088479a99950c9e96b59f12fd8018b90726c545fdcc4843" "addb8dddf1706c88f77205c339db3189968216b8b0f04ab5f3a3cb47a41b2c9c" "21fb497b14820147b2b214e640b3c5ee19fcadc15bc288e3c16c9c9575d95d66" "bfdcbf0d33f3376a956707e746d10f3ef2d8d9caa1c214361c9c08f00a1c8409" "40da996f3246a3e99a2dff2c6b78e65307382f23db161b8316a5440b037eb72c" default)))
 '(doc-view-continuous t)
 '(fci-rule-color "gray50")
 '(initial-buffer-choice "~/projects")
 '(line-spacing 0.15)
 '(markdown-command "/usr/local/bin/pandoc")
 '(org-agenda-files
   (quote
    ("/Users/nistara/projects/VISHA/report.org" "/Users/nistara/projects/bat-tracking/notes/DTRA_report/DTRA_report.org" "/Users/nistara/projects/bat-tracking/notes/draft_bat-track/bat-track.org" "/Users/nistara/projects/bat-tracking/notes/draft_bat-track/discussion.org" "/Users/nistara/projects/bat-tracking/notes/draft_bat-track/new_draft.org" "/Users/nistara/projects/bat-tracking/notes/draft_bat-track/notes_other.org" "/Users/nistara/projects/bat-tracking/notes/draft_bat-track/notes_paper.org" "/Users/nistara/projects/bat-tracking/notes/draft_bat-track/scrap.org" "/Users/nistara/projects/bat-tracking/notes/draft_bat-track/sedation.org" "/Users/nistara/projects/bat-tracking/notes/draft_bat-track/supplementary.org" "/Users/nistara/projects/bat-tracking/notes/clear_thoughts.org" "/Users/nistara/projects/bat-tracking/notes/clear_thoughts2.org" "/Users/nistara/projects/disnet.Rcheck/00_pkg_src/disnet/inst/notes.org" "/Users/nistara/projects/disnet.Rcheck/disnet/notes.org" "/Users/nistara/projects/disnet/inst/notes.org" "/Users/nistara/projects/dissertation/dissertation/diss_requirements.org" "/Users/nistara/projects/dissertation/dissertation/dissertation.org" "/Users/nistara/projects/ebo-net/notes/chapter_3/ebo-net.org" "/Users/nistara/projects/ebo-net/notes/draft/ebo-net.org" "/Users/nistara/projects/ebo-net/notes/draft/exp.org" "/Users/nistara/projects/ebo-net/notes/draft/notes_other.org" "/Users/nistara/projects/ebo-net/notes/other/R-notes.org" "/Users/nistara/projects/ebo-net/notes/other/notes_grass.org" "/Users/nistara/projects/flu-net/notes/org-draft/flu-net.org" "/Users/nistara/projects/flu-net/notes/org-draft/flu-net.tmp58803t5k.org" "/Users/nistara/projects/flu-net/notes/org-draft/flu-net.tmp9204HHf.org" "/Users/nistara/projects/flu-net/notes/org-draft/icomos_poster.org" "/Users/nistara/projects/flu-net/notes/ref_notes.org" "/Users/nistara/projects/install_log/install-log.org" "/Users/nistara/projects/journal/notes/brew.org" "/Users/nistara/projects/journal/notes/compiling.org" "/Users/nistara/projects/journal/notes/grass.org" "/Users/nistara/projects/journal/notes/linux_ssh.org" "/Users/nistara/projects/journal/notes/org-info.org" "/Users/nistara/projects/journal/notes/term.org" "/Users/nistara/projects/journal/notes/virtualbox.org" "/Users/nistara/projects/journal/notes/words.org" "/Users/nistara/projects/journal/notes/writing.org" "/Users/nistara/projects/journal/agenda.org" "/Users/nistara/projects/meetings/2017/2017-11-28_Tues.org" "/Users/nistara/projects/meetings/2018/2018-01-16_Tue_Jonna.org" "/Users/nistara/projects/meetings/2018/2018-01-23_Tue_Jonna.org" "/Users/nistara/projects/meetings/2018/2018-02-15_Thu_Jonna.org" "/Users/nistara/projects/meetings/2018/2018-03-01_Thu_Jonna.org" "/Users/nistara/projects/meetings/2018/2018-04-03_Tue_Liz.org" "/Users/nistara/projects/meetings/2018/2018-04-06_Fri_Jonna.org" "/Users/nistara/projects/meetings/2018/2018-04-25_Wed_Jonna.org" "/Users/nistara/projects/meetings/2018/2018-05-14_Mon_Duncan.org" "/Users/nistara/projects/meetings/2018/2018-05-18_Fri_Jonna.org" "/Users/nistara/projects/meetings/2018/2018-07-11_Wed_Jonna.org" "/Users/nistara/projects/meetings/2018/2018-07-17_Tue_Jonna.org" "/Users/nistara/projects/meetings/2018/2018-08-08_Wed_Jonna.org" "/Users/nistara/projects/meetings/2018/2018-12-04_Tue_Jonna.org" "/Users/nistara/projects/meetings/2018/2018-12-12_Wed_Jonna.org" "/Users/nistara/projects/meetings/2019-01-03_Thu_Jonna.org" "/Users/nistara/projects/meetings/2019-01-14_Mon_Jonna-Duncan.org" "/Users/nistara/projects/meetings/2019-02-12_Tue_Jonna.org" "/Users/nistara/projects/meetings/2019-02-20_Wed_Jonna.org" "/Users/nistara/projects/meetings/2019-02-28_Thu_Jonna.org" "/Users/nistara/projects/meetings/2019-03-29_Fri_Jonna.org" "/Users/nistara/projects/meetings/2019-04-05_Fri_Jonna.org" "/Users/nistara/projects/org/code.org" "/Users/nistara/projects/org/drag.org" "/Users/nistara/projects/org/glos.org" "/Users/nistara/projects/org/org-ref-plain.org" "/Users/nistara/projects/org/t.org" "/Users/nistara/projects/org/test.org" "/Users/nistara/projects/org/testref.org" "/Users/nistara/projects/side/2019_predict_conf/predict_conf/meeting_notes/2018_notes.org" "/Users/nistara/projects/side/2019_predict_conf/predict_conf/meeting_notes/2019-03-12_predict-hour.org" "/Users/nistara/projects/side/2019_predict_conf/predict_conf/resources.org" "/Users/nistara/projects/side/DTRA_bat-flyway/brian_proposal.org" "/Users/nistara/projects/side/DTRA_bat-flyway/proposal.org" "/Users/nistara/projects/side/dsi-proposal/draft-final.org" "/Users/nistara/projects/side/dsi-proposal/draft.org" "/Users/nistara/projects/side/dsi-proposal/proposal.org" "/Users/nistara/projects/side/predict_NLP/notes/2018-12-11_hector-talk.org" "/Users/nistara/projects/side/predict_NLP/notes/2018-12-11_hector-talk.tmp2718Yt0.org" "/Users/nistara/projects/side/predict_NLP/notes/notes.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/ESS/doc/ess-manual.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/ESS/doc/include-matrix.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/ESS/etc/TODO.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/contrib/scripts/staticmathjax/README.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/contrib/scripts/org-docco.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/contrib/orgmanual.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/doc/Documentation_Standards.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/pub-symlink/link.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/pub/sub/c.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/pub/a.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/pub/b.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/subdir/setupfile2.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/agenda-file.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/babel-dangerous.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/babel.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/include.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/include2.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/link-in-heading.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/links.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/macro-templates.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/no-heading.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/normal.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/ob-C-test.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/ob-awk-test.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/ob-fortran-test.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/ob-header-arg-defaults.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/ob-lilypond-broken.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/ob-lilypond-test.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/ob-maxima-test.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/ob-octave-test.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/ob-screen-test.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/ob-sed-test.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/ob-shell-test.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/org-exp.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/property-inheritance.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/setupfile.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/setupfile3.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-ref/citeproc/readme-author-year.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-ref/citeproc/readme-unsrt.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-ref/citeproc/readme.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-ref/test/all-org-test.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-ref/tests/test-1.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-ref/README.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-ref/development.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-ref/org-ref-issues.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-ref/org-ref.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/polymode/samples/test.org" "/Users/nistara/projects/workshops/2018_RBeyondBasics/notes.org" "/Users/nistara/projects/workshops/2018_geocomputation/notes.org" "/Users/nistara/projects/workshops/2018_instructor-training/training-demo_feedback.org" "/Users/nistara/projects/workshops/SurveyStatML/nr_notes.org")))
 '(org-bullets-bullet-list (quote ("○" "○" "○" "✸" "✿" "◉")))
 '(org-hide-emphasis-markers t)
 '(org-indirect-buffer-display (quote other-window))
 '(org-replace-disputed-keys t)
 '(org-use-speed-commands t)
 '(outshine-use-speed-commands t)
 '(package-selected-packages
   (quote
    (night-owl-theme multi-term ess-R-data-view writegood-mode outshine undo-tree eink-theme tramp-theme emamux org-download fold-dwim ov ox-pandoc org company-shell company flycheck org-babel-eval-in-repl use-package benchmark-init osx-dictionary evil-search-highlight-persist synosaurus rainbow-delimiters nord-theme pdf-tools auctex htmlize highlight-parentheses git-gutter-fringe fringe-helper git-gutter visual-fill-column zotxt swiper pandoc-mode multiple-cursors markdown-mode magit json-mode exec-path-from-shell elpy csv-mode cl-lib-highlight auto-complete))))


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#242424" :foreground "dark gray" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "nil" :family "Menlo"))))
 '(cursor ((t (:background "forest green"))))
 '(font-lock-comment-delimiter-face ((t (:foreground "SkyBlue4"))))
 '(font-lock-comment-face ((t (:foreground "SkyBlue4"))))
 '(helm-selection ((t (:background "dark magenta" :distant-foreground "yellow3"))))
 '(hi-yellow ((t (:background "saddle brown" :foreground "gold1"))))
 '(highlight-changes ((t (:foreground "MediumPurple1" :underline t :slant oblique))))
 '(isearch ((t (:background "orange3" :foreground "White"))))
 '(match ((t (:background "RoyalBlue4" :foreground "gray100"))))
 '(mode-line ((t (:background "#0B2942" :foreground "#D6DEEB" :box (:line-width 1 :color "#264966")))))
 '(mode-line-buffer-id ((t (:foreground "#D6DEEB" :weight normal))))
 '(mode-line-inactive ((t (:background "#011627" :foreground "#676E95" :box (:line-width 1 :color "#011627")))))
 '(org-document-title ((t (:foreground "#FFFFFF" :weight bold :height 1.1))))
 '(org-level-1 ((t (:inherit outline-1 :foreground "indian red" :weight semi-bold :height 1.1))))
 '(org-level-2 ((t (:inherit outline-2 :foreground "SeaGreen4" :weight normal))))
 '(org-level-3 ((t (:inherit outline-3 :weight normal))))
 '(outline-3 ((t (:inherit font-lock-keyword-face :foreground "DodgerBlue3"))))
 '(outshine-level-1 ((t (:foreground "medium purple"))))
 '(outshine-level-2 ((t (:foreground "cadet blue"))))
 '(outshine-level-3 ((t (:foreground "tan3"))))
 '(region ((t (:background "dark green" :foreground "#f6f3e8"))))
 '(swiper-line-face ((t (:inherit highlight :background "chartreuse4"))))
 '(swiper-match-face-2 ((t (:background "OrangeRed4"))))
 '(variable-pitch ((t (:family "verdana"))))
 '(writegood-duplicates-face ((t (:background "LightGoldenrod1" :foreground "deep pink" :slant italic))))
 '(writegood-passive-voice-face ((t (:underline "DodgerBlue1"))))
 '(writegood-weasels-face ((t (:underline "SlateGray4")))))

(add-to-list 'load-path "/Users/nistara/Documents/ESS/lisp") ;;for R
(load "ess-site")


;; ref: https://github.com/dholm/benchmark-init-el
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)

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
;; (setq python-shell-interpreter "/Users/nistara/anaconda3/bin/python")


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
(global-set-key (kbd "C-l") 'erase-buffer)




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
;; For my current directory to show up in the shell prompt:---------------------
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

;; Shortcut to open journal, todo, agenda 
(global-set-key (kbd "s-1") 'journal)
;; (global-set-key (kbd "s-2") 'todo)
(global-set-key (kbd "s-2") (lambda() (interactive)(find-file "~/projects/journal/agenda.org")))

;; Shorcut to open notes folder
(global-set-key (kbd "C-c note") (lambda() (interactive)(find-file "~/projects/journal/notes")))

;; Shorcut to open meetings folder
(global-set-key (kbd "C-c meet") (lambda() (interactive)(find-file "~/projects/meetings")))

;; Shortcut to open bat-tracking folder
(global-set-key (kbd "C-c bat") (lambda() (interactive)(find-file "~/projects/bat-tracking")))

;; Shortcut to open scrap R file
(global-set-key (kbd "s-4") (lambda() (interactive)(switch-to-buffer "*scratch*")))

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
(global-set-key (kbd "C-c nis") (lambda() (interactive)(find-file "~/projects/nistara")))

;; Shortcut to open grassdata
(global-set-key (kbd "C-c gra") (lambda() (interactive)(find-file "~/grassdata")))


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
;; (set-face-attribute  'mode-line
;;                  nil 
;;                  ;; :background "deepskyblue3"
;;                  ;; :background "deep sky blue" 		 
;;                  ;; :background "DodgerBlue4" 		 
;;                  :box '(:line-width 1 :style released-button))

;; Icomplete mode
;; https://www.emacswiki.org/emacs/IcompleteMode
;; As you type in the minibuffer, a list of matching commands is echoed
;;    there so you can see how to complete a command
 ;; (icomplete-mode 1)


;; Visual line mode: https://github.com/joostkremers/visual-fill-column
;; (global-visual-line-mode t)
(setq visual-fill-column-fringes-outside-margins t
      visual-fill-column-center-text t
      visual-fill-column-width 90)


;; Making it more intuitive to split windows
;; =============================================================================
;; Ref: ftp://ftp.gnu.org/old-gnu/Manuals/emacs-20.7/html_chapter/emacs_20.html
;; Ref: https://stackoverflow.com/a/6465415/5443003
;; (global-set-key (kbd "M-1") 'split-window-vertically)
;; (global-set-key (kbd "M-2") 'split-window-horizontally)
(global-set-key (kbd "M-1") (lambda () (interactive)(split-window-horizontally) (other-window 1)))
(global-set-key (kbd "M-2") (lambda () (interactive)(split-window-vertically) (other-window 1)))
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
;; (require 'vimish-fold)
;; (vimish-fold-global-mode 1)


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
;; default options for all output formats
(setq org-pandoc-options '((standalone . t)))
;; cancel above settings only for 'docx' format
(setq org-pandoc-options-for-docx '((standalone . nil)))
;; special settings for beamer-pdf and latex-pdf exporters
(setq org-pandoc-options-for-beamer-pdf '((latex-engine . "xelatex")))
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
(require 'ob-sh)
(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)
   (org . t)
   (shell . t)
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
  (add-hook 'org-mode-hook #'visual-line-mode)
(setq-default org-list-indent-offset 2))

(add-hook 'visual-line-mode-hook #'visual-fill-column-mode)

;; Recommendation: You should not directly require a package (even though doing
;; so will also work). Doing so will make emacs load that whole package at
;; startup and could result in slower startup. Instead, you should allow the
;; org package to get automatically loaded as configured in the package itself,
;; and then do org-specific setup in the with-eval-after-load or eval-after-load
;; form.


;; Using CDLaTeX to enter math
;; =============================================================================
;; ref: https://orgmode.org/manual/CDLaTeX-mode.html#CDLaTeX-mode
;; (add-hook 'org-mode-hook 'turn-on-org-cdlatex)


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

(global-set-key (kbd "M-p") 'close-all-parentheses)

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

(global-set-key (kbd "C-c d2")
		(lambda()
		  (interactive)
		  (find-file "~/projects/bat-tracking/notes/draft_bat-track/bat-track.org")))

(global-set-key (kbd "C-c d3")
		(lambda()
		  (interactive)
		  (find-file "~/projects/ebo-net/notes/chapter_3/chapter_3.org")))


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
             '("*" (:foreground "indianred3")
               ))

(add-to-list 'org-emphasis-alist
             '("~" (:background "orchid4" :foreground "lemon chiffon")
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
        ;; (switch-to-buffer currbuff)
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
;; (define-key sh-mode-map (kbd "<s-return>") 'sh-send-line-or-region-and-step)
(define-key sh-mode-map (kbd "<s-return>") 'sh-send-line-or-region)
;; (define-key sh-mode-map (kbd "<C-s-return>") 'sh-switch-to-process-buffer)




;; ;; Add # *** to code
;; ;; =============================================================================
;; (defun code-section-custom ()
;;   (interactive)
;;   (beginning-of-line)
;;   (insert "#\s***\s"))
;; 
;; (global-set-key (kbd "s-4") 'code-section-custom)

;; Search for code-sections
(defun occur-code-section ()
  (interactive)
  ;; (setq regexp "# ***")
  ;;  (occur (regexp-quote regexp)))
    (setq regexp "\\(#\s\\*\\*\\*\\)\\|\\(#.*\n#\s=+\\)")
   (occur regexp))


(global-set-key (kbd "s-5") 'occur-code-section)


;; -----------------------------------------------------------------------------
;; open docx files in default application (ie msword)
(setq org-file-apps
      '(("\\.docx\\'" . default)))


;; Magit
;; =============================================================================
;; ref: https://emacsair.me/2017/09/01/magit-walk-through/
(global-set-key (kbd "C-x g") 'magit-status)



;; Org-mode mark place and go backup
;; =============================================================================
;; ref: http://www.tonyballantyne.com/EmacsWritingTips.html
(global-set-key (kbd "<f7>") 'org-mark-ring-push)
(global-set-key (kbd "C-<f>") 'org-mark-ring-goto)



;; Org-mode outline/toc
;; =============================================================================
;; ref: https://emacs.stackexchange.com/a/14987
;; made some modifications to it though!!
(defun org-open-tree-view ()
  "Open a clone of the current buffer to the left, resize it to 30 columns, and bind <mouse-1> to jump to the same position in the base buffer."
  (interactive)
  (let ((new-buffer-name (concat "<tree>" (buffer-name))))
    ;; Create tree buffer
    (split-window-right 30)
    (if (get-buffer new-buffer-name)
        (switch-to-buffer new-buffer-name)  ; Use existing tree buffer
      ;; Make new tree buffer
      (progn  (clone-indirect-buffer new-buffer-name nil t)
              (switch-to-buffer new-buffer-name)
              (read-only-mode)
              (hide-body)
              (toggle-truncate-lines)

              ;; Do this twice in case the point is in a hidden line
              (dotimes (_ 2 (forward-line 0)))

              ;; Map keys
              (use-local-map (copy-keymap outline-mode-map))
              (local-set-key (kbd "q") 'delete-window)
              (mapc (lambda (key) (local-set-key (kbd key) 'my/jump-to-point-and-show))
                    '("<mouse-1>" "RET"))))))

(defun org-jump-to-point-and-show ()
  "Switch to a cloned buffer's base buffer and move point to the cursor position in the clone."
  (interactive)
  (let ((buf (buffer-base-buffer)))
    (unless buf
      (error "You need to be in a cloned buffer!"))
    (let ((pos (point))
          (win (car (get-buffer-window-list buf))))
      (if win
          (select-window win)
        (other-window 1)
        (switch-to-buffer buf))
      (widen)
      (goto-char pos)
      (org-narrow-to-subtree)
      (org-show-subtree)
      (when (invisible-p (point))
        (show-branches)))))

(global-set-key (kbd "s-t") 'org-open-tree-view)
(global-set-key (kbd "s-m") 'org-jump-to-point-and-show)


;; Inserting org header
;; =============================================================================
(defun org-header ()
  (interactive
   (insert "#+TITLE: 
**** config options :ignore:
#+options: author:nil
#+OPTIONS: toc:1
#+BIBLIOGRAPHY: 
#+PROPERTY: session *R*
#+PROPERTY: results silent
# #+PANDOC_OPTIONS: csl:the-lancet-infectious-diseases.csl
#+STARTUP: latexpreview
#+LATEX_HEADER: \\usepackage[section]{placeins}
#+LATEX_HEADER: \\usepackage{graphicx}
#+LATEX_HEADER: \\usepackage[margin=1in]{geometry}
#+LATEX_HEADER: \\usepackage{placeins}
#+LATEX_HEADER: \\usepackage{biblatex}
#+LATEX_HEADER: \\usepackage{hyperref}
# #+LATEX_HEADER: \\bibliographystyle{vancouver}
#+LATEX_HEADER: \\addbibresource{~/}

#+TOC: headlines 1
\\pagebreak

#+LATEX: \\listoftables
#+LATEX: \\listoffigures

\\pagebreak"))
)


;; Inserting daily agenda
;; =============================================================================
(defun insert-day ()
  (interactive
   (insert "- [ ] 08:00 -> 
- [ ] 08:30 -> 
- [ ] 09:00 -> 
- [ ] 09:30 -> 
- [ ] 10:00 -> 
- [ ] 10:30 -> 
- [ ] 11:00 ->  
- [ ] 11:30 ->  
- [ ] 12:00 ->  
- [ ] 12:30 -> 
- --- 13:00 -> *Lunch*
- --- 13:30 -> *Lunch*
- [ ] 14:00 -> 
- [ ] 14:30 -> 
- [ ] 15:00 -> 
- [ ] 15:30 -> 
- [ ] 16:00 -> 
- [ ] 16:30 -> 
- [ ] 17:00 -> 
- [ ] 17:30 -> 
- [ ] 18:00 -> 
- [ ] 18:30 -> 
- [ ] 19:00 -> 
- [ ] 19:30 -> 
- [ ] 20:00 -> 
- [ ] 21:00 -> ")))


;; Change background color for dsi ssh
;; =============================================================================
(defun dsi-col ()
  (interactive)
  (set-background-color "dark blue"))


;; auto refresh dired when file changes
;; =============================================================================
;; (add-hook 'dired-mode-hook 'auto-revert-mode)

;; Org-mode mouse click for check-boxes
;; =============================================================================
(require 'org-mouse)


;; Track changes
;; =============================================================================
;; ref:http://emacs-fu.blogspot.com/2009/05/tracking-changes.html
;; higlight changes in documents
(global-highlight-changes-mode t)
(setq highlight-changes-visibility-initial-state nil); initially hide

;; toggle visibility
(global-set-key (kbd "<f6>")      'highlight-changes-visible-mode) ;; changes
;; remove the change-highlight in region
(global-set-key (kbd "S-<f6>")    'highlight-changes-remove-highlight)



;; Add Rosi or Eidolon shortcut
;; =============================================================================
(defun rosi ()
  (interactive)                 ; permit invocation in minibuffer
  (insert "/Rousettus aegyptiacus/"))

(defun eid ()
  (interactive)                 ; permit invocation in minibuffer
  (insert "/Eidolon helvum/"))


;; Add shortcut for recenter screen
;; =============================================================================
(global-set-key (kbd "s-\\") 'recenter-top-bottom)




;; Code folding
;; =============================================================================
(add-hook 'ess-mode-hook 'hs-minor-mode)

(eval-after-load 'hideshow
 '(progn
    (global-set-key (kbd "C-+") 'hs-toggle-hiding)))


;; Open dired/folder of current buffer
;; =============================================================================
(global-set-key (kbd "C-x d") 'dired-jump)

;; Human readable dired
;; =============================================================================
;; ref: http://pragmaticemacs.com/emacs/dired-human-readable-sizes-and-sort-by-size/
;; (setq dired-listing-switches "-alh")

;; Shortcut to open bib file
;; =============================================================================
(global-set-key (kbd "C-c bib")
		(lambda()
		  (interactive)(find-file "~/Drive/bibliography/references.bib")))



;; Enable Outshine mode for ESS R
;; =============================================================================
;; Helps organize code in Org-mode blocks
;; (add-hook 'ess-mode-hook 'outshine-mode)
(global-set-key (kbd "<S-tab>") 'outshine-cycle-buffer)


;; Enable undo-tree globally
;; =============================================================================
(global-undo-tree-mode)


;; Change org-mode colors for writing
;; =============================================================================
(defun writedark ()
  (interactive)
  (outline-hide-sublevels 1)
  (setq mode-line-format nil)
  (setq line-spacing 0.3)
  (set-frame-font "Avenir Next 15" nil t)
  (set-face-attribute 'org-table nil :inherit 'fixed-pitch)
  (set-face-attribute 'org-code nil :inherit 'fixed-pitch)
  (set-face-attribute 'org-block nil :inherit 'fixed-pitch)
  )

(defun writelight ()
  (interactive)
  (outline-hide-sublevels 1)
  (setq mode-line-format nil)
  (setq line-spacing 0.3)
  (set-background-color "oldlace")
  (set-foreground-color "black")
  (set-frame-font "Avenir Next 15" nil t)
  (set-face-attribute 'org-table nil :inherit 'fixed-pitch)
  (set-face-attribute 'org-code nil :inherit 'fixed-pitch)
  (set-face-attribute 'org-block nil :inherit 'fixed-pitch)
  (set-face-attribute 'fringe nil
  :foreground (face-foreground 'default)
  :background (face-background 'default))
  )


;; ref: https://xiangji.me/2015/07/13/a-few-of-my-org-mode-customizations/
;; 
;; (defun set-buffer-variable-pitch ()
;;     (interactive)
;;     ;; (variable-pitch-mode t)
;;     ;; (setq line-spacing .3)
;;      (set-face-attribute 'org-table nil :inherit 'fixed-pitch)
;;      (set-face-attribute 'org-code nil :inherit 'fixed-pitch)
;;      (set-face-attribute 'org-block nil :inherit 'fixed-pitch)
;;     )

;; (add-hook 'org-mode-hook 'set-buffer-variable-pitch)
;; (add-hook 'eww-mode-hook 'set-buffer-variable-pitch)
;; (add-hook 'markdown-mode-hook 'set-buffer-variable-pitch)
;; (add-hook 'Info-mode-hook 'set-buffer-variable-pitch)


;; ;; Use variable width font faces in current buffer
;; ;; https://www.emacswiki.org/emacs/FacesPerBuffer
;;  (defun my-buffer-face-mode-variable ()
;;    "Set font to a variable width (proportional) fonts in current buffer"
;;    (interactive)
;;    (setq buffer-face-mode-face '(:family "Avenir Next" :height 160 :width medium))
;;    (buffer-face-mode))


;; Write good modes
;; =============================================================================
;; ref: http://bnbeckwith.com/code/writegood-mode.html

;; Disable conflicting outline mode command
;; =============================================================================
;; it overrode my M-up/down command for moving lines up or down
    
 (bind-keys*
    ("<M-up>" . move-lines-up)
    ("<M-down>" . move-lines-down))



;; Fixing system trash
;; =============================================================================
;; ref: https://www.emacswiki.org/emacs/SystemTrash
;; ref: https://github.com/ali-rantakari/trash
(setq delete-by-moving-to-trash t)

(defun system-move-file-to-trash (file)
  "Use \"trash\" to move FILE to the system trash.
When using Homebrew, install it using \"brew install trash\"."
  (call-process (executable-find "trash")
		nil 0 nil
		file))

;; Autocomplete in emacs ess
;; =============================================================================
;; ref: https://stackoverflow.com/questions/49232454/emacs-ess-how-to-auto-complete-library-function

(setq ess-use-company t)

;; (setq-default package-archives 
;;               '(("melpa"        . "http://melpa.milkbox.net/packages/")
;;                 ("gnu"          . "http://elpa.gnu.org/packages/")))
;; (setq package-enable-at-startup nil)
;; (package-initialize)
;; 
;; ;;; company
;; (require 'company)
;; (setq tab-always-indent 'complete)
;; 
;; (setq company-idle-delay 0.5
;;       company-show-numbers t
;;       company-minimum-prefix-length 2
;;       company-tooltip-flip-when-above t)
;; 
;; (global-set-key (kbd "C-M-/") #'company-complete)
;; (global-company-mode)
;; 
;; ;;; ESS
;; (defun my-ess-hook ()
;;   ;; ensure company-R-library is in ESS backends
;;   (make-local-variable 'company-backends)
;;   (cl-delete-if (lambda (x) (and (eq (car-safe x) 'company-R-args))) company-backends)
;;   (push (list 'company-R-args 'company-R-objects 'company-R-library :separate)
;;         company-backends))
;; 
;; (add-hook 'ess-mode-hook 'my-ess-hook)
;; 
;; (with-eval-after-load 'ess
;;   (setq ess-use-company t))


;; Run previous-command like elsewhere
;; =============================================================================
;; ref: https://superuser.com/a/867587
;; This so I don't have context switching issues when switching between emacs and
;; other programs like iterm and Rstudio
(progn(require 'comint)
(define-key comint-mode-map (kbd "<up>") 'comint-previous-input)
(define-key comint-mode-map (kbd "<down>") 'comint-next-input)
(define-key comint-mode-map (kbd "<C-up>") 'previous-line)
(define-key comint-mode-map (kbd "<C-down>") 'next-line))


;; Run ESS on remote server : PROB: c-c c-c doesn't kill process
;; =============================================================================
;; ref: https://www.dcalacci.net/2018/remote-ess/

;; ;; original
;; ;; -----------------------------------------------------------------------------
;; (defvar R-remote-host "your-remote-server")
;; (defvar R-remote-session "R-session-name")
;; (defvar R-remote-directory "/path/to/your/project/directory")
;; (defun R-remote (&optional remote-host session directory)
;;   "Connect to the remote-host's dtach session running R."
;;   (interactive (list
;;                 (read-from-minibuffer "R remote host: " R-remote-host)
;;                 (read-from-minibuffer "R remote session: " R-remote-session)
;;                 (read-from-minibuffer "R remote directory: " R-remote-directory)))
;;   (pop-to-buffer (make-comint (concat "remote-" session)
;;                               "ssh" nil "-Y" "-C" "-t" remote-host
;;                               "cd" directory ";"
;;                               "dtach" "-A" (concat ".dtach-" session)
;;                               "-z" "-E" "-r" "none"
;;                               inferior-R-program-name "--no-readline"
;;                               inferior-R-args))
;;   (ess-remote (process-name (get-buffer-process (current-buffer))) "R")
;;   (setq comint-process-echoes t))


;; modifying the orig version above  up for my ebo-net project
(defvar R-remote-host "aws_ubuntu")
(defvar R-remote-session "R-session-name")
(defvar R-remote-directory "~/projects/ebo-net")
(defun R-remote (&optional remote-host session directory)
  "Connect to the remote-host's dtach session running R."
  (interactive (list
                (read-from-minibuffer "R remote host: " R-remote-host)
                (read-from-minibuffer "R remote session: " R-remote-session)
                (read-from-minibuffer "R remote directory: " R-remote-directory)))
  (pop-to-buffer (make-comint (concat "remote-" session)
                              "ssh" nil "-Y" "-C" "-t" remote-host
                              "cd" directory ";"
                              "dtach" "-A" (concat ".dtach-" session)
                              "-z" "-E" "-r" "none"
                              inferior-R-program-name "--no-readline"
                              inferior-R-args))
  (ess-remote (process-name (get-buffer-process (current-buffer))) "R")
  (setq comint-process-echoes t))


;; Set R as major mode
;; =============================================================================
;; ref: https://emacsredux.com/blog/2014/07/25/configure-the-scratch-buffers-mode/
(setq initial-major-mode 'R-mode)


;; Keep *scratch* buffer even when killed
;; =============================================================================
;; ref: https://www.reddit.com/r/emacs/comments/4cmfwp/scratch_buffer_hacks_to_increase_its_utility/?utm_source=share&utm_medium=web2x
(defun immortal-scratch ()
  (if (eq (current-buffer) (get-buffer "*scratch*"))
  (progn (bury-buffer)
	 nil)
t))
(add-hook 'kill-buffer-query-functions 'immortal-scratch)


;; Tramp ssh
;; =============================================================================
;; ref: https://gitlab.com/dickoa/emacs.d/blob/master/init.org
(setq tramp-default-method "ssh")

