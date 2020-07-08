<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="model.Produto"%>
<%@page import="dao.ProdutoDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Consultar Produtos</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">
</head>
<body>
	<h1>Consulta de Produtos</h1>
	<form action="index.jsp" method="post">
		<label>Insira a descrição para pesquisar:</label>
		<div class="input-group">
	   		<input type="text" name="descricao" class="form-control">
	   		<span class="input-group-btn">
	        	<input type="submit" value="Procurar" class="btn btn-primary">
	   		</span>
		</div>
	</form>
	<%
		out.print("<table class='table table-hover table-dark'>");
		out.print("<tr>");
		out.print(
				"<th scope='col'>#</th><th scope='col'>Descrição</th><th scope='col'>Preço</th><th scope='col'>Alterar</th><th scope='col'>Excluir</th>");
		ProdutoDAO pDAO = new ProdutoDAO();
		if (request.getParameter("descricao") == "" || request.getParameter("descricao") == null) {
			List<Produto> lista = pDAO.recebeTudo();
			for (int i = 0; i < lista.size(); i++) {
				out.print("<tr>");
				out.print("<th scope='row'>" + lista.get(i).getIdP() + "</th>");
				out.print("<td>" + lista.get(i).getDescP() + "</td>");
				out.print("<td>" + lista.get(i).getPrecoP() + "</td>");
				out.print("<td><a href = 'altera.jsp?id=" + lista.get(i).getIdP() + "&descricao="
						+ lista.get(i).getDescP() + "&preco=" + lista.get(i).getPrecoP()
						+ "' class = 'btn btn-warning'>Alterar</a></td>");
				out.print("<td><a href = 'exclui.jsp?id=" + lista.get(i).getIdP() + "&descricao="
						+ lista.get(i).getDescP() + "&preco=" + lista.get(i).getPrecoP()
						+ "' class = 'btn btn-danger'>Excluir</a></td>");
				out.print("</tr>");
			}
		} else {
			List<Produto> lista = pDAO.recebeTudo(request.getParameter("descricao"));
			for (int i = 0; i < lista.size(); i++) {
				out.print("<tr>");
				out.print("<th scope='row'>" + lista.get(i).getIdP() + "</th>");
				out.print("<td>" + lista.get(i).getDescP() + "</td>");
				out.print("<td>" + lista.get(i).getPrecoP() + "</td>");
				out.print("<td><a href = 'altera.jsp?id=" + lista.get(i).getIdP() + "&descricao="
						+ lista.get(i).getDescP() + "&preco=" + lista.get(i).getPrecoP()
						+ "' class = 'btn btn-warning' >Alterar</a></td>");
				out.print("<td><a href = 'exclui.jsp?id=" + lista.get(i).getIdP() + "&descricao="
						+ lista.get(i).getDescP() + "&preco=" + lista.get(i).getPrecoP()
						+ "' class = 'btn btn-danger'>Excluir</a></td>");
				out.print("</tr>");
			}
		}
		out.print("</tr>");
		out.print("<table>");
	%>
	<script src="bootstrap/js/jquery-3.4.1.min.js"></script>
	<script src="bootstrap/js/bootstrap.bundle.min.js"></script>
	<a href="insere.jsp" class="btn btn-success" role="button">Inserir novo produto</a>
</body>
</html>