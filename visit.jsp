
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
 <body background = 6.jpg">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  
   <title>JSP Page</title>
 
   </head>
  
  <body>
  
   <table border="1">
     
   <tr>
   
  <th>VISITOR NAME</th>

        
  <th>MOBILE NUMBER</th>
       
  <th>COUNTRY</th>
             
  <th>PURPOSE</th>
              
 <th>COMMENT</th>
     
   </tr>
     
<%
    try{
           
 Class.forName("com.mysql.jdbc.Driver");
           
 Connection con = DriverManager.getConnection("jdbc:mysql:// localhost:3306/visitdetail","root","sai123");
           
 PreparedStatement st = con.prepareStatement("Select * from del");
 
            
  ResultSet rs = st.executeQuery();
          
while(rs.next())
{
     
  %>
       
<tr>
     
<td><%=rs.getString("name")%></td>

<td><%=rs.getInt("num")%></td>
  
<td><%=rs.getString("con")%></td>

<td><%=rs.getString("pur")%></td>
  
<td><%=rs.getString("com")%></td>
       
  </tr>
  
 <%
            
 }
 }
catch (Exception e)
{
         
e.printStackTrace();
     
}
      
%>
   

</table>
   
</body>

</html>
