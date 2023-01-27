for $x in doc("biblioteca.xml")/bib/libro
where $x/count(autor)>1
return concat(data($x/@anyo), "-->", ($x/titulo))