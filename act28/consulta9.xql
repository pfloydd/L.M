for $x in doc("llibreria.xml")/bookstore
return <resultado>{($x/book/title)} <total>{$x/count(book)}</total></resultado>