<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" />
		<xsl:template match="/*">
			<xsl:apply-templates select="root" />
		</xsl:template>
		<xsl:template match="root">
				<xsl:apply-templates select="node">
					<xsl:with-param name="level" select="0"/>
				</xsl:apply-templates>
		</xsl:template>
		<xsl:template match="node">
		<xsl:param name="level" />
			<xsl:choose>
				<xsl:when test="@enabled = 1">
					<a href="{@url}">
					<xsl:attribute name="class">
						<xsl:if test="@breadcrumb=1"><xsl:text>Active</xsl:text></xsl:if>
						<xsl:if test="@breadcrumb=1 and @selected!=1"><xsl:text> Parent</xsl:text></xsl:if>
						 <xsl:text> Level</xsl:text><xsl:value-of select="$level" />
					</xsl:attribute>
						<xsl:value-of select="@text" />
					</a>
				</xsl:when>
				<xsl:otherwise>
					<span>
					<xsl:attribute name="class">
						<xsl:if test="@breadcrumb=1"><xsl:text>Active</xsl:text></xsl:if>
						<xsl:if test="@breadcrumb=1 and @selected!=1"><xsl:text> Parent</xsl:text></xsl:if>
						 <xsl:text> Level</xsl:text><xsl:value-of select="$level" />
					</xsl:attribute>
						<span><xsl:value-of select="@text" /></span>
					</span>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:if test="node">
					<xsl:apply-templates select="node">
						<xsl:with-param name="level" select="$level + 1" />
					</xsl:apply-templates>
			</xsl:if>
		</xsl:template>
</xsl:stylesheet>