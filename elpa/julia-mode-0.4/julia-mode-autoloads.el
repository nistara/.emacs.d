;;; julia-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "julia-mode" "julia-mode.el" (24438 28852 860098
;;;;;;  85000))
;;; Generated autoloads from julia-mode.el

(add-to-list 'auto-mode-alist '("\\.jl\\'" . julia-mode))

(autoload 'julia-mode "julia-mode" "\
Major mode for editing julia code.

\(fn)" t nil)

(autoload 'inferior-julia "julia-mode" "\
Run an inferior instance of julia inside Emacs.

\(fn)" t nil)

(defalias 'run-julia #'inferior-julia "\
Run an inferior instance of julia inside Emacs.")

;;;***

;;;### (autoloads nil nil ("julia-mode-latexsubs.el" "julia-mode-pkg.el")
;;;;;;  (24438 28852 862784 383000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; julia-mode-autoloads.el ends here
