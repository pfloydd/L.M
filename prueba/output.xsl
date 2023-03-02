<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
    
<html>
    <head>
        <title>.</title>
    </head>
    <body>
        <table border="1">
            <tr>
                <th>Baile</th>
                <th>Precio</th>
                <th>Plazas</th>
                <th>Profesor</th>
                <th>Fecha inicio</th>
                <th>Fecha fin</th>
                <th>Clases semanales</th>
                <th>Sala</th>
            </tr>
            <xsl:for-each select="academia/baile">
            <tr>
                <td><xsl:value-of select="@nombre"></xsl:value-of></td>
                <td><xsl:value-of select="precio"></xsl:value-of></td>
                <td><xsl:value-of select="plazas"></xsl:value-of></td>
                <td><xsl:value-of select="profesor"></xsl:value-of></td>
                <td><xsl:value-of select="fecha/fechainicio"></xsl:value-of></td>
                <td><xsl:value-of select="fecha/fechafin"></xsl:value-of></td>
                <td><xsl:value-of select="diassem"></xsl:value-of></td>
                <td><xsl:value-of select="sala"></xsl:value-of></td>
            </tr>
            </xsl:for-each>
        </table>
    </body>
</html>

</xsl:template>
</xsl:stylesheet>