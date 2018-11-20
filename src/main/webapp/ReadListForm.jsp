<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>ReadList management application</title>
</head>
<body>
<center>
    <h1>ReadList Manager</h1>
    <h2>
        <a href="/new">Add New Book</a>
        &nbsp;&nbsp;&nbsp;
        <a href="/list">List All Books</a>

    </h2>
</center>
<div align="center">
    <c:if test="${book != null}">
    <form action="/update" method="post">
        </c:if>
        <c:if test="${book == null}">
        <form action="/insert" method="post">
            </c:if>
            <table border="1" cellpadding="5">
                <caption>
                    <h2>
                        <c:if test="${book != null}">
                            Edit Book
                        </c:if>
                        <c:if test="${book == null}">
                            Add New Book
                        </c:if>
                    </h2>
                </caption>
                <c:if test="${book != null}">
                    <input type="hidden" name="id" value="<c:out value='${book.id}' />" />
                </c:if>
                <tr>
                    <th>Date: </th>
                    <td>
                        <input type="text" name="date" size="45"
                               value="<c:out value='${book.date}' />"
                        />
                    </td>
                </tr>
                <tr>
                    <th>Title: </th>
                    <td>
                        <input type="text" name="title" size="45"
                               value="<c:out value='${book.title}' />"
                        />
                    </td>
                </tr>
                <tr>
                    <th>Author: </th>
                    <td>
                        <input type="text" name="author" size="45"
                               value="<c:out value='${book.author}' />"
                        />
                    </td>
                </tr>
                <tr>
                    <th>Genre:</th>
                    <td>
                        <select name = "genre">
                            <option value = "Detective" selected>Detective</option>
                            <option value = "Drama">Drama</option>
                            <option value = "Romance">Romance</option>
                            <option value = "Science">Science</option>
                            <option value = "History">History</option>
                            <option value = "Poetri">Poetri</option>
                            <option value = "Other">Other</option>

                        </select>
                    </td>
                </tr>

                <tr>
                    <th>Mark: </th>
                    <td>
                        <input type = "radio" name = "mark" value = "<c:out value='${book.mark}' />"> 1
                        <input type = "radio" name = "mark" value = "<c:out value='${book.mark}' />"> 2
                        <input type = "radio" name = "mark" value = "<c:out value='${book.mark}' />"> 3
                        <input type = "radio" name = "mark" value = "<c:out value='${book.mark}' />"> 4
                        <input type = "radio" name = "mark" value = "<c:out value='${book.mark}' />"> 5


                    </td>
                </tr>
                <tr>
                    <th>Comment: </th>
                    <td>

                        <textarea rows = "5" cols = "50" name = "comment" value = "<c:out value='${book.comment}' />">
                            Write text here...

                        </textarea>

                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="Save" />
                    </td>
                </tr>

            </table>
        </form>
</div>
</body>
</html>
