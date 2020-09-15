<%@page import="java.io.*,java.sql.*,databaseconnection.*"%>
<%try{
		String factid=request.getParameter("factid");
		String pwd=request.getParameter("pwd");
		
				Connection con=databasecon.getconnection();
				Statement st=con.createStatement();
				ResultSet rst=st.executeQuery("select *from faculty where factid='"+factid+"' and pwd='"+pwd+"' ");
				if(rst.next()){
				session.setAttribute("factid",factid);
				session.setAttribute("dept",rst.getString("dept"));
					
			response.sendRedirect("facthome.jsp");		
				}
				else{
				response.sendRedirect("faculty.jsp?msg2=fail");	
				}
		}catch(Exception e){
			e.printStackTrace();
		}
%>