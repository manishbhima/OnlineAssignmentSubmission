     <%@include file="sheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*"%>
	                 
                    
		
											 <%

											 if(request.getParameter("msg")!=null){
	out.print("<script>alert('Answerd Successfully')</script>"); 
}

if(request.getParameter("msg1")!=null){
	out.print("<script>alert('You already answerd to this question')</script>"); 
}
Connection con=databasecon.getconnection();
Statement s=con.createStatement();
Statement s1=con.createStatement();
String sno=request.getParameter("sno");
ResultSet rst=s.executeQuery("select *from asignment where sno="+sno+" ");

if(rst.next()){
%>


	




<form  action="wrtasgnmnt2.jsp" method="post" >   
<center>
<h1>View Assignment</h1>
<br>
	<table>
	
		<tr><td>Assignment	:</td><td><%=rst.getString("sno")%></td></tr>
		<tr><td>Subject		:</td><td><%=rst.getString("subjt")%></td></tr>
		<tr><td>Due Date	:</td><td><%=rst.getString("duedate")%></td></tr>

	<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
<tr>
		<td><h3>Student Roll No.s:</h3></td></tr>
		<%
		ResultSet rst1=s1.executeQuery("select distinct rno from answers where sno='"+sno+"' ");

while(rst1.next()){%>



	<tr><td><a href="viewasgnmnt3.jsp?sno=<%=sno%>&rno=<%=rst1.getString("rno")%>"><%=rst1.getString("rno")%></a><td></tr>
	
	<%}%>
	</table>

<%}%>



<br><br><br>
            <%@include file="footer.jsp"%> 