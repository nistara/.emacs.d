(deftheme NR_emacs_theme
  "Created 2018-10-02.")

(custom-theme-set-variables
 'NR_emacs_theme
 '(ansi-color-faces-vector [default default default italic underline success warning error])
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-safe-themes (quote ("bfdcbf0d33f3376a956707e746d10f3ef2d8d9caa1c214361c9c08f00a1c8409" "40da996f3246a3e99a2dff2c6b78e65307382f23db161b8316a5440b037eb72c" default)))
 '(fci-rule-color "gray50")
 '(initial-buffer-choice "~/projects")
 '(line-spacing 0.15)
 '(org-agenda-files (quote ("~/projects/side/DTRA_bat-flyway/brian_proposal.org" "/Users/nistara/projects/VISHA/report.org" "/Users/nistara/projects/bat-tracking/notes/DTRA_report/DTRA_report.org" "/Users/nistara/projects/bat-tracking/notes/bat-tracking/bat-tracking.org" "/Users/nistara/projects/bat-tracking/notes/ch2_bat-track/bat-track.org" "/Users/nistara/projects/bat-tracking/notes/ch2_bat-track/code.org" "/Users/nistara/projects/bat-tracking/notes/ch2_bat-track/paper-notes.org" "/Users/nistara/projects/bats/dissertation/dissertation.org" "/Users/nistara/projects/disnet/inst/notes.org" "/Users/nistara/projects/ebo-net/notes/ebo-net.org" "/Users/nistara/projects/ebo-net/notes/ebo-net_notes.org" "/Users/nistara/projects/ebo-net/notes/exp.org" "/Users/nistara/projects/flu-net/notes/org-draft/flu-net.org" "/Users/nistara/projects/flu-net/notes/org-draft/flu-net.tmp373024ub.org" "/Users/nistara/projects/flu-net/notes/org-draft/icomos_poster.org" "/Users/nistara/projects/flu-net/notes/org-draft/in_process.org" "/Users/nistara/projects/flu-net/notes/org-draft/scrap.org" "/Users/nistara/projects/flu-net/notes/ref_notes.org" "/Users/nistara/projects/journal/notes/brew.org" "/Users/nistara/projects/journal/notes/compiling.org" "/Users/nistara/projects/journal/notes/grass.org" "/Users/nistara/projects/journal/notes/grass.tmp37196CyT.org" "/Users/nistara/projects/journal/notes/linux_ssh.org" "/Users/nistara/projects/journal/notes/org-info.org" "/Users/nistara/projects/journal/notes/term.org" "/Users/nistara/projects/journal/notes/virtualbox.org" "/Users/nistara/projects/journal/notes/words.org" "/Users/nistara/projects/journal/notes/writing.org" "/Users/nistara/projects/journal/agenda.org" "/Users/nistara/projects/meetings/2017/2017-11-28_Tues.org" "/Users/nistara/projects/meetings/2018-01-16_Tue_Jonna.org" "/Users/nistara/projects/meetings/2018-01-23_Tue_Jonna.org" "/Users/nistara/projects/meetings/2018-02-15_Thu_Jonna.org" "/Users/nistara/projects/meetings/2018-03-01_Thu_Jonna.org" "/Users/nistara/projects/meetings/2018-04-03_Tue_Liz.org" "/Users/nistara/projects/meetings/2018-04-06_Fri_Jonna.org" "/Users/nistara/projects/meetings/2018-04-25_Wed_Jonna.org" "/Users/nistara/projects/meetings/2018-05-14_Mon_Duncan.org" "/Users/nistara/projects/meetings/2018-05-18_Fri_Jonna.org" "/Users/nistara/projects/meetings/2018-07-11_Wed_Jonna.org" "/Users/nistara/projects/meetings/2018-07-17_Tue_Jonna.org" "/Users/nistara/projects/meetings/2018-08-08_Wed_Jonna.org" "/Users/nistara/projects/org/cv.org" "/Users/nistara/projects/org/org-ref-plain.org" "/Users/nistara/projects/org/test.org" "/Users/nistara/projects/side/DTRA_bat-flyway/proposal.org" "/Users/nistara/projects/side/dsi-proposal/draft-final.org" "/Users/nistara/projects/side/dsi-proposal/draft.org" "/Users/nistara/projects/side/dsi-proposal/proposal.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/ESS/doc/ess-manual.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/ESS/doc/include-matrix.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/ESS/etc/TODO.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/contrib/scripts/staticmathjax/README.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/contrib/scripts/org-docco.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/contrib/orgmanual.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/doc/Documentation_Standards.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/pub-symlink/link.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/pub/sub/c.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/pub/a.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/pub/b.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/subdir/setupfile2.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/agenda-file.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/babel-dangerous.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/babel.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/include.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/include2.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/link-in-heading.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/links.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/macro-templates.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/no-heading.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/normal.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/ob-C-test.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/ob-awk-test.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/ob-fortran-test.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/ob-header-arg-defaults.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/ob-lilypond-broken.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/ob-lilypond-test.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/ob-maxima-test.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/ob-octave-test.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/ob-screen-test.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/ob-sed-test.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/ob-shell-test.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/org-exp.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/property-inheritance.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/setupfile.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-9.1.9/testing/examples/setupfile3.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-ref/citeproc/readme-author-year.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-ref/citeproc/readme-unsrt.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-ref/citeproc/readme.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-ref/test/all-org-test.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-ref/tests/test-1.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-ref/README.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-ref/development.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-ref/org-ref-issues.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/org-ref/org-ref.org" "/Users/nistara/projects/ssh_emacs/emacs_downloads/polymode/samples/test.org" "/Users/nistara/projects/workshops/2018_RBeyondBasics/notes.org" "/Users/nistara/projects/workshops/2018_geocomputation/notes.org" "/Users/nistara/projects/workshops/SurveyStatML/nr_notes.org")))
 '(org-hide-emphasis-markers t)
 '(org-indirect-buffer-display (quote other-window))
 '(org-replace-disputed-keys t)
 '(package-selected-packages (quote (ov ox-pandoc org company-shell company flycheck org-babel-eval-in-repl use-package benchmark-init osx-dictionary evil-search-highlight-persist synosaurus rainbow-delimiters nord-theme pdf-tools auctex htmlize highlight-parentheses git-gutter-fringe fringe-helper git-gutter vimish-fold visual-fill-column zotxt swiper pandoc-mode multiple-cursors markdown-mode magit json-mode exec-path-from-shell elpy csv-mode cl-lib-highlight auto-complete))))

