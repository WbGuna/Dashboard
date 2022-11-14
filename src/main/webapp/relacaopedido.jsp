<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="pt-br">


<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="apple-touch-icon" sizes="76x76" href="img/apple-icon.png">
<link rel="icon" type="image/png" href="img/favicon.png">
<title>VED</title>
<!--     Fonts and icons     -->
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Nucleo Icons -->
<link href="css/nucleo-icons.css" rel="stylesheet" />
<link href="css/nucleo-svg.css" rel="stylesheet" />
<link href="css/ved.css" rel="stylesheet" />
<link href="css/material-dashboard.css" rel="stylesheet" />
<!-- Font Awesome Icons -->
<script src="https://kit.fontawesome.com/42d5adcbca.js"
	crossorigin="anonymous"></script>
<!-- Material Icons -->
<link
	href="https://fonts.googleapis.com/icon?family=Material+Icons+Round"
	rel="stylesheet">
<!-- CSS Files -->

</head>

<body class="g-sidenav-show  bg-gray-200">
	<aside
		class="sidenav navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-3   bg-gradient-dark "
		id="sidenav-main">
		<div class="sidenav-header">
			<i
				class="fas fa-times p-3 cursor-pointer text-white opacity-5 position-absolute end-0 top-0 d-none d-xl-none"
				aria-hidden="true" id="iconSidenav"></i> <a class="navbar-brand m-0"
				href="ServletindexCarol"> <img src="imagens/fav-icon.png"
				class="navbar-brand-img h-100" alt="main_logo"> <span
				class="ms-1 -bold text-white">VED</span>
			</a>
		</div>
		<hr class="horizontal light mt-0 mb-2">
		<div class="overflow" id="sidenav-collapse-main">
			<form action="ServletTroca" method="post">
							<ul class="navbar-nav">
					<li class="nav-item  d-grid gap-2">
						<button type="submit" name="option" value="produtoSV"
							class="nav-link text-white justify-content-center btn-info ">
							Produtos</button>
					</li>
					<li class="nav-item d-grid gap-2">
						<button type="submit" name="option" value="marcaSV"
							class="nav-link text-white justify-content-center btn-info ">Marcas</button>
					</li>
<<<<<<< HEAD
							<li class="nav-item d-grid gap-2">
						<button type="submit" name="option" value="bandeiraSv"
							class="nav-link text-white justify-content-center btn-info ">Bandeira</button>
					</li>
						<li class="nav-item d-grid gap-2">
						<button type="submit" name="option" value="receitaSv"
							class="nav-link text-white justify-content-center btn-info ">Receita</button>
					</li>
						<li class="nav-item d-grid gap-2">
						<button type="submit" name="option" value="armazenamentoSv"
							class="nav-link text-white justify-content-center btn-info ">Armazenamento</button>
					</li>
					<li class="nav-item d-grid gap-2">
=======
								<li class="nav-item d-grid gap-2">
						<button type="submit" name="option" value="bandeiraSv"
							class="nav-link text-white justify-content-center btn-info ">Bandeira</button>
					</li>
										<li class="nav-item d-grid gap-2">
						<button type="submit" name="option" value="receitaSv"
							class="nav-link text-white justify-content-center btn-info ">Receita</button>
					</li>
									<li class="nav-item d-grid gap-2">
						<button type="submit" name="option" value="armazenamentoSv"
							class="nav-link text-white justify-content-center btn-info ">Armazenamento</button>
					</li>
						<li class="nav-item d-grid gap-2">
