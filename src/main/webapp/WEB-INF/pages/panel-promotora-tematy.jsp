<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <style>
        table {border-collapse:collapse; table-layout:fixed; width:500px;}
        table td {border:solid 3px; text-align: center; width:400px; word-wrap:break-word;}
    </style>
    <title>
        Tematy
    </title>
</head>
<body>
<h1>Panel promotora</h1>
<a href="<c:url value="/panel-promotora/dyplomanci" />">Dyplomanci</a>
<a href="<c:url value="/panel-promotora/dodaj-dyplomante" />">Dodaj dyplomantę</a>
<a href="<c:url value="/panel-promotora/tematy" />">Tematy</a>
<a href="<c:url value="/panel-promotora/dodaj-temat" />">Dodaj temat</a>
<a href="<c:url value="/panel-promotora/archiwum" />">Archiwum</a>

<br>
<br>

<table>

    <b><tr>
        <td>Tytul</td>
        <td>Opis</td>
        <td>Stopien</td>

    </tr></b>
    <c:forEach items="${tematy}" var="temat">

        <tr>
            <td>${temat.tytul}</td>
            <td>${temat.opis}</td>
            <td>${temat.stopien}</td>
        </tr>

    </c:forEach>

</table>
</body>
</html>