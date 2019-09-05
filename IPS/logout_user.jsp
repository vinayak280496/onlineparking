<%
session.removeAttribute("username");
session.removeAttribute("password");
session.invalidate();
%>
<script type="text/javascript">
var lout = confirm("Are You sure..??");
if(lout == true )
{
document.location="login.jsp";
}
else
{
document.location="User/home.jsp";
}


</script>
