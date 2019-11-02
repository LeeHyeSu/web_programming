<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.ch07.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="calc" class="jspbook.ch07.pr02.Calculator" scope="page" />
<jsp:setProperty name="calc" property="*" />
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>계산기 만들기</title>
</head>
<body>
	<table width="400" height="400" border="1" 
		bordercolor="#00BFFF" align="center" cellspacing="0">
		<tr height="50">
			<td colspan="2" bgcolor="#00BFFF" align="center">
			<b><font size="6" color="white">CalCuLaTor</font></b>
			</td>
		</tr>
		<tr align="center">
			<td width="250px"><img src="images/cal.jpg"></td>
			<td>
			<jsp:getProperty name="calc" property="op1" /><p>
			<jsp:getProperty name="calc" property="operator" /><p>
			<jsp:getProperty name="calc" property="op2" /><p>
			=<p>
			<%= calc.calc(calc.getOp1(), calc.getOp2(), calc.getOperator()) %>
			</td>
		</tr>
		<tr height="20">
			<td colspan="2" bgcolor="#00BFFF">&nbsp;</td>
		</tr>
	</table>
</body>
</html>