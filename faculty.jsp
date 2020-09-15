<%@ include file="header.jsp"%>


	                

<center>
					<table  cellspacing=20 ><tr><td>
	                  <%
                                                       
if(request.getParameter("msg")!=null){
	out.print("<script>alert('Registered Successfully,Login Here.')</script>"); 
}

if(request.getParameter("msg2")!=null){
	out.print("<script>alert('Invalid Credentials.')</script>"); 
}
  
                                               %>
											   </table>
											   




<h1><font size="" color="#6666ff" >Login Page for Faculty</h1></font>

<b>



<form method="post" action="factlgnck.jsp">
	<table  align="center" cellpadding=10><tr><td>

	<tr><td><input type="text" name="factid" required placeholder="Faculty Id"  size="25" autofocus><br>
		<tr><td><input type="password" name="pwd" required placeholder="Password" size="25"><br>

			<tr><td>		  <div class="form_settings"><input class="submit" type="submit"  value="Login" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="factsignup.jsp">Sign Up</a>
<tr><td>
</form>

</tr>
</table>						



<br><br><br></h1>
<%@ include file="footer.jsp"%>