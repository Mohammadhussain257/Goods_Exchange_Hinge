<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>footer</title>
</head>
<body>

	<!--Footer-->
	<footer
		class="page-footer text-center font-small primary-color-dark darken-2 mt-4 wow fadeIn">
		<hr class="my-4">

		<!--Copyright-->
		<div class="footer-copyright py-3">
			<c:set var="now" value="<%=new java.util.Date()%>" />
			<a href="privacyPolicy">Privacy Policy</a> ||
			<fmt:formatDate type="both" dateStyle="long" timeStyle="long"
				value="${now}"/>
			© Copyright: <a href="#" target="_blank"> Goods Exchange Hinge </a> ||
			<a href="termOfUse">Terms of Use</a>
		</div>
		<!--Copyright-->

	</footer>
	<!--Footer-->

</body>
</html>