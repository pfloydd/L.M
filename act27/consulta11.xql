<html>
<body>
    <h1>Listado de libros</h1>
    <table border="1">
        <tr>
            <th>Título</th>
            <th>Editorial</th>
            <th>precio</th>
        </tr>{
        for $x in doc("biblioteca.xml")/bib/libro
        order by $x
        return 
        <tr>
            <td>{$x/titulo}</td>
            <td>{$x/editorial}</td>
            <td>{$x/precio}</td>
        </tr>
        }
    </table>
</body>
</html>
        
