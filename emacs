;; loading ruby-mode
(add-to-list 'load-path "/Users/zlu/.rvm/src/ruby-1.9.2-p180/misc")

(autoload 'ruby-mode "ruby-mode" "Major mode for ruby files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))

;; loading ruby inferior mode
(autoload 'run-ruby "inf-ruby"
  "Run an inferior Ruby process")
(autoload 'inf-ruby-keys "inf-ruby"
  "Set local key defs for inf-ruby in ruby-mode")
(add-hook 'ruby-mode-hook
      '(lambda ()
         (inf-ruby-keys)
))

;; loading go mode
(add-to-list 'load-path "/usr/local/src/go/misc/emacs/" t)

(defun my-small-screen ()
  "Set up frame for laptop screen, with two windows."
  (interactive)
  (my-initialize-frame 2))

(defun my-initialize-frame (columns)
  "Set current frame to fullscreen and split it into COLUMNS
vertical windows."
  (set-frame-parameter nil :fullscreen t)
  (delete-other-windows)
  (dotimes (not-used (1- columns))
    (split-window-horizontally))
  (balance-windows))

(my-small-screen)

(defvar zlu-map (make-keymap) "My personal mode map")
(define-key global-map "\C-c" zlu-map)
(define-key zlu-map "g" 'goto-line)

(defun set-frame-size-according-to-resolution ()
  (interactive)
  (if window-system
  (progn
    ;; use 200 char wide window for largeish displays
    ;; and smaller 80 column windows for smaller displays
    ;; pick whatever numbers make sense for you
    (if (> (x-display-pixel-width) 1280)
           (add-to-list 'default-frame-alist (cons 'width 200))
           (add-to-list 'default-frame-alist (cons 'width 80)))
    ;; for the height, subtract a couple hundred pixels
    ;; from the screen height (for panels, menubars and
    ;; whatnot), then divide by the height of a char to
    ;; get the height we want
    (add-to-list 'default-frame-alist 
         (cons 'height (/ (- (x-display-pixel-height) 200)
                             (frame-char-height)))))))

(set-frame-size-according-to-resolution)

(set-frame-position (selected-frame) 0 20)

(semantic-mode 1) 
(global-ede-mode t)

;; Interactively Do Things (highly recommended, but not strictly required)
(require 'ido)

(ido-mode t)

;; Magit for Emacs
(require 'magit)

;; Rinari
(add-to-list 'load-path "~/.emacs.d/rinari")
(require 'rinari)

;; loading go mode
(add-to-list 'load-path "/usr/local/Cellar/go/1.0.1/misc/emacs" t)
(require 'go-mode-load)

;; loading scala mode
(add-to-list 'load-path "/usr/local/src/scala-2.8.1.final/misc/scala-tool-support/emacs/")

(require 'scala-mode-auto)

;; loading erlang mode
(setq load-path (cons "/usr/local/Cellar/erlang/R15B01/lib/erlang/lib/tools-2.6.7/emacs"
      load-path))
(setq erlang-root-dir "/usr/local/lib/erlang")
(setq exec-path (cons "/usr/local/lib/erlang/bin" exec-path))
(require 'erlang-start)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(compose-mail-user-agent-warnings t)

;; loading coffee script mode
(add-to-list 'load-path "~/.emacs.d/coffee-mode")
;; (require 'coffee-mode)
(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))

;; loading markdown major mode
(add-to-list 'load-path "~/.emacs.d/markdown-mode")
(autoload 'markdown-mode "markdown-mode.el" 
  "Major mode for editing Markdown files" t) 
(setq auto-mode-alist (cons '("\\.md" . markdown-mode) auto-mode-alist))

(global-linum-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(compose-mail-user-agent-warnings t)
 '(custom-enabled-themes (quote (tango-dark)))
 '(display-battery-mode t)
 '(display-time-mode t)
 '(mail-alias-file "~/mail/.aliases")
 '(mail-archive-file-name "outgoing")
 '(mail-default-headers nil)
 '(mail-default-reply-to "zlu@me.com")
 '(mail-from-style (quote angles))
 '(mail-host-address "zlu-mba")
 '(mail-mailing-lists nil)
 '(mail-self-blind nil)
 '(mail-setup-with-from t)
 '(mail-signature-file "~/.signature")
 '(mail-user-agent (quote sendmail-user-agent))
 '(message-send-mail-function (quote message-send-mail-with-sendmail))
 '(rmail-enable-mime t)
 '(rmail-movemail-program "/Applications/Emacs.app/Contents/MacOS/bin/movemail")
 '(rmail-preserve-inbox nil)
 '(rmail-user-mail-address-regexp nil)
 '(send-mail-function (quote sendmail-send-it))
 '(user-full-name "Zhao Lu")
 '(user-mail-address "zlu@me.com"))
 '(scroll-bar-mode nil)
 '(send-mail-function (quote sendmail-send-it))
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tool-bar-mode nil)
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )




