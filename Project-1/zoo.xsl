<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">   
  <xsl:template match="/"> 
    <html> 
      <body> 
        <h2>ZOO DATA</h2> 
        <table border="2" > 
          <tr bgcolor="#9acd32"> 
            <th>Element ID</th>
            <th>OPEN TIME</th>
            <th>CLOSE TIME</th>
            <th colspan="5">ANIMALS</th>  
            <th colspan="5">EMPLOYEES</th> 
            <th colspan="3">LOCATION</th>
             
          </tr>          
            <tr style="color:red;text-align:center">
                <td>Element ID</td>
                <td>Open Time</td>
                <td>Close Time</td>
                <td>CommomName</td>
                <td>Animal's DOB</td>
                <td>GiveName</td>
                <td>Scientific Name</td>
                <td>Sex</td>
                <td>Employees ID</td>
                <td>FirstName</td>
                <td>LastName</td>
                <td>Employee's DOB</td>
                <td>Position</td>
                <td>City</td>
                <td>Country</td>
                <td>Region</td>
                
            </tr>
            <xsl:for-each select="zoos/zoo"> 
            <tr>
                <td>             
                    <xsl:value-of select="id"/>
                </td> 
                <td>             
                    <xsl:value-of select="openTime"/>
                </td>
                <td>             
                    <xsl:value-of select="closeTime"/>
                </td>
                <td>
                    <xsl:for-each select="animals">
                    <ul>
                        <li>
                        <xsl:value-of select="commonName"/>
                        </li>
                    </ul>
                    </xsl:for-each>
                </td> 
                <td>
                    <xsl:for-each select="animals">
                    <ul>
                        <li>
                        <xsl:value-of select="dob"/>
                        </li>
                    </ul>
                    </xsl:for-each>
                </td> 
                <td>
                    <xsl:for-each select="animals">
                    <ul>
                        <li>
                        <xsl:value-of select="giveName"/>
                        </li>
                    </ul>
                    </xsl:for-each>
                </td> 
                <td>
                    <xsl:for-each select="animals">
                    <ul>
                        <li>
                        <xsl:value-of select="scientificName"/>
                        </li>
                    </ul>
                    </xsl:for-each>
                </td> 
                <td>
                    <xsl:for-each select="animals">
                    <ul>
                        <li>
                        <xsl:value-of select="sex"/>
                        </li>
                    </ul>
                    </xsl:for-each>
                </td> 
                <td>
                    <xsl:for-each select="employees">
                    <ul>
                        <li>
                        <xsl:value-of select="id"/>
                        </li>
                    </ul>
                    </xsl:for-each>
                </td>
                <td>
                    <xsl:for-each select="employees">
                    <ul>
                        <li>
                        <xsl:value-of select="firstName"/>
                        </li>
                    </ul>
                    </xsl:for-each>                   
                </td>
                <td>
                    <xsl:for-each select="employees">
                    <ul>
                        <li>
                        <xsl:value-of select="lastName"/>
                        </li>
                    </ul>
                    </xsl:for-each>
                </td>
                <td> 
                    <xsl:for-each select="employees">                    
                    <ul>
                        <li>
                        <xsl:value-of select="dob"/>
                        </li>
                    </ul> 
                    </xsl:for-each>
                </td>
                <td>
                    <xsl:for-each select="employees">
                    <ul>
                        <li>
                        <xsl:value-of select="position"/>
                        </li>
                    </ul>
                    </xsl:for-each>
                </td>
                  <td>  
                    <xsl:for-each select="location">           
                    <xsl:value-of select="city"/>
                    </xsl:for-each>
                </td>
                <td>  
                    <xsl:for-each select="location">           
                    <xsl:value-of select="counry"/>
                    </xsl:for-each>
                </td>
                <td>  
                    <xsl:for-each select="location">           
                    <xsl:value-of select="region"/>
                    </xsl:for-each>
                </td>
			</tr>
            </xsl:for-each>
        </table> 
      </body> 
    </html> 
  </xsl:template>  
</xsl:stylesheet>