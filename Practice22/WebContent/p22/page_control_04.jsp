<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<%=request.getParameter("src") %>에서 전달된 내용입니다.<br>
page_control_04.jsp에서 출력합니다.
<hr>
넘겨받은 파라미터들<br>
<%
Enumeration<String> e = request.getParameterNames();
while(e.hasMoreElements()) {
	String s = e.nextElement();
	out.println(s + " : " + request.getParameter(s) + "<br>");
}
%>
<hr>
안녕하세요, <%=request.getParameter("username") %>님. 반갑습니다.
<hr>
</body>
</html>