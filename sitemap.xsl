<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
                xmlns:html="http://www.w3.org/TR/REC-html40"
                xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<html xmlns="http://www.w3.org/1999/xhtml">
			<head>
				<title>XML Sitemap - Sport999.online</title>
				<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
				<style type="text/css">
					body { font-family: 'Inter', sans-serif; background: #0d1117; color: #e0e0e0; margin: 0; padding: 40px; }
					h1 { color: #00c853; border-bottom: 2px solid #00c853; padding-bottom: 10px; }
					table { width: 100%; border-collapse: collapse; margin-top: 20px; background: rgba(30,30,30,0.6); }
					th { background: #00c853; color: #fff; text-align: left; padding: 12px; }
					td { padding: 10px; border-bottom: 1px solid #333; }
					tr:hover { background: rgba(0,200,83,0.1); }
					a { color: #2ecc71; text-decoration: none; }
					.count { font-weight: bold; color: #ff5722; }
				</style>
			</head>
			<body>
				<h1>Sport999.online - XML Sitemap</h1>
				<p>Total URLs in this sitemap: <span class="count"><xsl:value-of select="count(sitemap:urlset/sitemap:url)"/></span></p>
				<table>
					<tr>
						<th>URL</th>
						<th>Last Modified</th>
						<th>Change Frequency</th>
						<th>Priority</th>
					</tr>
					<xsl:for-each select="sitemap:urlset/sitemap:url">
						<tr>
							<td><a href="{sitemap:loc}"><xsl:value-of select="sitemap:loc"/></a></td>
							<td><xsl:value-of select="sitemap:lastmod"/></td>
							<td><xsl:value-of select="sitemap:changefreq"/></td>
							<td><xsl:value-of select="sitemap:priority"/></td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
