<%@ page contentType="text/html;charset=windows-1252"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head><title>LTI Demo - Show Image</title>
<style>
 body,p,td { font-family: Verdana, Arial, Sans Serif;font-size: 12px; }
</style>

</head>
<body >

<h3>LTI Demo - Show Image</h3>
<p>This page simulates an external application that is to be used as LTI Tool Provider. 
    It assumes that the user has been logged in. Existence of a cookie is proof of login.
    The image to be shown is extracted from the cookie. 
    This stand-alone application could be called from two different sources. 
    <ol>
    <li>The Login servlet that is part of this demo. See <a href="main.jsp">here</a></li> 
    <li>An LTI consumer(such as an LMS) that has called the ca.ubc.med.lti.Invoke servlet and 
    has forward to of this page.</li>
    </ol> 
    
    This page extracts information from the cookie and displays the requested image. 
    </p>
         
       
       
<%
  String cookieName = "LTICookie";
  Cookie cookies [] = request.getCookies ();
  Cookie myCookie = null;
  if (cookies != null) {
     for (int i = 0; i < cookies.length; i++)  {
       if (cookies[i].getName().equals (cookieName))  {
       myCookie = cookies[i];
       break;        
       }
     }
  }   
  if (myCookie == null) { 
	  out.println("Can't read cookie: " + cookieName);
  }
  else { 
	  String cookieValue = myCookie.getValue();
	  String user = null,imagename = null;
	  out.println("Original cookie value:" + myCookie.getValue() +  "<br/><br/>");
	  	  
	  java.util.StringTokenizer st = new java.util.StringTokenizer(cookieValue,"&");
	  while (st.hasMoreElements()) {
			String temp = (String)st.nextElement();
			int pos = temp.indexOf("=");
			if (temp.substring(0,pos).equalsIgnoreCase("id"))
				imagename = temp.substring(pos+1);
			
			if (temp.substring(0,pos).equalsIgnoreCase("studentid"))
				user=temp.substring(pos+1);
				
		   }
	  
	  out.println("Logged in user: " + user + "<br/>");
	  out.println("Displaying image: " + imagename + "<br/><br/>");
	  out.println("<img src=\"images/" + imagename + "\" width=\"200\" height=\"200\" />");
  }

%>
 
 <br/><br/><a href="main.jsp">Return to Calling page</a>
 
</body>
</html>
