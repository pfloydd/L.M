let $year := for $x in doc("llibreria.xml")/bookstore/book
             return <publicación>{data($x/year)}</publicación>

return $year
