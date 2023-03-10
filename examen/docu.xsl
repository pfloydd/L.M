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
                <th>Servicio</th>
                <th colspan="2">Precio</th>
                <xsl:if test="count(precios/precio) = 3">
                <td><th colspan="2" rowpsan="3">Precio</th></td>
                </xsl:if>
                <th>Plaza</th>
                <th colspan="3">Horario</th>
                <th>Empleados</th>
            </tr>
            <xsl:for-each select="consulta/servicio">
            <tr>
                <td><xsl:value-of select="tipo"></xsl:value-of></td>
                <td><xsl:value-of select="precios/precio/@tipo"></xsl:value-of></td>
                <td><xsl:value-of select="precios/precio"></xsl:value-of></td>
                <td><xsl:value-of select="plaza"></xsl:value-of></td>
                <td><xsl:value-of select="horario/@diassemana"></xsl:value-of></td>
                <td><xsl:value-of select="horario/dia/hora1"></xsl:value-of></td>
                <td><xsl:value-of select="horario/dia/hora2"></xsl:value-of></td>
                <td><xsl:value-of select="empleados/empleado"></xsl:value-of></td>
            </tr>
            </xsl:for-each>
        </table>
    </body>
</html>

</xsl:template>
</xsl:stylesheet>