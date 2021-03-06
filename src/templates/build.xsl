<?xml version="1.0" encoding="utf-8"?>

<!-- xsltproc -v -o build templates/build.xsl data/_pages.xml -->

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="text" />

<xsl:template match="/">
<xsl:text>#!/bin/bash

# Generate the build script

xsltproc -v -o build templates/build.xsl data/_pages.xml;

# Create the README file

xsltproc -v -o ../README.md templates/readme.xsl data/_pages.xml;

# These commands will process HTML files with XSLT when you run `./build` inside the `src` directory.
# This list is dynamically generated as you add more pages to the `data/_pages.xml` file.

</xsl:text>
<xsl:apply-templates select="data/pages/page" />

</xsl:template>

<xsl:template match="page">
  <xsl:text>xsltproc -v -o ../public/</xsl:text>
  <xsl:value-of select="@output" />
  <xsl:text> </xsl:text>
  <xsl:value-of select="@xslt" />
  <xsl:text> </xsl:text>
  <xsl:value-of select="@data-source" />
  <xsl:text>;&#10;</xsl:text>
</xsl:template>

</xsl:stylesheet>