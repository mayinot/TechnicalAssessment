<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@page import="net.maymadi.login.database.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Success</title>
</head>
<body>
	<% if (session.getAttribute("username") == null ) 
	{
		response.sendRedirect("login.jsp");
	}
	
	%>
	
	 <% 
	String title = "You have logined successfully";
	String name = "Name";
	String eng = "English";
	String mand = "Mandarin";
	String username = "UserName";
	String accounttype = "AccountType";
	String managerpg = "Manager Page";
	String logout = "LogOut";

%>





<%
 if (session.getAttribute("language").equals("mdr")){

	 	title ="您已登录成功";
	 	name = "登录页面";
	  	eng = "英语";
		mand = "普通话";
		username = "用户名";
		accounttype = "帐户类型";
		managerpg = "经理页面";
		logout = "登出";

 }
%>
 <div align="center">
  <h1><%=title %></h1>
  
  <form action="<%=request.getContextPath()%>/language" method="post">
		<table style="with: 100%">
		<tr>
			<th>
			<INPUT TYPE="radio" NAME="language" VALUE="eng-ls" checked/><%=eng %>
			<br> 
	       	<th>
	       	<INPUT TYPE="radio" NAME="language" VALUE="mdr-ls"/><%=mand %>
	    </tr>
		</table>
		<INPUT TYPE="submit" VALUE="submit" />
		<br><br>
	</form>
     <table style="with: 100%">
     	<tr>
	     <td><%=name%>: </td>
	     <td><%= session.getAttribute("name") %></td>
	    </tr>
	    <tr>
	     <td><%=username%>: </td>
	     <td><%= session.getAttribute("username") %></td>
	    </tr>
	    <tr>
	     <td><%=accounttype%>: </td>
	     <td><%= session.getAttribute("usertype") %></td>
	    </tr>
	    <tr>
	   <% if (session.getAttribute("username") != null && session.getAttribute("usertype").equals("manager" ) )
			{
			%>
			<td> <a href="<%="restricted.jsp"%>"> <%=managerpg%> </a> </td>
			
			<%
			}
			%>
			<td> <a href="logout.jsp"><%=logout%></a> </td>
	    </tr>
	   
   </table>
 </div>
</body>
</html>