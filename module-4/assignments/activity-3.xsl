<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <body>
        <h2 style="background-color:red;color:white">Products</h2>
        <span style="background-color:white;color:red">
            <xsl:for-each select="products/product">
                <h4>
                    <xsl:value-of select="productName"/>
                </h4>
            </xsl:for-each>
        </span>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>