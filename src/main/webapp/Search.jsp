<%@page import="java.util.ArrayList"%>
<%@page import="com.Accio.SearchResult"%>
<html>
<head>
    <link rel = "stylesheet" type = "text/css" href="Styles.css">
</head>
<body>
    <form action = "Search" >
        <input type = "text" name = "keyword"></input>
        <button type ="submit">Search</button>
    </form>

    <table border = 2>
        <tr>
            <td>Name</td>
            <td>Link</td>
        </tr>
        <%
        ArrayList<SearchResult> results = (ArrayList<SearchResult>) request.getAttribute("results");
        for(SearchResult result:results){

        %>
        <tr>
            <td><%out.println(result.getTitle());%></td>
            <td><%out.println(result.getLink());%></td>
        </tr>
        <%
        }
        %>

    </table>
</body>
</html>
