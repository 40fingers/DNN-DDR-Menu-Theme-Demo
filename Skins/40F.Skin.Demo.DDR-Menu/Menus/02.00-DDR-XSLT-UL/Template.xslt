<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" />
		<xsl:template match="/*">
			<xsl:apply-templates select="root" />
		</xsl:template>
		<xsl:template match="root">
			<ul class="Level0">
				<xsl:apply-templates select="node">
				</xsl:apply-templates>
			</ul>
		</xsl:template>
		<xsl:template match="node">
		<xsl:param name="level" />
					<li>
						<xsl:choose>
							<xsl:when test="@enabled = 1">
								<a href="{@url}" target="{@target}">
									<xsl:value-of select="@text" />
								</a>
							</xsl:when>
							<xsl:otherwise>
								<span>
									<span><xsl:value-of select="@text" /></span>
								</span>
							</xsl:otherwise>
						</xsl:choose>
						<xsl:if test="node">
							<ul>
								<xsl:apply-templates select="node">
								</xsl:apply-templates>
							</ul>
						</xsl:if>
					</li>
		</xsl:template>
</xsl:stylesheet>