<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="head.xsl" />
<xsl:import href="body.xsl" />

<xsl:output method="xml"
  doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
  doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
  omit-xml-declaration="yes"
  encoding="UTF-8"
  indent="yes" />

<!-- Page Parameters -->
<xsl:param name="config" select="document('../data/_config.xml')" />
<xsl:param name="website-name" select="$config/data/config/website-name" />
<xsl:param name="root" select="/data/params/root" />
<xsl:param name="workspace" select="concat($root, 'workspace/')" />
<xsl:param name="assets" select="concat($workspace, 'assets/')" />
<xsl:param name="page-title" select="/data/params/page-title" />
<xsl:param name="current-page" select="/data/params/current-page" />
<xsl:param name="parent-page" select="/data/params/parent-page" />
<xsl:param name="section-page" select="/data/params/section-page" />
<xsl:param name="subsection-page" select="/data/params/subsection-page" />
<xsl:param name="root-page">
  <xsl:choose>
    <xsl:when test="/data/params/root-page">
      <xsl:value-of select="/data/params/root-page" />
    </xsl:when>
    <xsl:otherwise>
      <xsl:value-of select="$current-page" />
    </xsl:otherwise>
  </xsl:choose>
</xsl:param>
<xsl:param name="navigation" select="document('../data/_navigation.xml')" />
<xsl:param name="has-section-nav" select="false()" />

<!-- Directories -->
<xsl:param name="css" select="concat($assets, 'css/')" />
<xsl:param name="scripts" select="concat($assets, 'js/')" />
<xsl:param name="images" select="concat($assets, 'images/')" />

<xsl:template match="/">
	<html class="no-js" lang="en">
    <xsl:apply-templates select="." mode="head" />
    <xsl:apply-templates select="." mode="body" />
  </html>
</xsl:template>

</xsl:stylesheet>