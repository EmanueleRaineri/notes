emacs --batch --eval "(progn (find-file \"src/delta-method.org\") (org-latex-export-to-pdf))"
mv src/delta-method.pdf pdfs/

emacs --batch --eval "(progn (find-file \"src/ld_library_path_in_mathematica.org\") (org-latex-export-to-pdf))"
mv src/ld_library_path_in_mathematica.pdf pdfs/
