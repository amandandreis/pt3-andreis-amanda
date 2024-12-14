<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/recipes">
    <xsl:for-each select="recipe">
      <xsl:variable name="filename" select="concat('receta', @id, '.html')" />
      <xsl:result-document href="{$filename}">
        <html>
          <head>
            <title><xsl:value-of select="name"/></title>
            <link rel="stylesheet" type="text/css" href="../css/recetas.css"/>
          </head>
          <body>
            <header>
              <h1><xsl:value-of select="name"/></h1>
            </header>
            <main>
              <section>
                <h2>Ingredientes:</h2>
                <ul>
                  <xsl:for-each select="ingredients/ingredient">
                    <li><xsl:value-of select="."/></li>
                  </xsl:for-each>
                </ul>
                <h2>Instrucciones:</h2>
                <p><xsl:value-of select="instructions"/></p>
              </section>
            </main>
          </body>
        </html>
      </xsl:result-document>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
