(provide 'python-setting)

; python-mode
(setq py-install-directory "~/.emacs.d/plugins")
(add-to-list 'load-path py-install-directory)
(require 'python-mode)

;(when (featurep 'python) (unload-feature 'python t))


; use IPython
(setq py-shell-name "ipython")
(setq py-shell-name "c:/Python27/Scripts/ipython")
(setq py-which-bufname "IPython")

(setq py-smart-indentation t)	; try to automagically figure out indentation
(setq py-smart-operator-mode-p t)	; enable smart-operator minor mode
