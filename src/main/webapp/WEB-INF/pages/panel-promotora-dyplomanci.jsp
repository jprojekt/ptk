<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <style>
        table, th, td {
            border: 4px solid black;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            text-align: center;
        }
    </style>
    <title>
        Dyplomanci
    </title>
</head>
<body>
<h1>Panel promotora</h1>
<a href="<c:url value="/panel-promotora/dyplomanci" />">Dyplomanci</a>
<a href="<c:url value="/panel-promotora/dodaj-dyplomante" />">Dodaj dyplomantę</a>
<a href="<c:url value="/panel-promotora/dodaj-temat" />">Dodaj temat</a>
<a href="<c:url value="/panel-promotora/archiwum" />">Archiwum</a>

<br>
<br>

<table>

    <b><tr>
        <td>Imie</td>
        <td>Nazwisko</td>
        <td>Temat</td>
        <td>Status</td>
        <td>Więcej</td>

    </tr></b>
    <c:forEach items="${dyplomanci}" var="dyplomanta">

        <tr>
            <td>${dyplomanta.userDetails.imie}</td>
            <td>${dyplomanta.userDetails.nazwisko}</td>
            <td>${dyplomanta.userDetails.temat}</td>
            <td>${dyplomanta.userDetails.userStatus}</td>
            <td><a href="#">+</a></td>
        </tr>

    </c:forEach>

</table>
</body>
</html>