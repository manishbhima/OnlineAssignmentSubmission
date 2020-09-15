     <%@include file="sheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*"%>
	                 
                    
		
											 <%


if(request.getParameter("msg")!=null){
	out.print("<script>alert('Assignment Added Successfully')</script>"); 
}

if(request.getParameter("msg2")!=null){
	out.print("<script>alert('Assignment Duedate expired')</script>"); 
}
Connection con=databasecon.getconnection();
Statement s=con.createStatement();

int sno=0;
ResultSet rst=s.executeQuery("select sno from asignment where dept='"+session.getAttribute("dept")+"'");

%>


	




<form  action="wrtasgnmnt2.jsp" method="post" >   
<center>
<h1>Write Assignment</h1>
<br><br>
	<table>
	<tr>
		<td><h3>Assignment</h3></td>
		<td><select name="sno" required>
			<option value=""> -- Select --
			<%
			while(rst.next()){
			
			%>
			<option value="<%=rst.getInt(1)%>"><%=rst.getInt(1)%>
			<%}%>
		</select></td>
	</tr>
	<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
	<tr><td><td><input type="submit" value="View" >
	</table>

</form>



<br><br><br>
            <%@include file="footer.jsp"%> 