<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="xml"
                indent="yes"
                encoding="UTF-8"
                doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"/>
    <xsl:template match="/article">
        <html>
            <head>
                <meta http-equiv="Content-Type"
                      content="text/html; charset=UTF-8" />
                <title><xsl:value-of select="title"/></title>
                <link rel="stylesheet"
                      href="stylesheets/blueprint/screen.css"
                      type="text/css"
                      media="screen, projection" />
                <link rel="stylesheet"
                      href="stylesheets/blueprint/print.css"
                      type="text/css"
                      media="print" />
                <xsl:comment>[if lt IE 8]>
                &lt;link rel="stylesheet"
                         href="stylesheets/blueprint/ie.css"
                         type="text/css"
                         media="screen, projection" /&gt;
                &lt;![endif]</xsl:comment>
                <link rel="stylesheet"
                      href="stylesheets/screen.css"
                      type="text/css"
                      media="screen, projection" />
            </head>
            <body>
                <div class="container">
                    <div class="span-8">
                        <xsl:apply-templates select="sidebar/section"/>
                    </div>
                    <div class="prepend-2 span-14 last">
                        <h1><xsl:value-of select="title"/></h1>
                        <xsl:apply-templates select="section"/>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="article/section/title">
        <h2><xsl:value-of select="."/></h2>
    </xsl:template>

    <xsl:template match="sidebar/section/title">
        <h3><xsl:value-of select="."/></h3>
    </xsl:template>

    <xsl:template match="blockquote">
        <blockquote><xsl:apply-templates/></blockquote>
    </xsl:template>

    <xsl:template match="quote">
        “<xsl:apply-templates/>”
    </xsl:template>

    <xsl:template match="para">
        <p><xsl:apply-templates/></p>
    </xsl:template>

    <xsl:template match="ulink">
        <a href="{@url}"><xsl:value-of select="."/></a>
    </xsl:template>

    <xsl:template match="subscript">
        <sub><xsl:value-of select="."/></sub>
    </xsl:template>

    <xsl:template match="glossterm">
        <dfn><xsl:value-of select="."/></dfn>
    </xsl:template>
</xsl:stylesheet>
