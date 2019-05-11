<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:G7="http://g7.xml.csie.mcu.edu.tw">
	<xsl:template match="G7:schedule">
		<html>
			<head>
				<style>
				</style>
			</head>
			<body>
				<h2>個人課程表</h2>
				<table>
					<tr>
						<td>課程名稱</td>
						<td>教室</td>
						<td>學分</td>
						<td>老師</td>
						<td>成績</td>
					</tr>
					<xsl:apply-templates select="G7:course"/>
				</table>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="G7:course">
		<tr>
			<td><xsl:value-of select="@id"/></td>
			<td><xsl:value-of select="@classroom"/></td>
			<td><xsl:value-of select="@credit"/></td>
			<td><xsl:value-of select="G7:teacher"/></td>
			<td><xsl:apply-templates select="G7:source"/></td>
		</tr>
	</xsl:template>
	<xsl:template match="G7:source">
		<xsl:value-of select="."/>
	</xsl:template>
</xsl:stylesheet>
