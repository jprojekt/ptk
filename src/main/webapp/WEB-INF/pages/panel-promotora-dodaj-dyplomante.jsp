<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>
        Dodaj dyplomante
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

<form action="<c:url value="/panel-promotora/dodaj-dyplomante/dodaj" />" method="post">
    <label for="imie">Imie</label>
    <input id="imie" name="imie">
    <br>

    <label for="nazwisko">nazwisko</label>
    <input id="nazwisko" name="nazwisko">
    <br>

    <label for="temat">temat</label>
    <input id="temat" name="temat">
    <br>

    <label for="status">status</label>
    <select id="status" name="status">
        <c:forEach items="${statusy}" var="status">
            <option>${status}</option>
        </c:forEach>
    </select>
    <br>

    <input type="submit" value="Dodaj">
</form>

</body>
</html>