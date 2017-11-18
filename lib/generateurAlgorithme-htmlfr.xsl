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
                        <xsl:attribute name="src">lib/jquery/jquery-3.2.1.min.js</xsl:attribute>
                    </xsl:element>
                    <xsl:element name="script">
                        <xsl:attribute name="src">lib/lib-css.js</xsl:attribute>
                    </xsl:element>
                    <xsl:element name="script">
                        <xsl:attribute name="src">lib/htmlfr.js</xsl:attribute>
                    </xsl:element>
                </xsl:element>
            </xsl:element>


            <xsl:for-each select="//balise[./en!='body' and ./en!='head']">
                <xsl:element name="xsl:template">
                    <xsl:attribute name="match"><!--
                      --><xsl:for-each select="./fr"><!--
                      -->//<xsl:value-of select="."/> <!--
                      --></xsl:for-each></xsl:attribute>
                    <xsl:element name="{./en}">
                        <xsl:call-template name="gererAttributs"/>
                        <xsl:element name="xsl:apply-templates"></xsl:element>
                    </xsl:element>
                </xsl:element>
            </xsl:for-each>

        </xsl:element>
    </xsl:template>

    
    <!-- Template pour gérer les attributs -->
    <xsl:template name="gererAttributs">
        <xsl:for-each select="//attribut"> <!-- Pour chaque attribut de la traduction -->
            <!-- insérer test "si l'élément parent à cet attribut" -->
            <xsl:element name="xsl:if">
                <xsl:attribute name="test">string-length(@<xsl:value-of select="./fr"/>)!=0</xsl:attribute>
                <xsl:element name="xsl:attribute"> <!-- On créer un élement attribut -->
                    <xsl:attribute name="name"><xsl:value-of select="./en"/></xsl:attribute> <!-- avec comme attr 'name', la trad en -->
                    <xsl:element name="xsl:choose"> <!-- Ensuite on créer un élément 'choose' -->
                        <xsl:for-each select="./contenu"> <!-- Pour chaque contenu d'un attribut -->
                            <xsl:element name="xsl:when"> <!-- on créer un élément 'when' -->
                                <xsl:attribute name="test">@<xsl:value-of select="../fr"/>='<xsl:value-of select="./fr"/>'</xsl:attribute> <!-- "si nous pouvons traduire" -->
                                <xsl:element name="xsl:text"><xsl:value-of select="./en"/></xsl:element> <!-- "nous traduisons" -->
                            </xsl:element>
                        </xsl:for-each>
                        <xsl:element name="xsl:otherwise"> <!-- Par défaut -->
                            <xsl:element name="xsl:value-of"><!-- Afficher tel quel -->
                                <xsl:attribute name="select">@<xsl:value-of select="./fr"/></xsl:attribute>
                            </xsl:element>
                        </xsl:element>
                    </xsl:element>
                </xsl:element>
            </xsl:element>
        </xsl:for-each>

        <!-- Créer un élément qui signifiera "Pour tous les attributs non traduits, afficher les attributs tels quel" -->
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