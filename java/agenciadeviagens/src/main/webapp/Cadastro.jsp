<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Formulário de Cadastro</title>
    <!-- Adicione links para estilos ou scripts conforme necessário -->
</head>
<body>
    <h1>Formulário de Cadastro para Viagem</h1>
    <form action="ViagemServlet" method="post">
        <!-- Adicione campos do formulário conforme necessário -->
        <label for="nome">Nome:</label>
        <input type="text" id="nome" name="nome" required><br>
        
        <label for="sobrenome">Sobrenome:</label>
        <input type="text" id="sobrenome" name="sobrenome" required><br>
        
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br>

        <input type="submit" value="Enviar">
    </form>
</body>
</html>
