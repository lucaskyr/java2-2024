<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Novo Livro</title>
    </head>
    <body>
        <h1>Novo Livro</h1>
        <form action="/livros/insert" method="post">
            <div>
                <label>Título</label>
                <input type="text" name="titulo" />
            </div>
            <div>
                <label>Gênero</label>
                <select name="genero">
                    <c:forEach var="g" items="${generos}">
                        <option value="${g.id}">${g.nome}</option>
                    </c:forEach>
                </select>
            </div>
            <button type="submit">Salvar</button>
        </form>
    </body>
</html>
