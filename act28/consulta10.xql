let $libro := doc("llibreria.xml")/bookstore/book
return  
    <resul>
        <min>{min($libro/price)}</min>
        <max>{max($libro/price)}</max>
    </resul>