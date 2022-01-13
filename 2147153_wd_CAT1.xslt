<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<!-- TODO: Auto-generated template -->
		<html>
		<head>
		</head>
		<body>
		<h1 style="text-align:center">Employee Management System</h1>
		<table border="2" align="center">
		<tr>
		<th>Id</th>
		<th>Name</th>
		<th>Age</th>
		<th>Salary</th>
		<th>Email</th>
		<th>Mobile Number</th>
		<th>Designamtion</th>
				</tr>
		<xsl:for-each select="Company/Employee">
		<xsl:sort select="emp_id"></xsl:sort>
		<tr>
		<td>
		<xsl:value-of select="emp_id"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="emp_name"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="emp_age"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="emp_salary"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="emp_emailid"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="emp_phonenum"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="emp_designation"></xsl:value-of>
		</td>
		<td>
		<xsl:choose>
		    		<xsl:when test="emp_age&gt;50">Associate Project manager </xsl:when>
					<xsl:when test="emp_age&gt;'40' and emp_age&lt;'49'">Team Leader </xsl:when>
					<xsl:otherwise>Developer</xsl:otherwise>
		</xsl:choose>
		</td>
		</tr>
		</xsl:for-each>
		
		</table>
		</body>
		</html>
		
	</xsl:template>
</xsl:stylesheet>

