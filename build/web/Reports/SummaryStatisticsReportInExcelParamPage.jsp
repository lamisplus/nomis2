<%-- 
    Document   : SummaryStatisticsReportInExcelParamPage
    Created on : Sep 26, 2014, 11:18:05 PM
    Author     : smomoh
--%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<logic:notPresent name="USER">
    <logic:forward name="login" />
</logic:notPresent>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Summary statistics report as excel</title>
        <link href="images/kidmap2.css" rel="stylesheet" type="text/css" />
        <style type="text/css">
<!--
a {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	color: #333333;
	font-weight: bold;
}
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color: #000000;
}
a:hover {
	text-decoration: underline;
	color: #0075B6;
}
a:active {
	text-decoration: none;
	color: #000000;
}
.title
{
  color: #FFFFFF;
  font-weight: bold;
}
.orglabel
{
    color: #FFFFFF;
}

-->
</style>
        <script language="javascript">
            function setActionName(val)
            {
                document.getElementById("actionName").value=val
            }

        </script>
    </head>
    <body>
        <center>
            <html:form action="/dataExportToExcelAction" method="post">
                <html:hidden property="actionName" styleId="actionName"/>

                <div styleId="sumstatDivPerMth" class="paramPage" style="height:auto; width: 400px; margin-top: 100px;">
        <span>
        <center>
        <table >
            <tr><td colspan="4" class="title" align="center">Export to excel</td></tr>
            <tr><td colspan="4" class="title" align="center"> </td></tr>
            <tr><td class="orglabel" align="left" style="width: 70px;">State </td><td colspan="3">
                     <html:select property="state" styleId="state" style="width: 290px;" onchange="setActionName('lga'); forms[0].submit()"><html:option value="All">All</html:option>
                        <logic:iterate id="stateObj" name="states">
                        <html:option value="${stateObj.state_code}">${stateObj.name}</html:option>
                        </logic:iterate>
                    </html:select> </td></tr>
            <tr><td class="orglabel" align="left">LGA </td><td colspan="3"><html:select property="lga" styleId="lga" style="width: 290px;" onchange="setActionName('cbo'); forms[0].submit()">
                        <html:option value="All">All</html:option>
                        <logic:iterate id="lgaObj" name="dhislgaList">
                        <html:option value="${lgaObj.lga_code}">${lgaObj.lga_name}</html:option>
                        </logic:iterate>
                        </html:select> </td></tr>
            <tr><td class="orglabel" align="left">CBO </td><td colspan="3">
                    <html:select property="cbo" styleId="cbo" style="width: 290px;" >
                        <html:option value="All">All</html:option>
                    <logic:iterate id="cboObj" name="dhiscboList">
                        <html:option value="${cboObj.orgCode}">${cboObj.orgName}</html:option>
                        </logic:iterate>
                    </html:select> </td>
            </tr>
            
            <tr><td class="orglabel" align="left">Period</td>
                <td colspan="2">
                    <html:select property="month" styleId="month" style="width: 70px;">
                        <html:option value="01">January </html:option>
                        <html:option value="02">February </html:option>
                        <html:option value="03">March </html:option>
                        <html:option value="04">April </html:option>
                        <html:option value="05">May</html:option>
                        <html:option value="06">June</html:option>
                        <html:option value="07">July </html:option>
                        <html:option value="08">August </html:option>
                        <html:option value="09">September </html:option>
                        <html:option value="10">October </html:option>
                        <html:option value="11">November </html:option>
                        <html:option value="12">December</html:option>
                    </html:select>
                    <html:select property="year" styleId="year" style="width: 55px;">
                            <html:option value="2008">2008 </html:option>
                            <html:option value="2009">2009 </html:option>
                            <html:option value="2010">2010 </html:option>
                            <html:option value="2011">2011 </html:option>
                            <html:option value="2012">2012 </html:option>
                            <html:option value="2013">2013 </html:option>
                            <html:option value="2014">2014 </html:option>
                            <html:option value="2015">2015 </html:option>
                            <html:option value="2016">2016 </html:option>
                            <html:option value="2017">2017 </html:option>
                            <html:option value="2018">2018 </html:option>
                            <html:option value="2019">2019 </html:option>
                            <html:option value="2020">2020 </html:option>
                        </html:select>


            To

                    <html:select property="month2" styleId="month2" style="width: 70px;">
                        <html:option value="01">January </html:option>
                        <html:option value="02">February </html:option>
                        <html:option value="03">March </html:option>
                        <html:option value="04">April </html:option>
                        <html:option value="05">May</html:option>
                        <html:option value="06">June</html:option>
                        <html:option value="07">July </html:option>
                        <html:option value="08">August </html:option>
                        <html:option value="09">September </html:option>
                        <html:option value="10">October </html:option>
                        <html:option value="11">November </html:option>
                        <html:option value="12">December</html:option>
                    </html:select>
                    <html:select property="year2" styleId="year2" style="width: 55px;">
                            <html:option value="2008">2008 </html:option>
                            <html:option value="2009">2009 </html:option>
                            <html:option value="2010">2010 </html:option>
                            <html:option value="2011">2011 </html:option>
                            <html:option value="2012">2012 </html:option>
                            <html:option value="2013">2013 </html:option>
                            <html:option value="2014">2014 </html:option>
                            <html:option value="2015">2015 </html:option>
                            <html:option value="2016">2016 </html:option>
                            <html:option value="2017">2017 </html:option>
                            <html:option value="2018">2018 </html:option>
                            <html:option value="2019">2019 </html:option>
                            <html:option value="2020">2020 </html:option>
                        </html:select>
                </td></tr>
            <tr><td colspan="3"> </td></tr>
            <tr><td colspan="3" align="center">
                    <html:submit property="excelExportBtn" value="Generate report" onclick="setActionName('generateReportInExcel')"/>
                </td></tr>
        </table>
        </center>
        </span>
    </div>

            </html:form>
        </center>
    </body>
</html>

