<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">

<head>
    <title>PSC</title>
    <link rel="stylesheet" th:href="@{/css/bulma.css}" href="../../css/bulma.css"/>
</head>

<body>
<div id="main">
    <!-- This is where our React app will go -->
</div>

<form th:action="@{/logout}" method="post">
    <input type="submit" value="Sign Out"/>
</form>

<script type="text/javascript" src="bundle.js"></script></body>
</html>