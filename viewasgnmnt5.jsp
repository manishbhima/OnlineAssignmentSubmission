<%@page import="java.io.*,java.sql.*,databaseconnection.*"%>
<%try{
		String sno=request.getParameter("sno");
		String qtn=request.getParameter("qtn");
		String rno=request.getParameter("rno");
		String marks=request.getParameter("marks");
		
		
		
				Connection con=databasecon.getconnection();
				Statement st=con.createStatement();
	PreparedStatement p=con.prepareStatement("update answers set marks='"+marks+"' where sno='"+sno+"'and qtn='"+qtn+"' and rno='"+rno+"'");
				int i=p.executeUpdate();
				
				if(i>0){
					
			response.sendRedirect("viewasgnmnt3.jsp?msg=done&sno="+sno+"&rno="+rno+" ");		
				}
				
		}catch(Exception e){
			e.printStackTrace();
		}
%>