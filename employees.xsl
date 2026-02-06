<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
        <head>
            <title>Employee Details</title>
            <style>
                table {
                    border-collapse: collapse;
                    width: 80%;
                    margin: 20px auto;
                    font-family: Arial;
                }
                th, td {
                    border: 1px solid black;
                    padding: 8px;
                }
                th {
                    background-color: #4CAF50;
                    color: white;
                }
            </style>
        </head>

        <body>
            <h2 align="center">Employee Information</h2>

            <table>
                <tr>
                    <th>Employee ID</th>
                    <th>Name</th>
                    <th>Department</th>
                    <th>Designation</th>
                    <th>Salary</th>
                    <th>Email</th>
                </tr>

                <xsl:for-each select="employees/employee">
                    <tr>
                        <td><xsl:value-of select="@empId"/></td>
                        <td><xsl:value-of select="name"/></td>
                        <td><xsl:value-of select="department"/></td>
                        <td><xsl:value-of select="designation"/></td>
                        <td><xsl:value-of select="salary"/></td>
                        <td><xsl:value-of select="email"/></td>
                    </tr>
                </xsl:for-each>

            </table>
        </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
