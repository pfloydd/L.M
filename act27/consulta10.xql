for $x in doc("biblioteca.xml")/bib/libro
return <libro>{$x/titulo}{$x/count(autor)}</libro>