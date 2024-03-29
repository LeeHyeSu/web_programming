<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.ch07.*" %>
<jsp:useBean id="am" class="jspbook.ch07.AddrManager" scope="application" />
<%!
	public String addrField() {
		String str = "";
		
		str += "<tr align=center>";
		str += "<td width=100>이름</td>";
		str += "<td width=150>전화번호</td>";
		str += "<td width=200>이메일</td>";
		str += "<td width=50>성별</td>";
		str += "</tr>";
		
		return str;
	}

	public String addrInfo(AddrBean ab) {
		String str = "";
		
		str += "<tr align=center>";
		str += "<td>" + ab.getUsername() + "</td>";
		str += "<td>" + ab.getTel() + "</td>";
		str += "<td>" + ab.getEmail() + "</td>";
		str += "<td>" + ab.getSex() + "</td>";
		str += "</tr>";
		
		return str;
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ch07 : 주소록 그룹별 목록보기</title>
</head>
<body>
<div align=center>
<h2>주소록</h2>
<hr>
<a href="addr_form.jsp">주소추가</a><p>

<table border="1" width="500">
<caption>가족</caption>
<%
	out.println(addrField());
	for(AddrBean ab : am.getAddrList()) {
		if(ab.getGroup().equals("가족")) {
			out.println(addrInfo(ab));
		}
	}
%>
</table>
<p>

<table border="1" width="500">
<caption>친구</caption>
<%
	out.println(addrField());
	for(AddrBean ab : am.getAddrList()) {
		if(ab.getGroup().equals("친구")) {
			out.println(addrInfo(ab));
		}
	}
%>
</table>
<p>

<table border="1" width="500">
<caption>직장</caption>
<%
	out.println(addrField());
	for(AddrBean ab : am.getAddrList()) {
		if(ab.getGroup().equals("직장")) {
			out.println(addrInfo(ab));
		}
	}
%>
</table>
</div>
</body>
</html>