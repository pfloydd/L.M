<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Act. 21</title>
            </head>

            <body>
                <table style="text-align:center" border="1" cellspacing="4" cellpadding="6">
                    <tr>
                        <th rowspan="2" colspan="3">Descripción de cada hecho</th>
                        <th colspan="3">Fecha</th>
                    </tr>
                    <tr>
                        <th>Día</th>
                        <th>Mes</th>
                        <th>Año</th>
                    </tr>
                    <xsl:for-each select="historia/hecho">
                    <tr>
			            <td colspan="3"><xsl:value-of select="@descripcion"/></td>
                        <td><xsl:value-of select="fecha/dia"/></td>
                        <td><xsl:value-of select="fecha/mes"/></td>
                        <td><xsl:value-of select="fecha/year"/></td>
                    </tr>
                </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>