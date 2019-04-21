<?xml version="1.0" encoding="utf-8"?>

<!-- xsltproc -v -o ../README utilities/readme.xsl data/pages.xml -->

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="text" />

<xsl:template match="/">
<xsl:text># XSLT Static Site Generator

## HTML Templates

This markup library contains the XML, XSLT and HTML used to build a
basic demo of an XSLT static site generator. It is being maintained as
a [Git repository on GitHub](https://github.com/bauhouse/xslt-staticgen).

### Preprocessing HTML

XSLT is being used as a preprocessor (using xsltproc) to output valid,
well-formed XHTML structure. This process of static site generation
should be easy to manage on any Unix-based system (Mac, Linux) without
having to install any software. On Windows, install xsltproc. On Glitch,
xsltproc has been compiled from source and is stored in `bin/xsltproc`.

To process HTML, run the `./build` script in the src directory.

To process individual files, open the `src/build` file and find the
`xsltproc` command referring to the HTML file you would like to process
and run the command.

### Design Templates

The page layouts can be viewed in a browser at the following URLs: 

</xsl:text>
<xsl:apply-templates select="data/pages/page" />
</xsl:template>

<xsl:template match="page">
  <xsl:text>* &lt;http://xslt.glitch.me/</xsl:text>
  <xsl:value-of select="substring-before(@output, 'index.html')" />
  <xsl:text>&gt;&#10;</xsl:text>
</xsl:template>

</xsl:stylesheet>