<%@page import="java.io.*,java.sql.*,databaseconnection.*"%>
<%try{
		String rno=request.getParameter("rno");
		String pwd=request.getParameter("pwd");
		
				Connection con=databasecon.getconnection();
				Statement st=con.createStatement();
				ResultSet rst=st.executeQuery("select *from student where rno='"+rno+"' and pwd='"+pwd+"' ");
				if(rst.next()){
				session.setAttribute("rno",rno);
				session.setAttribute("dept",rst.getString("dept"));
					
			response.sendRedirect("studenthome.jsp");		
				}
				else{
				response.sendRedirect("student.jsp?msg2=fail");	
				}
		}catch(Exception e){
			e.printStackTrace();
		}
%>