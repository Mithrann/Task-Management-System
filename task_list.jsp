<%@ page import="java.util.List" %>
<%@ page import="com.idiot.servlet.Task" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Task List</title>
    <link rel="stylesheet" href="style.css">
    <style>
        .action-links a {
            margin-right: 10px;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Your Tasks</h2>
        <table>
            <thead>
                <tr>
                    <th>Title</th>
                    <th>Description</th>
                    <th>Due Date</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="task" items="${taskList}">
                    <tr>
                        <td>${task.title}</td>
                        <td>${task.description}</td>
                        <td>${task.dueDate}</td>
                        <td class="action-links">
                            <a href="editTask?id=${task.id}">Edit</a>
                        </td>
                        <td class="action-links">
                            <a href="deleteTask?id=${task.id}" onclick="return confirm('Are you sure you want to delete this task?')">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
                <c:if test="${empty taskList}">
                    <tr><td colspan="5">No tasks found.</td></tr>
                </c:if>
            </tbody>
        </table>
        <br>
        <a href="dashboard.html">Back to Dashboard</a>
    </div>
</body>
</html>