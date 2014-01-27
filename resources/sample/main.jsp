<%@ page contentType="text/html;charset=windows-1252"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head><title>LTI Demo</title>
<style>
 body,p,td { font-family: Verdana, Arial, Sans Serif;font-size: 12px; }
</style>
</head>
<body>

<h3>LTI - Demo</h3>
<p>This page simulates an external application that is to be used as LTI Tool Provider. 
    This stand-alone application has two parts:
    <ol>
    <li>Logs the user in and registers their user name and image choice in a cookie*</li> 
    <li>Displays the image.  Gets information as to the calling user and what image to display
    from the cookie created in part 1.This option is only valid as long as the cookie is alive. </li>
    </ol> 
    
    * <small><i>The login creates a cookie that lasts for 10 seconds (or whatever is configured at startup). 
      Therefore Part 2) will only work for this amount of time, after which the user must login again.</i></small>
    </p>
         
       
<b>Login</b><br/>

<form action="Login">

<table><tr>
<td>User:</td><td> <input type="text" name="user"/></td></tr>
<td>Pass: </td><td> <input type="password" name="pass"/></td></tr>
<td>Image: </td><td> 
<select name="id">
   <option value="vanocflame.jpg">Vanoc Flame - 2010</option>
   <option value="noparking.jpg">No Parking Sign</option>
   <option value="anaheim.jpg">Anaheim - Palm Trees</option>   
  </select> 
</td></tr>
</form>
</table>
<input type="submit" name="submit" value="Login"/><br/> 

 <small><i>Hint: user and pass the same to login</i></small><br/>
 
<hr/>
<b>Show image (must be logged in - see above)</b><br/>
<form action="showimage.jsp">
<input type="submit" name="submit" value="Go"/> 
</form>
 
 
</body>
</html>
