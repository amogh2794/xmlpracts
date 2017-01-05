<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : bookstorestyle.xsl
    Created on : 5 January, 2017, 8:18 PM
    Author     : Amogh
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="bookstores">
        <html>
            <head>
                <title>bookstorestyle.xsl</title>
            </head>
            <body>
                <center>
                <table border="1">
                    <tr>
                        <th>Title</th>
                        <th>author</th>
                        <th>year</th>
                        <th>price</th>
                    </tr>
                    <xsl:apply-templates/>
                </table>
                </center>
            </body>
        </html>          
    </xsl:template>
    <xsl:template match="books">
        <tr>
            <td><xsl:value-of select="title"/></td>
            <td><xsl:value-of select="author"/></td>
            <td><xsl:value-of select="year"/></td>
            <td><xsl:value-of select="price"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
