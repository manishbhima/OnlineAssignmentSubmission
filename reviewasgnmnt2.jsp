     <%@include file="fheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*"%>
	                 
                    
		
											 <%

											 
Connection con=databasecon.getconnection();
Statement s=con.createStatement();
Statement s1=con.createStatement();
String sno=request.getParameter("sno");
ResultSet rst=s.executeQuery("select *from asignment where sno="+sno+" ");

if(rst.next()){
%>
<form  action="wrtasgnmnt2.jsp" method="post" >   
<center>
<h1>Review Assignment</h1>
<br>
	<table bgcolor="" cellpadding="5" cellspacing="5" width="825" border="0" align="center">
	<tr bgcolor="#6ce1a2"> 
              <td align="center"><font color="#110022"><strong><font size="" color="#fff">Assignment</font></strong></font></td>
			  <td align="center"><font color="#110022"><strong><font size="" color="#fff">Subject</font></strong></font></td>
			  <td align="center"><font color="#110022"><strong><font size="" color="#fff">Due Date</font></strong></font></td>
              <td align="center"> <font color="#110022"><strong><font size="" color="#fff">Roll No.</strong></font></td>
              <td align="center"><font color="#110022"><strong><font size="" color="#fff">Marks</strong></font></td>

	</tr>
		
		<%
		ResultSet rst1=s1.executeQuery("select distinct rno from answers where sno='"+sno+"' ");

while(rst1.next()){

	Statement s2=con.createStatement();

	ResultSet rst2=s2.executeQuery("SELECT SUM(marks) FROM answers WHERE sno='"+sno+"' AND rno='"+rst1.getString(1)+"' ");
String marks="";
if(rst2.next()){
marks=rst2.getString(1);
}
	%>



	<tr bgcolor="#d2d2d2"> 
              <td align="center"> <strong><font size="3" color="#6300C6"><%=rst.getString("sno")%></font></strong></td><td align="center"> <strong><font size="3" color="#6300C6"><%=rst.getString("subjt")%></td><td align="center"> <strong><font size="3" color="#6300C6"><%=rst.getString("duedate")%></td><td align="center"> <strong><font size="3" color="#6300C6"><%=rst1.getString(1)%></td><td align="center"> <strong><font size="3" color="#6300C6"><%=marks%></td></tr>
	
	<%}%>
	</table>

<%}%>



<br><br><br>
            <%@include file="footer.jsp"%> 