<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="xml" indent="yes" />

    <xsl:template match="/">
        <xsl:element name="xsl:stylesheet">
            <xsl:attribute name="version">2.0</xsl:attribute>
            <xsl:attribute name="xmlns:xsl">http://www.w3.org/1999/XSL/Transform</xsl:attribute>

            <xsl:element name="xsl:output">
                <xsl:attribute name="method">html</xsl:attribute>
                <xsl:attribute name="indent">yes</xsl:attribute>
                <xsl:attribute name="doctype-system">about:legacy-compat</xsl:attribute>
            </xsl:element>

            <xsl:element name="xsl:template">
                <xsl:attribute name="match">/</xsl:attribute>
                <xsl:element name="html">
                    <xsl:element name="xsl:apply-templates"></xsl:element>
                </xsl:element>
            </xsl:element>

            <xsl:element name="xsl:template">
                <xsl:attribute name="match">//tete</xsl:attribute>
                <xsl:element name="head">
                    <xsl:element name="xsl:apply-templates"></xsl:element>
                </xsl:element>
            </xsl:element>

            <xsl:element name="xsl:template">
                <xsl:attribute name="match">//corps</xsl:attribute>
                <xsl:element name="body">
                    <xsl:element name="xsl:apply-templates"></xsl:element>
                    <xsl:element name="script">
                        <xsl:attribute name="src">https://dav.li/jquery/3.1.1.min.js</xsl:attribute>
                    </xsl:element>
                    <xsl:element name="script">
                        <xsl:attribute name="src">https://htmlfr.org/lib/lib-css.js</xsl:attribute>
                    </xsl:element>
                    <xsl:element name="script">
                        <xsl:attribute name="src">https://htmlfr.org/lib/htmlfr.js</xsl:attribute>
                    </xsl:element>
                </xsl:element>
            </xsl:element>


            <xsl:for-each select="//balise">
                <xsl:element name="xsl:template">
                    <xsl:attribute name="match">//<xsl:value-of select="./fr"/></xsl:attribute>
                    <xsl:element name="{./en}">
                        <xsl:call-template name="gererAttributs"/>
                        <xsl:element name="xsl:apply-templates"></xsl:element>
                    </xsl:element>
                </xsl:element>
            </xsl:for-each>

        </xsl:element>
    </xsl:template>



    <xsl:template name="gererAttributs">
        <xsl:for-each select="//attribut">
            <xsl:element name="xsl:attribute">
                <xsl:attribute name="name"><xsl:value-of select="./en"/></xsl:attribute>
                <xsl:element name="xsl:choose">
                    <xsl:for-each select="./contenu">
                        <xsl:element name="xsl:when">
                            <xsl:attribute name="test">@<xsl:value-of select="../fr"/>='<xsl:value-of select="./fr"/>'</xsl:attribute>
                            <xsl:element name="xsl:text"><xsl:value-of select="./en"/></xsl:element>
                        </xsl:element>
                    </xsl:for-each>
                    <xsl:element name="xsl:otherwise">
                        <xsl:element name="xsl:value-of">
                            <xsl:attribute name="select">@<xsl:value-of select="./fr"/></xsl:attribute>
                        </xsl:element>
                    </xsl:element>
                </xsl:element>
            </xsl:element>
        </xsl:for-each>

        <xsl:element name="xsl:for-each">
            <xsl:attribute name="select">./@*</xsl:attribute>
            <xsl:element name="xsl:if">
                <xsl:attribute name="test">1=1 <xsl:for-each select="//attribut"> and name()!='<xsl:value-of select="./fr"/>'</xsl:for-each></xsl:attribute>
                <xsl:element name="xsl:attribute">
                    <xsl:attribute name="name">{name()}</xsl:attribute>
                    <xsl:element name="xsl:value-of">
                        <xsl:attribute name="select">.</xsl:attribute>
                    </xsl:element>
                </xsl:element>
            </xsl:element>
        </xsl:element>
        
    </xsl:template>
    
    
</xsl:stylesheet>