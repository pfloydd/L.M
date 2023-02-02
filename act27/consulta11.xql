<html>
<body>
    <h1>Listado de libros</h1>
    <table border="1">
        <tr>
            <th align="left">Título</th>
            <th align="left">Editorial</th>
            <th align="right">precio</th>
        </tr>
        {
        for $x in doc("biblioteca.xml")/bib/libro
        return 
        <tr>
            <td>{data($x/titulo)}</td>
            <td>{data($x/editorial)}</td>
            <td>{data($x/precio)}</td>
        </tr>
        }
    </table>
</body>
</html>
        
