for $x in doc("llibreria.xml")/bookstore
return <total>{$x/count(book)}</total>