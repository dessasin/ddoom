;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-


(setq user-full-name "Muhammed Nurullah Torun"
      user-mail-address "mntorun@protonmail.com")

(global-auto-revert-mode t)

(setq display-line-numbers-type t)
(setq +magit-hub-features t)
(setq doom-theme 'doom-Iosvkem)
(setq org-directory "/mnt/Yedek/Work/Org Area")

(setq
<<<<<<< HEAD
 doom-font (font-spec :family "Hack" :size 12)
 doom-big-font (font-spec :family "Hack" :size 15)
 doom-variable-pitch-font (font-spec :family "Hack" :size 16)
 dart-format-on-save t
 web-mode-markup-indent-offset 2
 web-mode-code-indent-offset 2
 web-mode-css-indent-offset 2
 org-agenda-skip-scheduled-if-done t
 js-indent-level 2
 typescript-indent-level 2
 json-reformat:indent-width 2
 prettier-js-args '("--single-quote")
 projectile-project-search-path '("/mnt/Yedek/Work")
 dired-dwim-target t
 org-ellipsis " ▾ "
 org-bullets-bullet-list '("·")
 org-tags-column -80
 org-agenda-files (ignore-errors (directory-files +org-dir t "\\.org$" t))
 org-log-done 'time
 css-indent-offset 2
 org-refile-targets (quote ((nil :maxlevel . 1)))
 )


;;;!! HOOOKS !!;;;

(add-hook 'org-mode-hook #'auto-fill-mode)

(after! web-mode
  (add-to-list 'auto-mode-alist '("\\.njk\\'" . web-mode)))

(defun +data-hideshow-forward-sexp (arg)
  (let ((start (current-indentation)))
    (forward-line)
    (unless (= start (current-indentation))
      (require 'evil-indent-plus)
      (let ((range (evil-indent-plus--same-indent-range)))
        (goto-char (cadr range))
        (end-of-line)))))

(add-to-list 'hs-special-modes-alist '(yaml-mode "\\s-*\\_<\\(?:[^:]+\\)\\_>" "" "#" +data-hideshow-forward-sexp nil))
(add-to-list 'auto-mode-alist '("components\\/.*\\.js\\'" . rjsx-mode))

(with-eval-after-load 'rjsx-mode
  (define-key rjsx-mode-map "<" nil)
  (define-key rjsx-mode-map (kbd "C-d") nil)
  (define-key rjsx-mode-map ">" nil))

(setq vue-mode-packages
  '(vue-mode))

(setq vue-mode-excluded-packages '())

(defun vue-mode/init-vue-mode ()
  "Initialize my package"
  (use-package vue-mode))

(add-hook 'mmm-mode-hook
          (lambda ()
            (set-face-background 'mmm-default-submode-face nil)))

