<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%

try{
	
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	String s = "create table users(name varchar(100), email varchar(100)primary key, mobileNumber bigint,securityQuestion varchar(200), answer varchar(200), password varchar(100), address varchar(500),city varchar(100), state varchar(100), country varchar(100))";
	String s1 = "create table product(id int, name varchar(200), category varchar(200), price int, active varchar(10))";
	String s2 = "create table cart(email varchar(100), product_id int, quantity int, price int, total int, address varchar(300), city varchar(100), state varchar(50), country varchar(100), mobileNumber bigint, orderDate varchar(100), deliveryDate varchar(100), paymentMethod varchar(100), transactionId varchar(100), status varchar(10))";
	String s3 = "create table message(id int AUTO_INCREMENT, email varchar(100), subject varchar(200), body varchar(1000), PRIMARY KEY(id))";
	//System.out.print(s);
	//System.out.println(s1);
	//System.out.println(s2);
	//st.execute(s);
	//st.execute(s1);
	st.execute(s3);
	System.out.println("Table created");
}

catch(Exception e){
	System.out.print(e);
}
%>