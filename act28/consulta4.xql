for $x in doc("llibreria.xml")/bookstore/book
where $x/price<=30
return data ($x/title)