<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        
        <% 
            session.setAttribute("email", null);
            session.invalidate();
            response.sendRedirect(request.getParameter("page"));
        %>
    </body>
</html>