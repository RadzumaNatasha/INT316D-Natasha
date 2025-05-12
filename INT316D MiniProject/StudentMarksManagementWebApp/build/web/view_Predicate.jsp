<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Predicate Mark Page</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #00c6ff, #0072ff);
            color: #fff;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.1);
            padding: 40px 30px;
            border-radius: 16px;
            box-shadow: 0 10px 15px rgba(0, 0, 0, 0.3);
            width: 90%;
            max-width: 600px;
            text-align: center;
        }

        h1 {
            font-size: 2rem;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 30px;
        }

        table, th, td {
            border: 1px solid #fff;
        }

        th, td {
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #34495e;
        }

        td {
            background-color: #2c3e50;
        }

        ul {
            list-style: none;
            padding: 0;
        }

        ul li {
            margin: 15px 0;
        }

        a {
            text-decoration: none;
            color: #fff;
            display: inline-block;
            background-color: #2c3e50;
            padding: 15px 30px;
            font-size: 1.2rem;
            border-radius: 8px;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        a:hover {
            background-color: #34495e;
            transform: scale(1.05);
        }

        a:active {
            transform: scale(0.98);
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>View Predicate Mark</h1>
        
        <% 
            Long id = (Long)request.getAttribute("id");
            String initials = (String)request.getAttribute("initials");
            Long st1 = (Long)request.getAttribute("st1");
            Long st2 = (Long)request.getAttribute("st2");
            Long quizzes = (Long)request.getAttribute("quizzes");
            Long classTests = (Long)request.getAttribute("classTests");
            Long miniProject = (Long)request.getAttribute("miniProject");
            Long industryProject = (Long)request.getAttribute("industryProject");
            Double predicate = (Double)request.getAttribute("predicate");
        %>
        
        <table>
            <tr>
                <th>Student Number:</th>
                <td><%= id %></td>
            </tr>
            <tr>
                <th>Initials:</th>
                <td><%= initials %></td>
            </tr>
            <tr>
                <th>Semester Test 1:</th>
                <td><%= st1 %></td>
            </tr>
            <tr>
                <th>Semester Test 2:</th>
                <td><%= st2 %></td>
            </tr>
            <tr>
                <th>Quizzes:</th>
                <td><%= quizzes %></td>
            </tr>
            <tr>
                <th>Class Tests:</th>
                <td><%= classTests %></td>
            </tr>
            <tr>
                <th>Mini Project:</th>
                <td><%= miniProject %></td>
            </tr>
            <tr>
                <th>Industry Project:</th>
                <td><%= industryProject %></td>
            </tr>
            <tr>
                <th>Predicate:</th>
                <td><%= predicate %></td>
            </tr>
        </table>

        <ul>
            <li><a href="Student.html">Student's Menu</a></li>
        </ul>
    </div>
</body>
</html>
