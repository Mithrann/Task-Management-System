<%@ page import="com.idiot.servlet.Task" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Task</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <h2>Edit Task</h2>
        <% Task task = (Task) request.getAttribute("task"); %>
        <% if (task != null) { %>
            <form action="updateTask" method="post">
                <input type="hidden" name="id" value="<%= task.getId() %>">
                <label for="title">Title:</label><br>
                <input type="text" id="title" name="title" value="<%= task.getTitle() %>" required><br><br>
                <label for="description">Description:</label><br>
                <textarea id="description" name="description"><%= task.getDescription() %></textarea><br><br>
                <label for="due_date">Due Date:</label><br>
                <input type="date" id="due_date" name="due_date" value="<%= task.getDueDate() %>" required><br><br>
                <button type="submit">Update Task</button>
            </form>
        <% } else { %>
            <p>Error: Task details not found.</p>
        <% } %>
        <br>
        <a href="listTasks">Back to Task List</a>
    </div>
</body>
</html>