(custom-theme-set-faces
 'NR_emacs_theme
 '(default ((t (:inherit nil :stipple nil :background "#242424" :foreground "dark gray" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "nil" :family "Menlo"))))
 '(cursor ((t (:background "forest green"))))
 '(font-lock-comment-delimiter-face ((t (:foreground "SkyBlue4"))))
 '(font-lock-comment-face ((t (:foreground "SkyBlue4"))))
 '(highlight-changes ((t (:foreground "MediumPurple1" :underline t :slant oblique))))
 '(isearch ((t (:background "orange3" :foreground "White"))))
 '(match ((t (:background "RoyalBlue4" :foreground "gray100"))))
 '(org-level-1 ((t (:inherit outline-1 :foreground "plum3" :weight normal :height 1.2))))
 '(org-level-2 ((t (:inherit outline-2 :foreground "SeaGreen4" :weight normal))))
 '(org-level-3 ((t (:inherit outline-3 :weight normal))))
 '(region ((t (:background "dark green" :foreground "#f6f3e8"))))
 '(swiper-line-face ((t (:inherit highlight :background "chartreuse4"))))
 '(variable-pitch ((t (:foreground "gray90" :height 1.2 :family "verdana"))))
 '(vimish-fold-fringe ((t (:foreground "dark cyan"))))
 '(vimish-fold-mouse-face ((t (:weight bold))))
 '(vimish-fold-overlay ((t (:foreground "dark cyan")))))

(provide-theme 'NR_emacs_theme)
