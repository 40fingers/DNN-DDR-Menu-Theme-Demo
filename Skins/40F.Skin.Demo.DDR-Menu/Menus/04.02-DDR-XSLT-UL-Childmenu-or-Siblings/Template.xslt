<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" />
		<xsl:template match="/*">
			<xsl:apply-templates select="root" />
		</xsl:template>
		
		
		<xsl:template match="root">
			<ul class="Root">
				<xsl:apply-templates select="node">
					<xsl:with-param name="level" select="0"/>
					<xsl:with-param name="NoChildren">
						<xsl:call-template name="NoChildren"/>
					</xsl:with-param>
				</xsl:apply-templates>
			</ul>
		</xsl:template>
		
		<xsl:template match="node">
		
			<xsl:param name="level" />
			<xsl:param name="NoChildren" />
			
			<xsl:choose>
				<xsl:when test="$NoChildren='true'">
						<!-- Render Siblings as Active page does not have Children-->
						<li>
							<xsl:attribute name="class">
								<xsl:if test="@breadcrumb=1"><xsl:text>Active</xsl:text></xsl:if>
								<xsl:if test="@breadcrumb=1 and @selected!=1"><xsl:text> Parent</xsl:text></xsl:if>
							</xsl:attribute>
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
						</li>
				</xsl:when>
				<xsl:otherwise>
					<!-- Render Children of Active page-->
						<xsl:if test="@breadcrumb=1">
							<xsl:for-each select="node">
								<li>
									<xsl:attribute name="class">
										<xsl:if test="@breadcrumb=1"><xsl:text>Active</xsl:text></xsl:if>
										<xsl:if test="@breadcrumb=1 and @selected!=1"><xsl:text> Parent</xsl:text></xsl:if>
									</xsl:attribute>
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
								</li>
							
							</xsl:for-each>
						</xsl:if >
				</xsl:otherwise>
			</xsl:choose>

		</xsl:template>
		
		
		 <xsl:template name="NoChildren">
			<!-- If the Active page has no children -->
			<xsl:for-each select='/Root/root/node'>
				<xsl:if test="@selected=1">
					<xsl:if test="not(node)">
						<xsl:text>true</xsl:text>
					</xsl:if>
				</xsl:if>
			</xsl:for-each>
		 </xsl:template>
		
</xsl:stylesheet>