>>>>>>> 0a520af20fb5aff9538e0d08a157782c68ca5499
						<button type="submit" name="option" value="cupomDescontoSv"
							class="nav-link text-white justify-content-center btn-info ">Cupom Desconto</button>
					</li>
					<li class="nav-item d-grid gap-2">
						<button type="submit" name="option" value="tipoFreteSv"
							class="nav-link text-white justify-content-center btn-info ">Tipo de Frete</button>
					</li>
						<li class="nav-item d-grid gap-2">
						<button type="submit" name="option" value="freteSv"
							class="nav-link text-white justify-content-center btn-info ">Frete</button>
					</li>
					
					<li class="nav-item d-grid gap-2">
						<button type="submit" name="option" value="fornecedorSV"
							class="nav-link text-white justify-content-center btn-info ">Fornecedores</button>
					</li>
					<li class="nav-item d-grid gap-2">
						<button type="submit" name="option" value="categoriaSV"
							class="nav-link text-white justify-content-center btn-info ">Categorias</button>
					</li>
					<li class="nav-item d-grid gap-2">
						<button type="submit" name="option" value="listaClienteSV"
							class="nav-link text-white justify-content-center btn-info ">Clientes</button>
					<li class="nav-item d-grid gap-2">
						<button type="submit" name="option" value="listaPedidoSV"
							class="nav-link text-white justify-content-center btn-info ">Pedidos</button>
					</li>
									<li class="nav-item d-grid gap-2">
						<button type="submit" name="option" value="statusProdutoSV"
							class="nav-link text-white justify-content-center btn-info ">Status
							Produto</button>
					</li>
					<li class="nav-item d-grid gap-2">
						<button type="submit" name="option" value="funcionarioSV"
							class="nav-link text-white justify-content-center btn-info ">Funcionario</button>
					</li>
				</ul>
			</form>
		</div>
		<div class="sidenav-footer position-absolute w-100 bottom-0 "></div>
	</aside>
	<main
		class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
		<!-- Navbar -->
		<nav
			class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl"
			id="navbarBlur" navbar-scroll="true">
			<div class="container-fluid py-1 px-3">
				<nav aria-label="breadcrumb">
					<ol
						class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
						<li class="breadcrumb-item text-sm"><a
							class="opacity-5 text-dark" href="#">Paginas</a></li>
						<li class="breadcrumb-item text-sm text-dark " aria-current="page">Pedido</li>
					</ol>
					<h1 class="-bolder mb-0">Pedido #${Pedido.idpedido}</h1>
				</nav>
				<div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4"
					id="navbar">
					<div class="ms-md-auto pe-md-3 d-flex align-items-center"></div>
					<ul class="navbar-nav  justify-content-end">
						<li class="nav-item d-flex align-items-center "><i
							class="fa fa-user me-sm-1"></i> <c:choose>
								<c:when test="${applicationScope.nome == null}">
									<a href="./login.jsp">Faça Login</a>
								</c:when>
								<c:otherwise>
									<span class="d-sm-inline d-none">Olá,
										${applicationScope.nome}</span>
								</c:otherwise>
							</c:choose></li>
						<li class="nav-item d-xl-none ps-3 d-flex align-items-center">
							<a href="javascript:;" class="nav-link text-body p-0"
							id="iconNavbarSidenav">
								<div class="sidenav-toggler-inner">
									<i class="sidenav-toggler-line"></i> <i
										class="sidenav-toggler-line"></i> <i
										class="sidenav-toggler-line"></i>
								</div>
						</a>
						</li>
						<li
							class="nav-item px-3 d-flex align-items-center justify-content-center">
							<c:choose>
								<c:when test="${applicationScope.nome != null}">
									<a href="./login.jsp"><span><i
											class="material-icons opacity-10">login</i></span> </a>
								</c:when>
							</c:choose>
						</li>
					</ul>
				</div>
			</div>
		</nav>


		<div class="container-fluid ">
			<div class="container-fluid py-2">
				<div class="row">
					<div class="col-12">
						<div class="card my-4">
							<div
								class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
								<div class="btn-success border-radius-lg pt-4 pb-3">
									<h6 class="text-white text-capitalize ps-3">Pedido</h6>
								</div>
								<div class="container overflow-scroll over ">
									<table class="table mt-5  ">
										<thead class="thead-dark">
											<tr class="text-center">
												<th scope="col">Status do Pedido</th>
												<th scope="col">Data Pedido</th>
												<th scope="col">Tipo de Entrega</th>
												<th scope="col">Metodo de Pagamento</th>
												<th scope="col">Valor Total</th>
											</tr>
										</thead>
										<tbody>

											<tr class="text-center">
												<input type="hidden" name="id" value="${Pedido.idpedido}" />
												<td>${Pedido.stPedido}</td>
												<td><fmt:formatDate pattern="dd/MM/yyyy"
														value="${Pedido.data}" /></td>
												<td>${Pedido.tpEntrega}</td>
												<td>${Pedido.pamento}</td>
												<td class="dinheiro">R$ ${Pedido.total}</td>
											</tr>

										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


		<div class="container-fluid ">
			<div class="container-fluid py-2">
				<div class="row">
					<div class="col-12">
						<div class="card my-4">
							<div
								class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
								<div class="btn-success border-radius-lg pt-4 pb-3">
									<h6 class="text-white text-capitalize ps-3">Dados do
										Cliente</h6>
								</div>
								<div class="container overflow-scroll over ">
									<table class="table mt-5 ">
										<thead class="thead-dark">
											<tr class="text-center">
												<th scope="col">Nome</th>
												<th scope="col">Sobrenome</th>
												<th scope="col">CPF</th>
												<th scope="col">Telefone</th>
												<th scope="col">E-mail</th>
											</tr>
										</thead>
										<tbody>
											<tr class="text-center">
												<input type="hidden" name="id" value="${Pedido.idpedido}" />
												<td>${Pedido.nome}</td>
												<td>${Pedido.sobrenome}</td>
												<td id="cpf">${Pedido.cpf}</td>
												<td id="telefone">${Pedido.telefone}</td>
												<td>${Pedido.email}</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container-fluid ">
			<div class="container-fluid py-2">
				<div class="row">
					<div class="col-12">
						<div class="card my-4">
							<div
								class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
								<div class="btn-success border-radius-lg pt-4 pb-3">
									<h6 class="text-white text-capitalize ps-3">Produtos</h6>
								</div>
								<div class="container overflow-scroll over">
									<table class="table mt-5 ">

										<thead class="thead-dark">
											<tr class="text-center">
												<th scope="col">Produtos</th>
												<th scope="col">Quantidade de itens</th>
												<th scope="col">Valor</th>
												<th scope="col">Valor total de itens</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="Produtos" items="${ListaProduto}">
												<tr class="text-center">
													<input type="hidden" name="id" value="${ListaProduto}" />
													<td>${Produtos.nome_produto}</td>
													<td>${Produtos.quantidade_total}</td>
													<td class=" ">R$ ${Produtos.preco}</td>
													<td class="dinheiro ">R$ ${Produtos.total}</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container-fluid ">
			<div class="container-fluid py-2">
				<div class="row">
					<div class="col-12">
						<div class="card my-4">
							<div
								class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
								<div class="btn-success border-radius-lg pt-4 pb-3">
									<h6 class="text-white text-capitalize ps-3">Endereço de
										Entrega</h6>
								</div>
								<div class="container overflow-scroll over ">
									<table class="table mt-5 ">
										<thead class="thead-dark">
											<tr class="text-center">
												<th scope="col">CEP</th>
												<th scope="col">Rua</th>
												<th scope="col">Numero</th>
												<th scope="col">UF</th>

											</tr>
										</thead>
										<tbody>

											<tr class="text-center">
												<input type="hidden" name="id" value="${Pedido.idpedido}" />
												<td>${Pedido.cep}</td>
												<td>${Pedido.rua}</td>
												<td>${Pedido.numero}</td>
												<td>${Pedido.uf}</td>
											</tr>

										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--   Core JS Files   -->
		<script src="js/core/popper.min.js"></script>
		<script src="js/core/bootstrap.min.js"></script>
		<script src="js/plugins/perfect-scrollbar.min.js"></script>
		<script src="js/plugins/smooth-scrollbar.min.js"></script>
		<script>
			var win = navigator.platform.indexOf('Win') > -1;
			if (win && document.querySelector('#sidenav-scrollbar')) {
				var options = {
					damping : '0.5'
				}
				Scrollbar.init(document.querySelector('#sidenav-scrollbar'),
						options);
			}
		</script>
		<script type="text/javascript" src="jquery-3.6.0.min.js"></script>
		<script type="text/javascript" src="jquery.mask.min.js"></script>
		<script src="js/material-dashboard.min.js?v=3.0.0"></script>
		<script type="text/javascript">
			$(document).ready(function() {
				$('#cpf').mask('000.000.000-00');
				$('.dinheiro').mask('#.##0,00', {
					reverse : true
				});
				$('#peso').mask('00,000');
				$('#date').mask('00/00/0000');
				$('#cnpj').mask('00.000.000/0000-00');
				$('#telefone').mask('(00) 0000-0000');
				$('#anomes').mask('00/0000');
				$('#cep').mask('00000-000');
				$('.cartao').mask('0000 0000 0000 0000');
				$('.campoSenha').mask("**-*-***-*000");
			});
		</script>
		<!-- Github buttons -->
		<script async defer src="https://buttons.github.io/buttons.js"></script>
		<!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
		<script src="js/material-dashboard.min.js?v=3.0.0"></script>
</body>

</html>


