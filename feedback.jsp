<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%> 
<%@ page import="java.sql.*, java.util.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Online Book Store</title>
    <link rel="stylesheet" href="STATIC/CSS/style.css">
    <link rel="stylesheet" href="STATIC/CSS/form.css">
</head>
<body>
<h1 id="heading">Online Book Store <img height="100" width="100" src="ASSETS/logo.jpg"></h1>

    <table>
        <tr>
            <td class="nav-icon" width="400">
                <a href="/onlineBookStore/index.html">
                    <div style="height:100%;width:100%">
                        HOME
                    </div>
                </a>
            </td>
            <td class="nav-icon" width="400">
                <a href="/onlineBookStore/form.html">
                    <div style="height:100%;width:100%">
                        FIND BOOK
                    </div>
                </a>
            </td>
            <td class="nav-icon" width="400">
                <a href="/onlineBookStore/books.html">
                    <div style="height:100%;width:100%">
                        BOOKS
                    </div>
                </a>
            </td>
            <td class="nav-icon" width="400">
                <a href="/onlineBookStore/about.html">
                    <div style="height:100%;width:100%">
                        ABOUT
                    </div>
                </a>
            </td>

        </tr>

    </table>

    <!-- here comes the JSP to record the data -->

    <%
    
        String name = request.getParameter("name");
        
        String email = request.getParameter("email");

        String mobile = request.getParameter("mobile");

        String feedback = request.getParameter("feedback");
        
        

        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineBookStore","root","Divyank@97");
            Statement st = conn.createStatement();
        
            int i = st.executeUpdate("INSERT INTO feedback(name,email,mobile,feedback) VALUES ('"+name+"','"+email+"','"+mobile+"','"+feedback+"')");
        
        }catch(Exception e){
            out.print(e);
        }

    %>

    <h1 align="center">FEEDBACK RECORDED</h1>


</body>
</html>