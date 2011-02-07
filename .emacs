(add-to-list 'load-path "/usr/local/src/go/misc/emacs/" t)
(require 'go-mode-load)

(add-to-list 'load-path "/usr/local/src/scala-2.8.1.final/misc/scala-tool-support/emacs/")
(require 'scala-mode-auto)

(setq load-path (cons "/usr/local/lib/erlang/lib/tools-2.6.6.1/emacs"
      load-path))
(setq erlang-root-dir "/usr/local/lib/erlang")
(setq exec-path (cons "/usr/local/lib/erlang/bin" exec-path))
(require 'erlang-start)

;; (load-file (let ((coding-system-for-read 'utf-8))
;;                (shell-command-to-string "agda-mode locate")))

