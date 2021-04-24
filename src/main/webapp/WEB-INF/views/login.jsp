<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2021/4/24
  Time: 19:29
  To change this template use File | Settings | File Templates.
--%>
<%@include file="header.jsp"%>
<h1>Login</h1>
<%
    if(request.getAttribute("message")!=null){
        System.out.println(request.getAttribute("message"));
    }
%>
<%
    Cookie[] allCookies=request.getCookies();
    String username= "",password= "",rememberMeVale= "";
    if(allCookies!=null){
        for(Cookie c:allCookies){
            if(c.getName().equals("cUsername")){
                username=c.getValue();
            }
            if(c.getName().equals("cPassword")){
                password=c.getValue();
            }
            if(c.getName().equals("rememberMeVale")){
                rememberMeVale=c.getValue();
            }
        }
    }
%>
<form method="post" action="/2019211001000702LvYuYu_war_exploded/login">
    <table>
        <tr> <td>Username:</td> <td><input type="text" name="Username" value="<%=username%>" required><br/></td></tr>
        <tr> <td>password:</td> <td><input type="password" name="password" value="<%=password%>" required minlength="8"><br/></td></tr>
        <tr> <td></td><td><input type="checkbox" name="rememberMe" value="1" <%=rememberMeVale.equals("1") ?"checked":""%>checked/>RememberMe</td> </tr>
        <tr> <td></td><td><input type="submit" value="Login"/></td>  </tr>
    </table>
</form>
<%@include file="footer.jsp"%>