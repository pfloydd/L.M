for $x in doc("biblioteca.xml")/bib/libro
order by $x/@anyo
return concat(data($x/@anyo), "-->", ($x/titulo))
