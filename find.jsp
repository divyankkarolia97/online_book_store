<!DOCTYPE html>
<html lang="en">
<head>
        <meta charset="UTF-8">
        <title>Online Book Store</title>
</head>
<body>
        <h1>Online Book Store <img height="100" width="100" src="ASSETS/logo.jpg"></h1>
        <ul>
        <li><p><b>Author:</b>
                <%= request.getParameter("author")%>
        </p></li>
        <li><p><b>Title:</b>
                <%= request.getParameter("title")%>
        </p></li>
        <li><p><b>Keyword:</b>
                <%= request.getParameter("keyword")%>
        </p></li>
        <li><p><b>ISBN:</b>
                <%= request.getParameter("isbn")%>
        </p></li>
        <li><p><b>Genre:</b>
                <%= request.getParameter("genre")%>
        </p></li>
        </ul>
</body>
</html>