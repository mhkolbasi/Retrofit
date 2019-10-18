<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-light bg-light">
  <a class="navbar-brand">Menu</a>
  <form class="form-inline">
    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
  </form>
</nav>

<div class="container">
<div class="row">

<table class="table table-hover">
		  <thead>
		    <tr>
		      <th scope="col">ID</th>
		      <th scope="col">ÜrünAdi</th>
		      <th scope="col">Fiyat</th>
		       <th scope="col">Özet Bilgi</th>
		      <th scope="col">Resim</th>
		      <th scope="col">Detay</th>
		   
		    </tr>
		  </thead>
		  <tbody>

<c:if test="${ not empty ls }">
	<c:forEach items="${ls}" var="item">
    <tr>
      <th> ${ item.productId }</th>
      <td> ${ item.productName }</td>
      <td> ${ item.price }</td>
      <td> ${ item.brief }</td>
      <td><img src="${ item.images.get(0).thumb }"></td>
      <td> <a  href='<s:url value="/Detay/${item.productId}"></s:url>'  class="btn btn-info">Urune git</a>	</td>
    </tr>
    	</c:forEach>
</c:if>
  </tbody>
</table>

</div>
</div>
</body>
</html>
