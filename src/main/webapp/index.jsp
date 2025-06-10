

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Catalogo</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
    <body>
        <jsp:include page="components/Navegacion.jsp"/>
        
        
            
            <div class="container-fluid mt-2">
                <h5>Catálogo de Productos</h5>
                <hr />
                
                <div class="row">

                    <c:forEach items="${productos}" var="item">
                        <div class="col-sm-3 mt-1">
                            <form action="CarritoControlador" method="get">
                                <div class="card">
                                    <img src="assets/img/productos/${item.imagen}" width="100%" 
                                         alt="${item.nombre}"/>
                                    <div class="card-body">
                                        <p class="fw-bold">${item.nombre}</p>
                                        <input type="hidden" name="accion" value="agregar">
                                        <input type="hidden" name="id" value="${item.idProd}">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <button type="submit" class="btn btn-sm btn-primary">
                                                <i class="fa fa-shopping-cart"></i> Agregar al carrito
                                            </button>
                                            <small class="fw-bold">S/.${item.precio}</small>
                                        </div>
                                    </div>      
                                </div>
                            </form>
                            
                        </div>
                    </c:forEach>

                </div>
                
            </div>
            
            
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.min.js" integrity="sha384-RuyvpeZCxMJCqVUGFI0Do1mQrods/hhxYlcVfGPOfQtPJh0JCw12tUAZ/Mv10S7D" crossorigin="anonymous"></script>
    </body>
</html>
