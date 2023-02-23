for $x in doc("llibreria.xml")/bookstore/book
let $precioiva := ($x/price*1.21)
order by $precioiva descending
return 
<libro>
    <titulo>{(data($x/title))}</titulo>
    <precio>{(data($x/price))}</precio>
    <precioiva>{(data($precioiva))}</precioiva>
    
</libro>