<?xml version = "1.0" encoding = "UTF-8"?> 
<xsl:stylesheet version = "1.0" 
   xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">
<xsl:template match = "/">
   <html>
      <body>
         <h2>Employee Management System</h2>
         
         <table border = "1" bgcolor="#989dd7">
            <tr bgcolor="#2f3fe1">
               <th>EMP_ID</th>
               <th>EMP_NAME</th>
               <th>AGE</th>
               <th>SALARY</th>
               <th>EMAIL</th>
               <th>PHONE NUMBER</th>
               <th>DESIGNATION</th>
               <th>PROMOTION</th>
            </tr>

            <xsl:for-each select = "company/employee"> 
               <tr>
                  <td><xsl:value-of select = "empid"/></td>
                  <td><xsl:value-of select = "empname"/></td>
                  <td><xsl:value-of select = "empage"/></td>
                  <td><xsl:value-of select = "empsal"/></td>
                  <td><xsl:value-of select = "empmail"/></td>
                  <td><xsl:value-of select = "empphone"/></td>
                  <td><xsl:value-of select = "empdesg"/></td>
                  
                  <td>
                  <xsl:choose>
                  <xsl:when test = "empage >= 50">
                  Associate Project Manager
                  </xsl:when>
                  <xsl:when test = "empage >= 40">
                  Team Leader
                  </xsl:when>
                  <xsl:when test = "empage &lt; 40">
                   Developer
                  </xsl:when>
                  </xsl:choose>
                  </td>
              </tr>
            </xsl:for-each>
            
         </table>
      </body>
   </html>
</xsl:template>
</xsl:stylesheet>