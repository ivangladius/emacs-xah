

(add-hook 'c-mode-hook 'c++-mode-hook
	  (lambda () (tree-sitter-hl-mode)))
