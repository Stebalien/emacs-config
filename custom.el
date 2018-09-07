;;; custom.el --- Your emacs custom file.
;;; -*- lexical-binding: t; -*-

;;; Commentary:
;;;    Where your settings are saved. This file is pointed
;;;    to by the variable `custom-file'

;;; Code:

;; Set this so we can customize below
(defvar mswindows-p (string-match "windows" (symbol-name system-type)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; C U S T O M I Z A T I O N  section
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ag-ignore-list
   '("\\\\*.dll" "\\\\*.png" "\\\\*.jpeg" "\\\\*.exe" "\\\\*.csproj"))
 '(auto-save-default nil)
 '(browse-url-browser-function 'browse-url-chrome)
 '(browse-url-chrome-program (if mswindows-p "C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe" "/usr/bin/google-chrome"))
 '(c-tab-always-indent nil)
 '(case-fold-search t)
 '(column-number-mode t)
 '(command-log-mode-auto-show t)
 '(command-log-mode-is-global t)
 '(command-log-mode-open-log-turns-on-mode t)
 '(compilation-error-regexp-alist '(ant bash java gnu gcc-include lcc perl))
 '(compilation-error-regexp-systems-list '(gnu perl))
 '(confirm-kill-emacs 'yes-or-no-p)
 '(counsel-mode t)
 '(dabbrev-case-fold-search nil)
 '(desktop-save-mode t)
 '(diff-switches "-bc")
 '(dired-listing-switches "-alh")
 '(ediff-split-window-function 'split-window-vertically)
 '(ediff-window-setup-function 'ediff-setup-windows-plain)
 '(electric-pair-mode t)
 '(eshell-history-size 1024)
 '(fill-column 132)
 '(flycheck-color-mode-line-face-to-color 'mode-line-buffer-id)
 '(font-lock-maximum-size nil)
 '(git-commit-fill-column 78)
 '(git-commit-style-convention-checks '(non-empty-second-line overlong-summary-line))
 '(global-font-lock-mode t nil (font-lock))
 '(history-delete-duplicates t)
 '(ibuffer-formats
   '((mark modified read-only " "
           (name 36 36 :left :elide)
           " "
           (size 9 -1 :right)
           " "
           (mode 16 16 :left :elide)
           " " filename-and-process)
     (mark modified read-only " "
           (name 36 -1))))
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(ivy-count-format "(%d/%d) ")
 '(ivy-mode t)
 '(ivy-use-selectable-prompt t)
 '(ivy-use-virtual-buffers t)
 '(line-move-visual nil)
 '(line-number-display-limit-width 40000)
 '(lsp-ui-doc-border "black")
 '(lsp-ui-sideline-ignore-duplicate t)
 '(magit-completing-read-function 'ivy-completing-read)
 '(magit-pull-arguments nil)
 '(magit-repository-directories '(("~/repos" . 1)))
 '(magit-submodule-arguments '("--recursive"))
 '(make-backup-files nil)
 '(my/use-elpy nil)
 '(org-babel-load-languages '((shell . t) (plantuml . t) (python . t) (emacs-lisp . t)))
 '(org-catch-invisible-edits 'show)
 '(org-html-postamble t)
 '(org-html-postamble-format
   '(("en" "<p class=\"author\">Author: %a (%e)</p>
<p class=\"date\">Date: %T</p>
<p class=\"creator\">%c</p>")))
 '(org-log-done 'time)
 '(org-log-into-drawer t)
 '(org-reveal-root "http://cdn.jsdelivr.net/reveal.js/3.0.0/")
 '(org-reveal-title-slide nil)
 '(package-archives
   '(("gnu" . "https://elpa.gnu.org/packages/")
     ("melpa" . "https://melpa.org/packages/")
     ("org" . "https://orgmode.org/elpa/")))
 '(powerline-display-hud nil)
 '(projectile-completion-system 'ivy)
 '(projectile-mode-line '(:eval (format " [%s]" (projectile-project-name))))
 '(python-check-command (if mswindows-p "c:/Python36/Scripts/flake8.exe" "/usr/local/bin/flake8"))
 '(python-flymake-command '("flake8" "-"))
 '(python-indent-trigger-commands '(yas-expand))
 '(python-shell-interpreter "ipython")
 '(python-shell-interpreter-args "-i --simple-prompt")
 '(python-shell-prompt-output-regexp "Out\\[[0-9]+\\]: ")
 '(python-shell-prompt-regexp "In \\[[0-9]+\\]: ")
 '(savehist-additional-variables '(kill-ring search-ring regexp-search-ring))
 '(savehist-file "~/.emacs.d/savehist")
 '(savehist-mode t)
 '(scroll-bar-mode 'none)
 '(sentence-end-double-space nil)
 '(show-paren-mode t nil (paren))
 '(show-paren-style 'expression)
 '(split-width-threshold nil)
 '(sql-mode-hook '((lambda nil (setq tab-width 4 indent-tabs-mode t))))
 '(tool-bar-mode nil)
 '(truncate-partial-width-windows t)
 '(uniquify-buffer-name-style 'post-forward-angle-brackets nil (uniquify))
 '(use-dialog-box t)
 '(use-package-always-ensure t)
 '(vc-diff-switches '("--diff-cmd" "tkdiff"))
 '(visible-bell t)
 '(which-function-mode t)
 '(which-key-mode t)
 '(yas-global-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:slant normal :weight normal :height 98 :width normal :foundry "outline" :family "DejaVu Sans Mono"))))
 '(Info-quoted ((t (:foreground "red3"))))
 '(ivy-posframe ((t (:inherit default :background "LightSkyBlue1" :foreground "#333333"))))
 '(ivy-subdir ((t (:inherit dired-directory :background "LightSkyBlue1"))))
 '(lsp-ui-sideline-current-symbol ((t (:foreground "royal blue" :box (:line-width -1 :color "royal blue") :weight ultra-bold :height 0.99))))
 '(lsp-ui-sideline-global ((t (:background "blanched almond"))))
 '(lsp-ui-sideline-symbol ((t (:foreground "sea green" :box (:line-width -1 :color "sea green") :weight ultra-bold :height 0.99))))
 '(region ((t (:background "sky blue" :distant-foreground "gtk_selection_fg_color")))))

;;; custom.el ends here
