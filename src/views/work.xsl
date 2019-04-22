<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../templates/master.xsl" />
<xsl:import href="../templates/main.xsl" />

<xsl:template match="data">
  <xsl:call-template name="main" />
</xsl:template>

</xsl:stylesheet>