<html>

<head>
    <title>exam</title>

</head>

<body>

    <%@page import="java.sql.*" %>

        <%
	System.out.println("injsp");
	Class.forName("com.mysql.jdbc.Driver");
      
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306","root","");
System.out.println("connection established");
    PreparedStatement Stmt=con.prepareStatement("SELECT * from school.students");
    out.println("Statement loaded sucessfuly");
    Stmt.executeQuery();
    ResultSet rs=Stmt.getResultSet();
    out.println("query execute loaded sucessfully");
    String Name= null;
String Student ID=null;
String Email ID=null;
String Phone No= null;
String Select class=null;
String Select section=null;
String Select elective=null;
String Select activity=null;
	%>
            <table border='3'>
                <th>Name</th>
		<th>Student ID</th>
                <th>Email ID</th>
                <th>Phone No</th>
                <th>class</th>
                <th>section</th>
                <th>elective</th>
		<th>activity</th>
                <%    
while(rs.next())
    { 
Name=rs.getString(1);
Student ID=rs.getString(2);
Email ID=rs.getString(3);
Phone No=rs.getString(4);
Select class=rs.getString(5);
Select section=rs.getString(6);
Select elective=rs.getString(7);
Select activity=rs.getString(8);
%>

                    <tr>
                        <td>
                            <%=Name %>
                        </td>
                        <td>
                            <%=Student ID %>
                        </td>
                        <td>
                            <%=Email ID %>
                        </td>
                        <td>
                            <%=Phone No%>
                        </td>
                        <td>
                            <%=Select class %>
                        </td>
                        <td>
                            <%=Select section %>
                        </td>
			<td>
                            <%=Select elective %>
                        </td>
			<td>
                            <%=Select activity %>
                        </td>
                    </tr>



                    <%  }
    rs.close();Stmt.close();con.close();
    if(Name != null)
    out.println("Welcome "+Name);
     
    %>
            </table>

</body>

</html>