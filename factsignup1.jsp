<%@page import="java.io.*,java.sql.*,databaseconnection.*"%>
<%try{
		String name=request.getParameter("name");
		String factid=request.getParameter("factid");
		String pwd=request.getParameter("pwd");
		String email=request.getParameter("email");
		String dept=request.getParameter("dept");
		String cno=request.getParameter("mno");
		
		
				Connection con=databasecon.getconnection();
				Statement st=con.createStatement();
				ResultSet rst=st.executeQuery("select *from faculty where factid='"+factid+"'");
				if(!rst.next()){
				
				PreparedStatement p=con.prepareStatement("insert into faculty values(?,?,?,?,?,?)");
				p.setString(1,name);
				p.setString(2,factid);
				p.setString(3,pwd);
				p.setString(4,dept);
				p.setString(5,email);
				p.setString(6,cno);
				int i=p.executeUpdate();
		
			
	%>
	 <%
				
				if(i>0){
					
			response.sendRedirect("faculty.jsp?msg=added");		
				}
				}else{
				response.sendRedirect("factsignup.jsp?msg1=duplict");	
				}
		}catch(Exception e){
			e.printStackTrace();
		}
%>