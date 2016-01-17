<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>
        Dodaj temat
    </title>
</head>
<body>
    <h1>Panel promotora</h1>
    <a href="<c:url value="/panel-promotora/dyplomanci" />">Dyplomanci</a>
    <a href="<c:url value="/panel-promotora/dodaj-dyplomante" />">Dodaj dyplomantę</a>
    <a href="<c:url value="/panel-promotora/dodaj-temat" />">Dodaj temat</a>
    <a href="<c:url value="/panel-promotora/archiwum" />">Archiwum</a>
</body>
</html>