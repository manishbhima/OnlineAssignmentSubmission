<%@ include file="header.jsp"%>
<script language="javascript"> 
function checkPassword() { 
    if (document.reg.pwd.value != document.reg.pwd2.value) { 
        alert ('The passwords do not match!');
        return false; 
    } 
} 
function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;

}
function enableRegisterButton()
{
	if(document.getElementById("name").value != "" && document.getElementById("lname").value != "" && document.getElementById("addr").value != "" && document.getElementById("city").value != "" && document.getElementById("state").value != "" && document.getElementById("zip").value != "" && document.getElementById("email").value != "" && document.getElementById("pwd").value != "" && document.getElementById("pwd2").value != "")
	{ 
		 
		document.getElementById("register").disabled = false;
	
	}
	else
	{
		
		document.getElementById("register").disabled = true;
	
	}
}
function validate(email) {

            var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
            //var address = document.getElementById[email].value;
            if (reg.test(email) == false) 
            {
                alert('Invalid Email Address');
                return (false);
            }
 }

</script>
</head>
<body>
<!--
This is a free CSS template provided by templatemo.com
-->
<center>
<table align="center">
                
    
              <tr> 
                <td colspan="2" align="center"><font size="2"><b> 
                 
				  
				  <%
                                         if(request.getParameter("msg1")!=null){
	out.print("<script>alert('Roll No. already exists')</script>"); 
}
              
													   
													   
													   %>
				  </b></font></td>
              </tr>
</table>
<h2>Student Register Here</h3></h2>
 <form name="reg" action="stdntsignup1.jsp" method="post"    >

 
             <table align="center" cellpadding="5" cellspacing="5" width="400">
              <tr> 
                <td><font size="+1" color=#006666><strong>Name</strong>*</font><br>
                <input type="text" name="name"  style="width: 250px;" required></td>
				  </tr>
			  </TABLE>
			 
			<table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td><font size="+1"color=#006666><strong>Roll No.</strong>*</font>
				<br>
				<input type="text" name="rno" style="width: 250px;"	 required>
			</tr>
              <tr> 
			
			 <td><font size="+1"color=#006666><strong>Password</strong>*</font><br>
			<input type="password" name="pwd"  style="width: 250px;" required	 >
			  <tr>
			   <tr> 
			
			 <td><font size="+1"color=#006666><strong>Department</strong>*</font><br>
			<select name="dept" style="width: 250px;" required>
				<option value=""> -- Select --
				<option value="CSE">CSE
				<option value="ECE">ECE
				<option value="EEE">EEE
				<option value="Civil">Civil
				<option value="Mech">Mech
			</select>
               </table>
			
			

				 
				 
				 <table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td><font size="+1"color=#006666><strong>Email</strong>*</font>
				<br>
				<input type="email" name="email" id="email"  style="width: 250px;"	 required>
				
				</tr>
               </table>

			   	<table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td>
				<font size="+1"color=#006666><strong>Mobile No.</strong>*</font>
				<br>
				<input type="tel"  name="mno" style="width: 250px;"	pattern="[0-9]{10,10}" >
              
			</tr>
             
			  <tr>
               </table>
			


			   	 

			 	 <table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td>
				<input type="submit" Value="Register" id = "register" name = "register" >
				
				<td>
				
				
				<input type="reset" value="   Reset   ">
              </tr>
               </table>
			   <center>
			  
 
 </form> 
 
<br><br><br><br><br>
<!-- ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc -->
       <%@ include file="footer.jsp"%>