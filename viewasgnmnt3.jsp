     <%@include file="fheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*"%>
	                 
                    
		
											 <%

											 if(request.getParameter("msg")!=null){
	out.print("<script>alert('Given marks Successfully')</script>"); 
}

if(request.getParameter("msg1")!=null){
	out.print("<script>alert('You already given marks to this question')</script>"); 
}
Connection con=databasecon.getconnection();
Statement s=con.createStatement();
Statement s1=con.createStatement();
Statement s2=con.createStatement();
String sno=request.getParameter("sno");
String rno=request.getParameter("rno");
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
		<td><h3>Questions:</h3></td></tr>
		<%
		ResultSet rst1=s1.executeQuery("select qtn from answers where sno='"+sno+"' and rno='"+rno+"' ");

while(rst1.next()){
	
	String qtn=rst1.getString(1);

	ResultSet rst2=s2.executeQuery("select "+qtn+" from asignment where sno='"+sno+"' ");

if(rst2.next()){	
	%>
	<tr><td><a href="viewasgnmnt4.jsp?sno=<%=sno%>&rno=<%=rno%>&qtn=<%=qtn%>"><%=rst2.getString(1)%></a><td></tr>
	
	<%}
	
}%>
	</table>

<%}%>



<br><br><br>
            <%@include file="footer.jsp"%> 