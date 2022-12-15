<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Act.23</title>
            </head>
            <body>
                <table style="text-align:center" border="1" cellspacing="4" cellpadding="6">
                    <tr>
                        <th colspan="6">FACT. NUM 999</th>
                    </tr>
                    <xsl:for-each select="facturas/factura">
                    <tr>
                        <td colspan="4" align="left">
                        <xsl:value-of select="empresa/direccion"/><br/>
                        <xsl:value-of select="empresa/poblacion"/><br/>
                        <xsl:value-of select="empresa/cp"/><br/>
                        CIF: <xsl:value-of select="empresa/cif"/> <br/>
                        Teléfono: <xsl:value-of select="empresa/telefono"/><br/>
                        Fax: <xsl:value-of select="empresa/fax"/><br/>
                        </td>
        
                        <td colspan="2" align="left">
                            <pre>

                            </pre>
                        Fecha: <xsl:value-of select="pedido/fecha"/><br/>
                        Número de pedido: <xsl:value-of select="pedido/pedidonum"/><br/>
                        Forma de pago: <xsl:value-of select="pedido/formapago"/><br/>
                        </td>

                        </tr>
                
                    </xsl:for-each>
                    <tr>
                        <th colspan="6">Datos CLIENTE</th>
                    </tr>
                    <xsl:for-each select="facturas/factura/cliente">
                    <tr>
                        <td colspan="6" align="left">
                        <xsl:value-of select="nombre"/><br/>
                        <xsl:value-of select="direccion"/><br />
                        <xsl:value-of select="poblacion"/><br />
                        <xsl:value-of select="cp"/><br />
                        <xsl:value-of select="provincia"/>
                        
                        </td>
                    </tr>
                    </xsl:for-each>
                    <tr>
                        <th>REF.</th>
                        <th>DESCR</th>
                        <th>CANT.</th>
                        <th>PRECIO</th>
                        <th>I.V.A</th>
                        <th>IMPORTE</th>
                    </tr>
                    <xsl:for-each select="facturas/factura/datos/productos/producto">
                    <tr>
                        <td><xsl:value-of select="ref"/></td>
                        <td><xsl:value-of select="descrip"/></td>
                        <td><xsl:value-of select="cant"/></td>
                        <td><xsl:value-of select="precio"/></td>
                        <td><xsl:value-of select="iva"/></td>
                        <td><xsl:value-of select="importe"/></td>
                    </tr>
                </xsl:for-each>
                <tr>
                    <th colspan="2">Base disp.</th>
                    <th colspan="2">% IVA</th>
                    <th colspan="2">Cuota IVA</th>
                </tr>
                <xsl:for-each select="facturas/factura/datos/precios">
                <tr>
                    <td colspan="2"><xsl:value-of select="base"/></td>
                    <td colspan="2"><xsl:value-of select="iva"/></td>
                    <td colspan="2"><xsl:value-of select="cuotaiva"/></td>
                </tr>
                <tr>
                   <td colspan="6"> TOTAL FACTURA: <xsl:value-of select="total"/></td> 
                </tr>
                </xsl:for-each>
                </table>
            </body>
        </html>

    </xsl:template>
    
</xsl:stylesheet>