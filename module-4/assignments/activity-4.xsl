<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
    <html>
        <body>
            <h2 style="color:green">Table 1</h2>
            <table border="1" style="border:2px solid black; margin-auto; text-align:center">
                <tr style="background-color:blue; color:white">
                    <th style="padding:40px">Product Name</th>
                    <th style="padding:40px">Manufacturer id</th>
                    <th style="padding:40px">Description</th>
                    <th style="padding:40px">USD price</th>
                </tr>
                <xsl:for-each select="products/product">
                <xsl:if test="@shippable='true'">
                    <tr>
                        <td><xsl:value-of select="productName"/></td>
                        <td><xsl:value-of select="manufacturer"/></td>
                        <td><xsl:value-of select="description"/></td>
                        <td><xsl:value-of select="prices/price[1]"/></td>
                    </tr>
                </xsl:if>
                </xsl:for-each>
            </table>
            <h2 style="color:green">Table 2</h2>
            <table border="1" style="border:2px solid black; margin-auto; text-align:center">
                <tr style="background-color:blue;color:white">
                    <th style="padding:40px">Product Name</th>
                    <th style="padding:40px">Description</th>
                    <th style="padding:40px">USD price</th>
                    <th style="padding:40px">Euro price</th>
                </tr>
                <xsl:for-each select="products/product">
                <xsl:if test="manufacturer[@id='acme']">
                <tr>
                    <td><xsl:value-of select="productName"/></td>
                    <td><xsl:value-of select="description"/></td>
                    <td><xsl:value-of select="prices/price[1]"/></td>
                    <td><xsl:value-of select="prices/price[3]"/></td>
                </tr>
                </xsl:if>
                </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>