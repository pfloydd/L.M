<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
xmlns:dc="http://purl.org/dc/elements/1.1/" 
xmlns:content="http://purl.org/rss/1.0/modules/content/" 
xmlns:dcterms="http://purl.org/dc/terms/" 
xmlns:atom="http://www.w3.org/2005/Atom" 
xmlns:media="http://search.yahoo.com/mrss/">
    
<html>
    <html>
        <head>
          <title>H</title>
        </head>
        <body>
          <header>
            <h1><xsl:value-of select="rss/channel/title"/></h1>
          </header>
          <main>
            <xsl:for-each select="rss/channel/item">
              <article>
                <h3><xsl:value-of select="title"/></h3>
                <xsl:for-each select="media:content">

                <img src="{@url}" alt="{media:dscription}" style="max-height:420px max-width:800px"></img>

                </xsl:for-each>
                <p><xsl:value-of select="pubDate"/></p>
                <p><xsl:value-of select="description"/></p>
                <a href="{link}">Leer más</a>
    
              </article>
            </xsl:for-each>
          </main>
        </body>
        </html>
</html>
    
</xsl:stylesheet>