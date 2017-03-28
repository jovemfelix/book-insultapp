<%@page import="org.openshift.InsultGenerator"%>
<%@ page import="java.net.InetAddress"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insult Generator</title>
</head>
<body>
<%
out.println(new InsultGenerator().generateInsult());
%>

<center>
	<h1>The request is being answered by:</h1>
	<h2><font color="red">IP: <%=InetAddress.getLocalHost().getHostAddress()%></font></h2>
	<h2><font color="blue">HostName: <%=InetAddress.getLocalHost().getCanonicalHostName() %></font></h2>
        <h2><font color="green">Session ID: <%=request.getSession().getId() %></font></h2>
</center>
</body>
</html>