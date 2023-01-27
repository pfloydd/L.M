for $x in doc("biblioteca.xml")/bib/libro
where $x/precio=65.95
return $x