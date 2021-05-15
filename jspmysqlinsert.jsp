<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
          integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
      <link rel="stylesheet" media="screen" href="https://fontlibrary.org//face/rebecca" type="text/css"/>

    <style>

    body {
      background-color: rgba(133, 133, 173,0.8);
    }

    </style>

    <title>THANK YOU</title>
  </head>

  <body>

    

    <%@page import="java.sql.*" %>

        <%


	System.out.println("injsp");
	Class.forName("com.mysql.jdbc.Driver");

      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306","root","");


System.out.println("connection established");

		String t1=request.getParameter("Name");
		String t2 = request.getParameter("Student ID");
		String  t3 =request.getParameter("Email ID");
                String  t4 =request.getParameter("Phone No");
                String  t5 =request.getParameter("Select class");
                String  t6 =request.getParameter("Select section");
                String  t7 =request.getParameter("Select elective");
                String  t8 =request.getParameter("Select activity");

			String query ="insert into school.students values (?,?,?,?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(query);

			ps.setString(1, t1);
			System.out.println("name entered");
			ps.setString(2, t2);
				System.out.println("name entered");
			ps.setString(3, t3);
			ps.setString(4, t4);
			System.out.println("name entered");
                        ps.setString(5, t5);
			System.out.println("name entered");
                        ps.setString(6, t6);
			System.out.println("name entered");
			ps.setString(7, t7);
			System.out.println("name entered");
			ps.setString(8, t8);
			System.out.println("name entered");
			int i=ps.executeUpdate();
//con.commit();
			System.out.println("updated");

			ps.close();
		//st.close();


   con.close();
    

    %>





<br>
<br>

      <center>
        <img src="https://tse1.mm.bing.net/th?id=OIP.qPZxaCWePpu9Xv2x55C6MAAAAA&pid=Api&P=0&w=180&h=155"
              style="border: 5px solid black;margin: 0px 15px 15px 15px; " width="400" height="230"  alt="">
              <br>
 <h1 style=" font-size:85px ; font-family: 'GreatVibesRegular';
   font-weight: normal;
   font-style: normal;">Thank You!</h1>
 <p style=" font-size:25px "> Registered successfully
 <br> </p>
 <a class="btn btn-dark btn-lg" href="minor_project.html" role="button">Back to Home</a>
 </center>




    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
              integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
         integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
         integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
          integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
          integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
    -->

  </body>
</html>
