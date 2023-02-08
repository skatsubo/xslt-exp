<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="node( ) | @*">
		<xsl:copy>
			<xsl:apply-templates select="@* | node( )"/>
		</xsl:copy>
	</xsl:template>

	<xsl:template match="tex-math">
		<xsl:value-of select="."/><xsl:text> (</xsl:text>
		<xsl:value-of select="count( 
			ancestor::*[ancestor::sec[parent::sec[@id='appendix']]]/preceding-sibling::*/descendant-or-self::disp-formula
			) + 1"/>
		<xsl:text>)</xsl:text>
	</xsl:template>

</xsl:stylesheet>
