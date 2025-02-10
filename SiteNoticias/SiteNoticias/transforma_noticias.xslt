<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">

		<xsl:variable name="firstNewItem" select="true()" />

		<xsl:for-each select="/rss/channel/item">
			<xsl:if test="(position() &lt; 21)">

				
				
				<div class="post">
					<p class="details1">
						<xsl:value-of select="pubDate" disable-output-escaping="yes"/>
						<a href="{link}">
							<xsl:if test="position() = 1">**NEW**</xsl:if>
							<xsl:value-of select="category" disable-output-escaping="yes"/> 
							<xsl:if test="category = 'Mundo'">
								<i class="fas fa-globe-europe"></i>
							</xsl:if>
							<xsl:if test="category = 'Política'">
								<i class="fas fa-vote-yea"></i>
							</xsl:if>
							<xsl:if test="category = 'Economia'">
								<i class="fas fa-money-bill"></i>
							</xsl:if>
							<xsl:if test="category = 'Desporto'">
								<i class="fas fa-futbol"></i>
							</xsl:if>
							<xsl:if test="category = 'Fama'">
								<i class="far fa-star"></i>
							</xsl:if>
							<xsl:if test="category = 'País'">
								<i class="fas fa-flag"></i>
							</xsl:if>
							<xsl:if test="category = 'Tech'">
								<i class="fas fa-laptop"></i>
							</xsl:if>
							<xsl:if test="category = 'Cultura'">
								<i class="fas fa-paint-brush"></i>
							</xsl:if>
							<xsl:if test="category = 'Lifestyle'">
								<i class="fas fa-leaf"></i>
							</xsl:if>
							<xsl:if test="category = 'Casa'">
								<i class="fas fa-home"></i>
							</xsl:if>
							<xsl:if test="category = 'Auto'">
								<i class="fas fa-car"></i>
							</xsl:if>
							
						</a>
					</p>
					<div class="buffer">
						<div class="content">
							<a href="{link}">
								<img src="{enclosure/@url}" />
							</a>
							<h2>
								<a href="#">
									<xsl:value-of select="title" disable-output-escaping="yes"/>
								</a>
							</h2>
							<p>
								<xsl:value-of select="description" disable-output-escaping="yes"/>
							</p>
						</div>
						<p class="details2">
							<a href="#">8 Comments</a> / <a href="#">Read More</a>
						</p>
					</div>
				</div>
			</xsl:if>
		</xsl:for-each>
		
			
		
		
    </xsl:template>
</xsl:stylesheet>
