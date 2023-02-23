for $x in doc("llibreria.xml")/bookstore/book
where $x/year=2005
return <lib2005>
<titulo>{data($x/title)}</titulo>
<autor>{data($x/author)}</autor>
</lib2005>