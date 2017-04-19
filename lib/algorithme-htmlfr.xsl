<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<xsl:output method="html" indent="yes" doctype-system="about:legacy-compat"/>
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
<script src="https://dav.li/jquery/3.1.1.min.js"/>
<script src="https://htmlfr.org/lib/lib-css.js"/>
<script src="https://htmlfr.org/lib/htmlfr.js"/>
</body>
</xsl:template>
<xsl:template match="//l">
<a>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</a>
</xsl:template>
<xsl:template match="//abr">
<abbr>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</abbr>
</xsl:template>
<xsl:template match="//adresse">
<adress>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</adress>
</xsl:template>
<xsl:template match="//zone">
<area>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</area>
</xsl:template>
<xsl:template match="//article">
<article>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</article>
</xsl:template>
<xsl:template match="//dehors">
<aside>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</aside>
</xsl:template>
<xsl:template match="//audio">
<audio>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</audio>
</xsl:template>
<xsl:template match="//g">
<b>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</b>
</xsl:template>
<xsl:template match="//base">
<base>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</base>
</xsl:template>
<xsl:template match="//ciation">
<blockquote>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</blockquote>
</xsl:template>
<xsl:template match="//citation">
<blockquote>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</blockquote>
</xsl:template>
<xsl:template match="//corps">
<body>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</body>
</xsl:template>
<xsl:template match="//nl">
<br>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</br>
</xsl:template>
<xsl:template match="//bouton">
<button>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</button>
</xsl:template>
<xsl:template match="//canevas">
<canvas>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</canvas>
</xsl:template>
<xsl:template match="//legendet">
<caption>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</caption>
</xsl:template>
<xsl:template match="//cite">
<cite>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</cite>
</xsl:template>
<xsl:template match="//code">
<code>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</code>
</xsl:template>
<xsl:template match="//col">
<col>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</col>
</xsl:template>
<xsl:template match="//groupecol">
<colgroup>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</colgroup>
</xsl:template>
<xsl:template match="//listedonnees">
<datalist>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</datalist>
</xsl:template>
<xsl:template match="//dd">
<dd>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</dd>
</xsl:template>
<xsl:template match="//suppr">
<del>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</del>
</xsl:template>
<xsl:template match="//details">
<details>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</details>
</xsl:template>
<xsl:template match="//dfn">
<dfn>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</dfn>
</xsl:template>
<xsl:template match="//fenetre">
<dialog>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</dialog>
</xsl:template>
<xsl:template match="//div">
<div>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</div>
</xsl:template>
<xsl:template match="//dl">
<dl>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</dl>
</xsl:template>
<xsl:template match="//dt">
<dt>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</dt>
</xsl:template>
<xsl:template match="//accent">
<em>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</em>
</xsl:template>
<xsl:template match="//integrer">
<embed>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</embed>
</xsl:template>
<xsl:template match="//champ">
<fieldset>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</fieldset>
</xsl:template>
<xsl:template match="//legendefig">
<figcaption>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</figcaption>
</xsl:template>
<xsl:template match="//pied">
<footer>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</footer>
</xsl:template>
<xsl:template match="//formulaire">
<form>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</form>
</xsl:template>
<xsl:template match="//t1">
<h1>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</h1>
</xsl:template>
<xsl:template match="//t2">
<h2>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</h2>
</xsl:template>
<xsl:template match="//t3">
<h3>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</h3>
</xsl:template>
<xsl:template match="//t4">
<h4>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</h4>
</xsl:template>
<xsl:template match="//t5">
<h5>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</h5>
</xsl:template>
<xsl:template match="//t6">
<h6>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</h6>
</xsl:template>
<xsl:template match="//tete">
<head>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</head>
</xsl:template>
<xsl:template match="//entete">
<header>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</header>
</xsl:template>
<xsl:template match="//ligne">
<hr>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</hr>
</xsl:template>
<xsl:template match="//i">
<i>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</i>
</xsl:template>
<xsl:template match="//cadre">
<iframe>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</iframe>
</xsl:template>
<xsl:template match="//img">
<img>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</img>
</xsl:template>
<xsl:template match="//entree">
<input>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</input>
</xsl:template>
<xsl:template match="//ins">
<ins>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</ins>
</xsl:template>
<xsl:template match="//clavier">
<kbd>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</kbd>
</xsl:template>
<xsl:template match="//generateur">
<keygen>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</keygen>
</xsl:template>
<xsl:template match="//label">
<label>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</label>
</xsl:template>
<xsl:template match="//legende">
<legend>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</legend>
</xsl:template>
<xsl:template match="//el">
<li>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</li>
</xsl:template>
<xsl:template match="//lien">
<link>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</link>
</xsl:template>
<xsl:template match="//contenu">
<main>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</main>
</xsl:template>
<xsl:template match="//carte">
<map>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</map>
</xsl:template>
<xsl:template match="//surl">
<mark>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</mark>
</xsl:template>
<xsl:template match="//menu">
<menu>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</menu>
</xsl:template>
<xsl:template match="//menuitem">
<menuitem>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</menuitem>
</xsl:template>
<xsl:template match="//meta">
<meta>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</meta>
</xsl:template>
<xsl:template match="//metre">
<meter>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</meter>
</xsl:template>
<xsl:template match="//nav">
<nav>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</nav>
</xsl:template>
<xsl:template match="//sansscript">
<noscript>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</noscript>
</xsl:template>
<xsl:template match="//objet">
<object>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</object>
</xsl:template>
<xsl:template match="//lo">
<ol>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</ol>
</xsl:template>
<xsl:template match="//grpoptions">
<optgroup>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</optgroup>
</xsl:template>
<xsl:template match="//option">
<option>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</option>
</xsl:template>
<xsl:template match="//sortie">
<output>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</output>
</xsl:template>
<xsl:template match="//p">
<p>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</p>
</xsl:template>
<xsl:template match="//param">
<param>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</param>
</xsl:template>
<xsl:template match="//photo">
<picture>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</picture>
</xsl:template>
<xsl:template match="//pre">
<pre>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</pre>
</xsl:template>
<xsl:template match="//progression">
<progress>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</progress>
</xsl:template>
<xsl:template match="//q">
<q>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</q>
</xsl:template>
<xsl:template match="//barre">
<s>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</s>
</xsl:template>
<xsl:template match="//ex">
<samp>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</samp>
</xsl:template>
<xsl:template match="//script">
<script>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</script>
</xsl:template>
<xsl:template match="//section">
<section>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</section>
</xsl:template>
<xsl:template match="//select">
<select>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</select>
</xsl:template>
<xsl:template match="//petit">
<small>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</small>
</xsl:template>
<xsl:template match="//source">
<source>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</source>
</xsl:template>
<xsl:template match="//pont">
<span>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</span>
</xsl:template>
<xsl:template match="//fort">
<strong>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</strong>
</xsl:template>
<xsl:template match="//style">
<style>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</style>
</xsl:template>
<xsl:template match="//indice">
<sub>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</sub>
</xsl:template>
<xsl:template match="//sommaire">
<summary>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</summary>
</xsl:template>
<xsl:template match="//exposant">
<suo>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</suo>
</xsl:template>
<xsl:template match="//tableau">
<table>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</table>
</xsl:template>
<xsl:template match="//corpst">
<tbody>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</tbody>
</xsl:template>
<xsl:template match="//case">
<td>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</td>
</xsl:template>
<xsl:template match="//textelong">
<textarea>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</textarea>
</xsl:template>
<xsl:template match="//piedt">
<tfood>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</tfood>
</xsl:template>
<xsl:template match="//entetet">
<th>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</th>
</xsl:template>
<xsl:template match="//tetet">
<thead>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</thead>
</xsl:template>
<xsl:template match="//temps">
<time>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</time>
</xsl:template>
<xsl:template match="//titre">
<title>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</title>
</xsl:template>
<xsl:template match="//ligne">
<tr>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</tr>
</xsl:template>
<xsl:template match="//piste">
<track>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</track>
</xsl:template>
<xsl:template match="//s">
<u>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</u>
</xsl:template>
<xsl:template match="//lno">
<ul>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</ul>
</xsl:template>
<xsl:template match="//var">
<var>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</var>
</xsl:template>
<xsl:template match="//video">
<video>
<xsl:attribute name="target">
<xsl:choose>
<xsl:when test="@cible='_onglet'">
<xsl:text>_blank</xsl:text>
</xsl:when>
<xsl:when test="@cible='_ici'">
<xsl:text>_self</xsl:text>
</xsl:when>
<xsl:when test="@cible='_parent'">
<xsl:text>_parent</xsl:text>
</xsl:when>
<xsl:when test="@cible='_dessus'">
<xsl:text>_top</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="@cible"/>
</xsl:otherwise>
</xsl:choose>
</xsl:attribute>
<xsl:for-each select="./@*">
<xsl:if test="1=1  and name()!='cible'">
<xsl:attribute name="{name()}">
<xsl:value-of select="."/>
</xsl:attribute>
</xsl:if>
</xsl:for-each>
<xsl:apply-templates/>
</video>
</xsl:template>
</xsl:stylesheet>
