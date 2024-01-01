<%@ page import="project.ConnectionProvider , java.sql.*" %>
<%
String email=session.getAttribute("email").toString();
String mobilenumber=request.getParameter("mobilenumber");
String password=request.getParameter("password");
int Check=0;
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from users where email='"+email+"' and password='"+password+"' ");
	while(rs.next())
	{
		Check=1;
		st.executeUpdate("update users set mobilenumber='"+mobilenumber+"' where email='"+email+"' ");
		response.sendRedirect("changeMobileNumber.jsp?msg=done");
	}
	if(Check==0)
	{
		response.sendRedirect("changeMobileNumber.jsp?msg=wrong");
	}
	
}
catch(Exception e)
{
	System.out.print(e);	
}
%>