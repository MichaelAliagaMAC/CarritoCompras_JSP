
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-expand-lg" style="background-color: #1bd66d">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <img src="assets/img/recursos/logo.png" alt="Logo" style="width: 100px; height: 80px;"/>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="index.jsp">
                        <i class="fa fa-home"></i> Catalogo
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="CarritoControlador?accion=listar">
                        <i class="fa fa-shopping-cart"></i> 
                        (<span class="fw-bold">${sessionScope.carrito != null? sessionScope.carrito.size() : 0}</span>) Carrito
                    </a>
                </li>
                
                <c:if test="${sessionScope.usuario != null}">
                    <li class="nav-item">
                        <a class="nav-link" href="PedidoControlador?accion=mis_pedidos">
                            <i class="fa fa-receipt"></i> Mis Pedidos
                            
                        </a>
                    </li>
                </c:if>
                
            </ul>
            <form class="d-flex">
                <c:if test="${sessionScope.usuario == null}">
                    <a href="ClienteControlador?accion=nuevo" class="btn btn-dark">
                    <i class="fas fa-user-plus"></i> Registrarse
                </a>
                &nbsp;
                <a href="AuthControlador?accion=login" class="btn btn-dark"> 
                    <i class="fas fa-user-lock"></i> Login
                </a>
                </c:if>
                
                <c:if test="${sessionScope.usuario != null}">
                    <span class="btn btn-light">${sessionScope.usuario.nombresCompletos()}</span>
                    &nbsp;
                    <a href="AuthControlador?accion=logout" class="btn btn-dark">
                        <i class="fa fa-sing-out-alt"></i> Cerrar Sesión
                    </a>
                </c:if>
                
             </form>
        </div>
    </div>
</nav>