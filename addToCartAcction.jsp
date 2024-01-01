<%@ page import="project.ConnectionProvider , java.sql.*" %>

<% 
String email=session.getAttribute("email").toString();
String procduct_id =request.getParameter("id");
int quantity=1;
int price=0;
int total=0;
int cart_total=0;

int z=0;
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from product where id='"+procduct_id+"'");
	System.out.println("checking-----------------------"+ rs);
	while(rs.next())
	{
		System.out.println("checking11111-----------------------");
		price=rs.getInt(4);
		total=price;
	}
	ResultSet rs1=st.executeQuery("select * from cart where procduct_id='"+procduct_id+"' and email='"+email+"' and address is NULL");
	System.out.println("checking22222221-----------------------");
	while(rs1.next())
	{
		System.out.println("checki333333333331-----------------------");
		cart_total=rs1.getInt(5);
		cart_total=cart_total+total;
		quantity=rs1.getInt(3);
		quantity=quantity+1;
		z=1;
		System.out.println("checking444444444-----------------------");
	}
	if(z==1)
	{
		st.executeUpdate("update cart set total='"+cart_total+"' , quantity='"+quantity+"' where procduct_id='"+procduct_id+"' and email='"+email+"' and address is NULL");
		response.sendRedirect("home.jsp?msg=exist");
		System.out.println("checking55555555555551-----------------------");
	
	}
	if(z==0)
	{
		PreparedStatement ps=con.prepareStatement("insert into cart(email,procduct_id,quantity,price,total) values(?,?,?,?,?)");
		ps.setString(1, email);
		ps.setString(2, procduct_id);
		ps.setInt(3, quantity);
		ps.setInt(4, price);
		ps.setInt(5, total);
		ps.executeUpdate();
		response.sendRedirect("home.jsp?msg=added");
	}
}
catch(Exception e)
{
	response.sendRedirect("home.jsp?msg=invalid");
	System.out.println(e);
}
%>