<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:template match="/">
    <html>
      <head>
        <title></title>
        <style>
          table{
          border:solid;
          }
        </style>
      </head>
      <body>
        <table>
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Price</th>
          </tr>
          <xsl:for-each select="books/book">
            <tr>
              <td>
                <xsl:value-of select="id"/>
              </td>
              <td>
                <xsl:value-of select="name"/>
              </td>
              <td>
                <xsl:value-of select="price"/>
              </td>
            </tr>
          </xsl:for-each>        
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
