     <%@include file="fheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*"%>
	                 
                    
		
											 <%


if(request.getParameter("msg")!=null){
	out.print("<script>alert('Assignment Added Successfully')</script>"); 
}

Connection con=databasecon.getconnection();
Statement s=con.createStatement();

int sno=0;
ResultSet rst=s.executeQuery("select max(sno) from asignment");
if(rst.next()){
sno=rst.getInt(1);
sno++;

}

%>


	




<form  action="addasgnmnt2.jsp" method="post" >   
<center>
<h1>Add Assignment</h1>
<br><br>
	<table>
	<tr>
		<td><h3>Assignment</h3></td>
		<td><input type="text"  value=<%=sno%> name="sno"  readonly></td>
	</tr>
	<tr>
		<td><h3>Subject</h3></td>
		<td><input type="text"  name="subjct" required></td>
	</tr>

	<tr>
		<td><h3>Due Date</h3></td>
		<td><input type="date"  name="date" required style="width: 270px;"></td>
	</tr>


<tr>
		<td><h3>Question1</h3></td>
		<td><textarea name="q1" rows="2" cols="31" required></textarea></td>
	</tr>


<tr>
		<td><h3>Question2</h3></td>
		<td><textarea name="q2" rows="2" cols="31" required></textarea></td>
	</tr>

	<tr>
		<td><h3>Question3</h3></td>
		<td><textarea name="q3" rows="2" cols="31" required></textarea></td>
	</tr>

<tr>
		<td><h3>Question4</h3></td>
		<td><textarea name="q4" rows="2" cols="31" required></textarea></td>
	</tr>

<tr>
		<td><h3>Question5</h3></td>
		<td><textarea name="q5" rows="2" cols="31" required></textarea></td>
	</tr>



	<tr><td><td><input type="submit" value="Submit" >
	</table>

</form>




            <%@include file="footer.jsp"%> 