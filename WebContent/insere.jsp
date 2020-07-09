<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inserir Produto</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">
</head>
<body>
	<div id="create">
		<form action="execInsere.jsp" method="post">
			<label>Descrição: </label>
			<input type="text" name="descricao" class="form-control" required><br/>
			<label>Preço: </label>
			<div class="input-group mb-3">
  				<div class="input-group-prepend">
    				<span class="input-group-text" id="basic-addon1">R$</span>
  				</div>
				<input type="number" name="preco" class="form-control" step=".01" required><br/>
			</div>
			<a href="index.jsp" role="button" class="btn btn-primary">Voltar</a>
			<input type="submit" value="Inserir" class="btn btn-success">
		</form>
	</div>
	<script src="bootstrap/js/jquery-3.4.1.min.js"></script>
	<script src="bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>