     <%@include file="sheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*"%>
<head>
    <title></title>
    <script type="text/javascript" src="jquery.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $(".disable").bind("paste cut paste", function (e) {
                e.preventDefault();
                return false;
            });
        });
    </script>
</head>
	                 
                    
		
											 <%
Connection con=databasecon.getconnection();
Statement s=con.createStatement();
Statement s1=con.createStatement();

String sno=request.getParameter("sno");
String qtn=request.getParameter("qtn");

ResultSet rst1=s1.executeQuery("select  *from answers where sno='"+sno+"' and qtn='"+qtn+"' and rno='"+session.getAttribute("rno")+"' ");
if(rst1.next()){
response.sendRedirect("wrtasgnmnt2.jsp?msg1=answerd&sno="+sno+"");	

}else{

ResultSet rst=s.executeQuery("select  "+qtn+" from asignment where sno='"+sno+"'");
if(rst.next()){
%>

<form  action="wrtasgnmnt4.jsp" method="post" >   
<center>
<h1>Answering</h1>
<br><br>
	<table>
	
<tr>
		<td><h3>Question: </h3></td>
		<td> <%=rst.getString(1)%><input type="hidden" name="sno"  value="<%=sno%>">
		<input type="hidden" name="qtn" value="<%=qtn%>">
		</td>
	</tr>


<tr>
		<td><h3>Answer</h3></td>
		<td><textarea type="text" name="ans" class="disable" rows="10" cols="51" required ></textarea></td>
	</tr>

	
	<tr><td><td><input type="submit" value="Submit" >
	</table>

</form>

<%}
}%>


            <%@include file="footer.jsp"%> 