<?xml version="1.0" encoding="UTF-8"?>
<!-- Full UL menu: combines 02.00 (UL), 02.01 (Classes), 02.02 (Icons / LargeIcons) and 02.03 (Ids) -->
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
						<!-- Classes: Active, Parent, LevelN, HasChildren / NoChildren -->
						<xsl:attribute name="class">
							<xsl:if test="@breadcrumb=1"><xsl:text>Active</xsl:text></xsl:if>
							<xsl:if test="@breadcrumb=1 and @selected!=1"><xsl:text> Parent</xsl:text></xsl:if>
							 <xsl:text> Level</xsl:text><xsl:value-of select="$level" />
							 <xsl:choose>
								<xsl:when test="node">
									<xsl:text> HasChildren</xsl:text>
								</xsl:when>
								<xsl:otherwise>
									<xsl:text> NoChildren</xsl:text>
								</xsl:otherwise>
							</xsl:choose>
						</xsl:attribute>
						<!-- Id: l{level}_{Page-Name} -->
						<xsl:attribute name="id">
							<xsl:text>l</xsl:text><xsl:value-of select="$level" /><xsl:text>_</xsl:text><xsl:value-of select="translate(@text, ' ','-')"/>
						</xsl:attribute>
						<xsl:choose>
							<xsl:when test="@enabled = 1">
								<a href="{@url}" target="{@target}">
									<xsl:call-template name="itemContent" />
								</a>
							</xsl:when>
							<xsl:otherwise>
								<span>
									<xsl:call-template name="itemContent" />
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
		<!-- Icons + text, shared by the link and the span (disabled page) -->
		<xsl:template name="itemContent">
			<xsl:if test="not(@icon != '') and not(@largeimage != '')">
				<xsl:attribute name="class">NoIcon</xsl:attribute>
			</xsl:if>
			<xsl:if test="@icon != ''">
				<img class="Icon" src="{@icon}" title="{@title}" />
			</xsl:if>
			<xsl:if test="@largeimage != ''">
				<img class="IconLarge" src="{@largeimage}" title="{@title}" />
			</xsl:if>
			<xsl:value-of select="@text" />
		</xsl:template>
</xsl:stylesheet>
