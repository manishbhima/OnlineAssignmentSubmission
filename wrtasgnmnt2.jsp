     <%@include file="sheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.Date,java.text.*"%>
	                 
                    


		
											 <%
											 if(request.getParameter("msg")!=null){
	out.print("<script>alert('Answerd Successfully')</script>"); 
}

if(request.getParameter("msg1")!=null){
	out.print("<script>alert('You already answerd to this question')</script>"); 
}

Connection con=databasecon.getconnection();
Statement s=con.createStatement();
String sno=request.getParameter("sno");



ResultSet rst=s.executeQuery("select *from asignment where sno='"+sno+"' ");

if(rst.next()){
	DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
Date date = new Date();
String dt=dateFormat.format(date);
String dt1=dt.replaceAll("-","/");


	String dt22=rst.getString("duedate");
	String dt2=dt22.replaceAll("-","/");

System.out.println("dt1="+dt1);

System.out.println("dt2="+dt2);
		SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
        Date date1 = sdf.parse(dt1);
        Date date2 = sdf.parse(dt2);
		sdf.format(date1);
		sdf.format(date2);
		if (date1.after(date2)) {
		
		response.sendRedirect("wrtasgnmnt.jsp?msg2=expired");
		}else{


%>


	




<form  action="wrtasgnmnt2.jsp" method="post" >   
<center>
<h1>Write Assignment</h1>
<br>
	<table>
	
		<tr><td>Assignment	:</td><td><%=rst.getString("sno")%></td></tr>
		<tr><td>Subject		:</td><td><%=rst.getString("subjt")%></td></tr>
		<tr><td>Due Date	:</td><td><%=rst.getString("duedate")%></td></tr>

	<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
<tr>
		<td><h3>Questions</h3></td></tr>
	<tr><td><a href="wrtasgnmnt3.jsp?sno=<%=sno%>&qtn=qtn1"><%=rst.getString("qtn1")%></a><td></tr>
	<tr><td><a href="wrtasgnmnt3.jsp?sno=<%=sno%>&qtn=qtn2"><%=rst.getString("qtn2")%></a><td></tr>
	<tr><td><a href="wrtasgnmnt3.jsp?sno=<%=sno%>&qtn=qtn3"><%=rst.getString("qtn3")%></a><td></tr>
	<tr><td><a href="wrtasgnmnt3.jsp?sno=<%=sno%>&qtn=qtn4"><%=rst.getString("qtn4")%></a><td></tr>
	<tr><td><a href="wrtasgnmnt3.jsp?sno=<%=sno%>&qtn=qtn5"><%=rst.getString("qtn5")%></a><td></tr>
	</table>

<%}}%>



<br><br><br>
            <%@include file="footer.jsp"%> 