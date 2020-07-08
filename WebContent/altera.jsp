<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Alterar Produto</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">
</head>
<body>
	<div id="edit">
		<form action="execAltera.jsp" method="post">
			<label>Codigo: </label>
			<input type="text" name="id" class="form-control" value="<%=request.getParameter("id")%>" readonly><br/>
			<label>Descrição:</label>
			<input type="text" name="descricao" class="form-control" value="<%=request.getParameter("descricao")%>"><br/>
			<label>Preço:</label>
			<input type="text" name="preco" class="form-control" value="<%=request.getParameter("preco")%>"><br/>
			<a href="index.jsp" role="button" class="btn btn-primary">Voltar</a>
			<input type="submit"value="Alterar" class="btn btn-warning">
		</form>
		
	</div>
	<script src="bootstrap/js/jquery-3.4.1.min.js"></script>
	<script src="bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>