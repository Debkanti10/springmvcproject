<html>
<head>
<%@include file="./base.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
body{
    background-image: url('${pageContext.request.contextPath}/resources/images/background.jpg');
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center;
    min-height: 100vh;
}
body::before{
    content:"";
    position:fixed;
    top:0;
    left:0;
    width:100%;
    height:100%;
    background:rgba(0,0,0,0.5);
    z-index:-1;
}
.title{
    color:white;
    font-size:45px;
    font-weight:bold;
    text-shadow:3px 3px 10px black;
}

.table{
 	border-radius:15px;
    overflow:hidden;
    background-color: rgba(255,255,255,0.8);
}
.table th{
    background:#212529;
    color:white;
}
.table tbody tr:hover{
    transform:scale(1.01);
    transition:0.3s;
    cursor:pointer;
}
.add-btn{
    background:#28a745;
    color:white;
    padding:12px 25px;
    border-radius:30px;
    font-weight:bold;
}

.add-btn:hover{
    background:#218838;
    color:white;
    transform:translateY(-3px);
    transition:0.3s;
}
.fa-trash,
.fa-pen-nib{
    transition:0.3s;
}

.fa-trash:hover{
    transform:scale(1.3);
}

.fa-pen-nib:hover{
    transform:scale(1.3);
}
.main-container{
    background: rgba(255,255,255,0.15);
    backdrop-filter: blur(10px);
    border-radius: 20px;
    padding: 30px;
    box-shadow: 0px 8px 32px rgba(0,0,0,0.3);
}

.title{
    color:white;
    font-size:45px;
    font-weight:bold;
    text-shadow:3px 3px 10px black;
}
</style>
</head>
<body>
	
	<div class="container mt-3">
	
	
        <div class="main-container">
        
	<div class="row">

	<div class="col-md-12">
	
	<h1 class="title text-center mb-4">Product Management System</h1>
	
	<h4 class="text-white mb-3">
    Total Products : ${products.size()}
</h4>
	
	<table class="table table-success table-striped">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Product Name</th>
      <th scope="col">Description</th>
      <th scope="col">Price</th>
       <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  
  <c:forEach items="${products }" var="p">
  	 <tr>
      <th scope="row">PRODUCT_ID_${p.id }</th>
      <td>${p.name }</td>
      <td>${p.description }</td>
      <td class="font-weight-bold">&#x20B9; ${p.price }</td>
      <td>
      <a href="delete/${p.id }"><i class="fas fa-trash text-danger" style="font-size: 30px;"></i></a>
      <a href="update/${p.id }"><i class="fas fa-pen-nib text-primary" style="font-size: 30px;"></i></a>
      </td>
    </tr>
  </c:forEach>
   
  </tbody>
</table>

	<div class="container text-center">
	
	<a href="add-product" class="btn add-btn btn-outline-success"> Add Product</a>
	
	</div>
	
	</div>
	
	</div>
	
	 </div> <!-- main-container ends here -->
	
	
	</div>
	
</body>
</html>
