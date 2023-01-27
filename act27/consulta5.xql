for $x in doc("biblioteca.xml")/bib/libro
where $x/editorial="Addison-Wesley" and $x/@anyo>1992
return concat(data($x/@anyo), "-->", ($x/titulo))