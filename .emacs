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

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(compose-mail-user-agent-warnings t)
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
 '(send-mail-function (quote sendmail-send-it))
 '(user-full-name "Zhao Lu")
 '(user-mail-address "zlu@me.com"))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
