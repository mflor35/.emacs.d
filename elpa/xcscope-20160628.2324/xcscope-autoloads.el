;;; xcscope-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "xcscope" "xcscope.el" (22396 19797 543680
;;;;;;  660000))
;;; Generated autoloads from xcscope.el

(autoload 'cscope-minor-mode "xcscope" "\
This cscope minor mode maps cscope keybindings to make cscope
functions more accessible.

Key bindings:
\\{cscope-minor-mode-keymap}

\(fn &optional ARG)" t nil)

(autoload 'cscope-setup "xcscope" "\
Automatically turns on cscope-minor-mode when editing C and
C++ sources

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("xcscope-pkg.el") (22396 19796 506676
;;;;;;  523000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; xcscope-autoloads.el ends here