<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>

 <% 
 if (session.getAttribute("language") == null) {
	 session.setAttribute("language", "eng");
 }
	String title = "Login Page";
	String eng = "English";
	String mand = "Mandarin";
	String username = "UserName";
	String password = "Password";
	String submit = "Submit";

%>





<%
 if (session.getAttribute("language").equals("mdr")){

	 	title = "登录页面";
	  	eng = "英语";
		mand = "普通话";
		username = "用户名";
		password = "密码";
		submit = "提交";

 }
%>

 <div align="center">
 


  <h1> <%=title %></h1>
  <form action="<%=request.getContextPath()%>/language" method="post">
		<table style="with: 100%">
		<tr>
			<th>
			<INPUT TYPE="radio" NAME="language" VALUE="eng" checked/><%=eng %>
			<br> 
	       	<th>
	       	<INPUT TYPE="radio" NAME="language" VALUE="mdr"/><%=mand %>
	    </tr>
		</table>
		<INPUT TYPE="submit" VALUE="submit" />
		<br><br>
	</form>
  
  <form action="<%=request.getContextPath()%>/login" method="post">
   <table style="with: 100%">
    <tr>
     <td><%=username %></td>
     <td><input type="text" name="username" /></td>
    </tr>
    <tr>
     <td><%=password %></td>
     <td><input type="password" name="password" /></td>
    </tr>
   </table>
   <input type="submit" value="<%=submit %>" />
   <%
   if(session.getAttribute("login-error") != null){
   %>
   <p style="color:red;"> <%=session.getAttribute("login-error") %></p>
   <%} %>
  </form>
 </div>
 
 
</body>
</html>