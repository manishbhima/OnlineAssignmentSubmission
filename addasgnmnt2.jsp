<%@page import="java.io.*,java.sql.*,databaseconnection.*"%>
<%try{
		String sno=request.getParameter("sno");
		String subjct=request.getParameter("subjct");
		String date=request.getParameter("date");
		String q1=request.getParameter("q1");
		String q2=request.getParameter("q2");
		String q3=request.getParameter("q3");
		String q4=request.getParameter("q4");
		String q5=request.getParameter("q5");
		
		
				Connection con=databasecon.getconnection();
				Statement st=con.createStatement();
				
				PreparedStatement p=con.prepareStatement("insert into asignment values(?,?,?,?,?,?,?,?,?,?)");
				p.setString(1,sno);
				p.setString(2,subjct);
				p.setString(3,date);
				p.setString(4,q1);
				p.setString(5,q2);
				p.setString(6,q3);
				p.setString(7,q4);
				p.setString(8,q5);
				p.setString(9,session.getAttribute("factid").toString());
				p.setString(10,session.getAttribute("dept").toString());
				int i=p.executeUpdate();
				
				if(i>0){
					
			response.sendRedirect("addasgnmnt.jsp?msg=added");		
				}
				
		}catch(Exception e){
			e.printStackTrace();
		}
%>