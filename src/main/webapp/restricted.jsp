<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manager Page</title>
</head>
<body>
<% if (session.getAttribute("username") == null && session.getAttribute("usertype").equals("manager")) 
	{
		response.sendRedirect("login.jsp");
	}
	%>
<% 

	String title = "Page only for Manager";
	String eng = "English";
	String mand = "Mandarin";
	String username = "UserName";
	String accounttype = "AccountType";
	String managerpg = "Manager Page";
	String logout = "LogOut";

%>





<%
 if (session.getAttribute("language").equals("mdr")){

	 	title = "登录页面";
	  	eng = "英语";
		mand = "普通话";
		logout = "登出";

 }
%>
<h1> <h1><%=title %></h1></h1>
<br> 

  <form action="<%=request.getContextPath()%>/language" method="post">
		<table style="with: 100%">
		<tr>
			<th>
			<INPUT TYPE="radio" NAME="language" VALUE="eng-rp" checked/><%=eng %>
			<br> 
	       	<th>
	       	<INPUT TYPE="radio" NAME="language" VALUE="mdr-rp"/><%=mand %>
	    </tr>
		</table>
		<INPUT TYPE="submit" VALUE="submit" />
		<br><br>
	</form>
	
<p><a href="logout.jsp"><%=logout%></a></p>
</body>
</html>