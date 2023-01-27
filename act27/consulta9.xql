for $x in doc("biblioteca.xml")/bib/libro
return <result>{$x/titulo}{$x/autor}</result>