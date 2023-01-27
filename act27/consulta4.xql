for $x in doc("biblioteca.xml")/bib/libro
where $x/@anyo<2000
return $x