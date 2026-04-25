<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html"/>
<xsl:template match="/">
<html>
<head>
<title>Student</title>
<style>
table{
border-collapse:collapse;
width:50%;
}
th,td{
border:1px solid black;
padding:10px;
text-align:center;
}
th{
background:lightblue;
}
</style>
</head>
<body>
<h2>Students Records</h2>
<table border="1">
<tr>
<th>ID</th>
<th>Student</th>
<th>Course</th>
</tr>
<xsl:for-each select="students/student">
<tr>
<td><xsl:value-of select="id"/></td>
<td><xsl:value-of select="name"/></td>
<td><xsl:value-of select="course"/></td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>