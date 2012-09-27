<%@ page contentType="text/html;charset=windows-1252"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<title>Your Page Title</title>
<jsp:useBean id="forward" class="java.lang.String" scope="request" />
<meta http-equiv="REFRESH" content="0;url=${forward}"></HEAD>
<BODY>
Redirecting...
</BODY>
</HTML>