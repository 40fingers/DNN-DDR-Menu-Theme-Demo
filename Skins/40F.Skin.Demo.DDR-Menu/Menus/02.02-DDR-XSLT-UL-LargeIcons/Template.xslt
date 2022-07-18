<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" />
		<xsl:template match="/*">
			<xsl:apply-templates select="root" />
		</xsl:template>
		<xsl:template match="root">
			<ul class="Level0">
				<xsl:apply-templates select="node">
					<xsl:with-param name="level" select="0"/>
				</xsl:apply-templates>
			</ul>
		</xsl:template>
		<xsl:template match="node">
		<xsl:param name="level" />
					<li>
						<xsl:attribute name="class">
							<xsl:if test="@breadcrumb=1"><xsl:text>Active</xsl:text></xsl:if>
							<xsl:if test="@breadcrumb=1 and @selected!=1"><xsl:text> Parent</xsl:text></xsl:if>
							 <xsl:text> Level</xsl:text><xsl:value-of select="$level" />
						</xsl:attribute>
						<xsl:choose>
							<xsl:when test="@enabled = 1">
								<a href="{@url}" target="{@target}">
									<xsl:choose>
										<xsl:when test="@largeimage  !=''">
											<img class="IconLarge" src="{@largeimage }" title="{@title}" />
										</xsl:when>
										<xsl:otherwise>
											<xsl:attribute name="class">NoIcon</xsl:attribute>
										</xsl:otherwise>
									</xsl:choose>
									<xsl:value-of select="@text" />
								</a>
							</xsl:when>
							<xsl:otherwise>
								<span>
									<xsl:choose>
										<xsl:when test="@largeimage  !=''">
											<img class="IconLarge" src="{@largeimage }" title="{@title}" />
										</xsl:when>
										<xsl:otherwise>
											<xsl:attribute name="class">NoIcon</xsl:attribute>
										</xsl:otherwise>
									</xsl:choose>
									<xsl:value-of select="@text" />
								</span>
							</xsl:otherwise>
						</xsl:choose>
						<xsl:if test="node">
							<ul>
								<xsl:apply-templates select="node">
									<xsl:with-param name="level" select="$level + 1" />
								</xsl:apply-templates>
							</ul>
						</xsl:if>
					</li>
		</xsl:template>
</xsl:stylesheet>