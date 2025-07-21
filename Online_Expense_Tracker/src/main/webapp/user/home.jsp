<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page isELIgnored="false" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%@include file="../Component/all_css.jsp" %>

</head>
<body>
<c:if test="${empty loginUser}">
  <c:redirect url="../login.jsp"></c:redirect>
</c:if>
<%@include file="../Component/navbar.jsp" %>   

<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="../image/online ex.3.png" class="d-block w-100" alt="..." height="650px">
    </div>
    <div class="carousel-item">
      <img src="../image/online ex.1.png " class="d-block w-100" alt="..."  height="650px">
    </div>
    <div class="carousel-item">
      <img src="../image/online ex.2.png " class="d-block w-100" alt="..."  height="650px">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>


</body>
</html>