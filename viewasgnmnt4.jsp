     <%@include file="fheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*"%>
	                 
                    
		
											 <%String ans="";
Connection con=databasecon.getconnection();
Statement s=con.createStatement();
Statement s1=con.createStatement();

String sno=request.getParameter("sno");
String qtn=request.getParameter("qtn");
String rno=request.getParameter("rno");

ResultSet rst1=s1.executeQuery("select  *from answers where sno='"+sno+"' and qtn='"+qtn+"' and rno='"+rno+"' and marks!=0 ");
if(rst1.next()){
response.sendRedirect("viewasgnmnt3.jsp?msg1=answerd&sno="+sno+"&rno="+rno+" ");	

}else{

Statement s2=con.createStatement();

ResultSet rst2=s2.executeQuery("select  ans from answers where sno='"+sno+"' and qtn='"+qtn+"' and rno='"+rno+"' ");
if(rst2.next()){

ans=rst2.getString(1);
}
ResultSet rst=s.executeQuery("select  "+qtn+" from asignment where sno='"+sno+"'");
if(rst.next()){
%>

<form  action="viewasgnmnt5.jsp" method="post" >   
<center>
<h1>Answered</h1>
<br><br>
	<table>
	
<tr>
		<td><h3>Question: </h3></td>
		<td> <%=rst.getString(1)%><input type="hidden" name="sno" value="<%=sno%>">
		<input type="hidden" name="qtn" value="<%=qtn%>"><input type="hidden" name="rno" value=<%=rno%>>
		</td>
	</tr>


<tr>
		<td><h3>Answer</h3></td>
		<td><textarea name="ans" rows="10" cols="51" readonly ><%=ans%></textarea></td>
	</tr>

	<tr><td><h3>Marks</h3></td><td><select name="marks">
	<option value="1">1</option>
	<option value="2">2</option>
	<option value="3">3</option>
	<option value="4">4</option>
	<option value="5">5</option>
	<option value="6">6</option>
	<option value="7">7</option>
	<option value="8">8</option>
	<option value="9">9</option>
	<option value="10">10</option>
</select></td></tr>
	
	<tr><td><td><input type="submit" value="Submit" >
	</table>

</form>

<%}
}%>


            <%@include file="footer.jsp"%> 