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
<a href="<c:url value="/panel-promotora/tematy" />">Tematy</a>
<a href="<c:url value="/panel-promotora/dodaj-temat" />">Dodaj temat</a>
<a href="<c:url value="/panel-promotora/archiwum" />">Archiwum</a>

<br>
<br>

<form action="<c:url value="/panel-promotora/dodaj-temat/dodaj" />" method="post">
    <label for="tytul">Tytul</label>
    <input id="tytul" name="tytul">
    <br>

    <label for="opis">Opis</label>
    <textarea rows="6" cols="40" id="opis" name="opis" ></textarea>
    <br>

    <label for="stopien">Stopien</label>
    <select id="stopien" name="stopien">
            <option>1</option>
            <option>2</option>
    </select>
    <br>

    <input type="submit" value="Dodaj">
</form>
</body>
</html>