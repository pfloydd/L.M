<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Act. 22</title>
            </head>
            <body>
                <table style="text-align:center" border="1" cellspacing="4" cellpadding="6">
                    <tr>
                        <th colspan="6">CDs EN OFERTA</th>
                    </tr>
                    <tr>
                        <th>Título</th>
                        <th>Artista</th>
                        <th>País</th>
                        <th>Compañia</th>
                        <th>Precio</th>
                        <th>Año</th>
                    </tr>
                    <xsl:for-each select="cdsoferta/cd">
                    <tr>
                        <td><xsl:value-of select="titulo"/></td>
                        <td><xsl:value-of select="artista"/></td>
                        <td><xsl:value-of select="pais"/></td>
                        <td><xsl:value-of select="compañia"/></td>
                        <td><xsl:value-of select="precio"/></td>
                        <td><xsl:value-of select="publicacion"/></td>
                    </tr>
                </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>