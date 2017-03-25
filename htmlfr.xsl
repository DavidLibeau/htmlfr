<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <html>

        <xsl:apply-templates/>

        </html>
    </xsl:template>

    <xsl:template match="//tete">
        <head>
            <xsl:apply-templates/>
        </head>
    </xsl:template>

    <xsl:template match="//corps">
        <body>
            <xsl:apply-templates/>
            <script src="https://dav.li/jquery/3.1.1.min.js"></script>
            <script src="lib-css.js"></script>
            <script src="htmlfr.js"></script>
        </body>
    </xsl:template>

    <xsl:template match="//t1">
        <h1>
            <xsl:apply-templates/>
        </h1>
    </xsl:template>

    <xsl:template match="//p">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    <xsl:template match="//fort">
        <strong>
            <xsl:apply-templates/>
        </strong>
    </xsl:template>
    
    <xsl:template match="//l">
        <a>
            <xsl:attribute name="href">
                <xsl:value-of select="@href" />
            </xsl:attribute>
            <xsl:attribute name="target">
                <xsl:choose>
                    <xsl:when test="@cible='_onglet'">
                       <xsl:text>_blank</xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="@cible" />
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:attribute>
            <xsl:apply-templates/>
        </a>
    </xsl:template>
    
    
    <xsl:template match="//titre">
        <title>
            <xsl:apply-templates/>
        </title>
    </xsl:template>
    
    <xsl:template match="//lien">
        <link>
            <xsl:attribute name="href">
                <xsl:value-of select="@href" />
            </xsl:attribute>
            <xsl:attribute name="rel">
                <xsl:choose>
                    <xsl:when test="@rel='feuillestyle'">
                       <xsl:text>stylesheet</xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="@rel" />
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:attribute>
            <xsl:apply-templates/>
        </link>
    </xsl:template>

</xsl:stylesheet>