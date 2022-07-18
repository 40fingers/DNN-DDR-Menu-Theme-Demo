<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" />
		<xsl:template match="/*">
			<xsl:apply-templates select="root" />
		</xsl:template>
		<xsl:template match="root">
				<div id="accordion">
					<xsl:apply-templates select="node">
						<xsl:with-param name="level" select="0"/>
					</xsl:apply-templates>
				</div>
		</xsl:template>
		<xsl:template match="node">
		<xsl:param name="level" />
			<xsl:if test="node">
				<h3>
					<span>
						<span><xsl:value-of select="@text" /></span>
					</span>
				</h3>
				<xsl:if test="node" >
					<div>
						<xsl:for-each select="node">
							<div>
													<xsl:choose>
							<xsl:when test="@enabled = 1">
								<a href="{@url}">
									<xsl:value-of select="@text" />
								</a>
							</xsl:when>
							<xsl:otherwise>
								<span>
									<span><xsl:value-of select="@text" /></span>
								</span>
							</xsl:otherwise>
						</xsl:choose>
							
							</div>
						</xsl:for-each>
					</div>
				</xsl:if>
			</xsl:if>
		</xsl:template>
</xsl:stylesheet>