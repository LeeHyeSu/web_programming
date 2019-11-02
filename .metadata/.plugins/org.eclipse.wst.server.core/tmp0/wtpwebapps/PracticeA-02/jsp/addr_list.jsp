<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.ch07.*" %>
<jsp:useBean id="am" class="jspbook.ch07.AddrManager" scope="application" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ch07 : 주소록 전체 목록보기</title>
</head>
<body>
<div align="center">
<h2>주소록</h2>
<hr>
<a href="addr_form.jsp">주소추가</a><p>
<table border="1" width="550">
<tr align="center">
<td width="100">이름</td>
<td width="150">전화번호</td>
<td width="200">이메일</td>
<td width="50">성별</td>
<td width="50">그룹</td>
</tr>
<%
	for(AddrBean ab : am.getAddrList()) {
%>
	<tr align="center">
	<td><%=ab.getUsername() %></td>
	<td><%=ab.getTel() %></td>
	<td><%=ab.getEmail() %></td>
	<td><%=ab.getSex() %></td>
	<td><%=ab.getGroup() %></td>
	</tr>
<%
	}
%>
</table>
</div>
</body>
</html>