<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" />
		<xsl:template match="/*">
			<xsl:apply-templates select="root" />
		</xsl:template>
		<xsl:template match="root">
			<div class="Level0">
				<xsl:apply-templates select="node">
					<xsl:with-param name="level" select="0"/>
				</xsl:apply-templates>
			</div>
		</xsl:template>
		<xsl:template match="node">
			<xsl:param name="level" />

					<xsl:choose>
						<xsl:when test="not($level > 5)">
							<xsl:element name="h{$level +1}">
								<xsl:call-template name="detail">
									<xsl:with-param name="node" select="." />
									<xsl:with-param name="level" select="$level" />
								</xsl:call-template >
							</xsl:element>
						</xsl:when>
						<xsl:when test="$level > 5">
							<xsl:element name="p">
								<xsl:call-template name="detail">
									<xsl:with-param name="node" select="." />
									<xsl:with-param name="level" select="$level" />
								</xsl:call-template >
							</xsl:element>
						</xsl:when>
					</xsl:choose>
						<xsl:if test="node">
								<xsl:apply-templates select="node">
									<xsl:with-param name="level" select="$level + 1" />
								</xsl:apply-templates>
						</xsl:if>

		</xsl:template>
		
		<!-- Detail tempalte -->
		<xsl:template name="detail">
			<xsl:param name="level" />
				<xsl:choose>
					<xsl:when test="@enabled = 1">
						<a href="{@url}">
						<xsl:attribute name="class">
							<xsl:if test="@breadcrumb=1"><xsl:text>Active</xsl:text></xsl:if>
							<xsl:if test="@breadcrumb=1 and @selected!=1"><xsl:text> Parent</xsl:text></xsl:if>
							 <xsl:text> Level</xsl:text><xsl:value-of select="$level" />
						</xsl:attribute>
							<xsl:value-of select="$level +1" />. <xsl:value-of select="@text" />
						</a>
					</xsl:when>
					<xsl:otherwise>
						<span>
						<xsl:attribute name="class">
							<xsl:if test="@breadcrumb=1"><xsl:text>Active</xsl:text></xsl:if>
							<xsl:if test="@breadcrumb=1 and @selected!=1"><xsl:text> Parent</xsl:text></xsl:if>
							 <xsl:text> Level</xsl:text><xsl:value-of select="$level" />
						</xsl:attribute>
							<span><xsl:value-of select="$level +1" />. <xsl:value-of select="@text" /></span>
						</span>
					</xsl:otherwise>
				</xsl:choose>
		</xsl:template>
		
</xsl:stylesheet>