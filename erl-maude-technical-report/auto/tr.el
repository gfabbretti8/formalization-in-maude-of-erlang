(TeX-add-style-hook
 "tr"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("mhchem" "version=3")))
   (add-to-list 'LaTeX-verbatim-environments-local "VerbatimOut")
   (add-to-list 'LaTeX-verbatim-environments-local "SaveVerbatim")
   (add-to-list 'LaTeX-verbatim-environments-local "LVerbatim*")
   (add-to-list 'LaTeX-verbatim-environments-local "LVerbatim")
   (add-to-list 'LaTeX-verbatim-environments-local "BVerbatim*")
   (add-to-list 'LaTeX-verbatim-environments-local "BVerbatim")
   (add-to-list 'LaTeX-verbatim-environments-local "Verbatim*")
   (add-to-list 'LaTeX-verbatim-environments-local "Verbatim")
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "Verb*")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "Verb")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "macros"
    "article"
    "art10"
    "listings"
    "mhchem"
    "siunitx"
    "fancyvrb"
    "hyperref"
    "breakurl"
    "underscore"
    "microtype"
    "amssymb"
    "graphicx"
    "color"
    "rotating"
    "todonotes"
    "mathpartir"
    "url"
    "tikz"
    "amsmath"
    "stmaryrd"
    "amsthm"
    "float"
    "thm-restate")
   (TeX-add-symbols
    '("blts" 1)
    "paral"
    "cons")
   (LaTeX-add-labels
    "sec:background"
    "ErlangSyntax"
    "fig:maude-module"
    "sec:gener-appr-derive-rev-sem"
    "fig:forwardrules"
    "sec:methodology"
    "fig:revforward"
    "fig:revbackward"
    "sec:contribution"
    "sec:formalizing-erlang"
    "ex:send"
    "fig:rule-send"
    "ex:rec"
    "fig:rule-rec"
    "fig:sem-entities"
    "fig:revsend"
    "sec:ongoing-work"
    "sec:conclusion")
   (LaTeX-add-bibliographies
    "references.bib")
   (LaTeX-add-counters
    "sarrow")
   (LaTeX-add-amsthm-newtheorems
    "example"
    "theorem"
    "lemma"))
 :latex)

