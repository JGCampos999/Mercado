<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ page import="model.Produto"%>
<%@ page import="dao.ProdutoDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Produto p = new Produto();
		ProdutoDAO pDAO = new ProdutoDAO();
		p.setDescP(request.getParameter("descricao"));
		p.setPrecoP(Double.parseDouble(request.getParameter("preco")));
		pDAO.inserir(p);
		response.sendRedirect("index.jsp");
	%>
</body>
</html>