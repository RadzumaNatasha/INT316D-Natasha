<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Results Page</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #ff7e5f, #feb47b);
            color: #fff;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.2);
            padding: 40px 30px;
            border-radius: 16px;
            text-align: center;
            box-shadow: 0 10px 15px rgba(0, 0, 0, 0.3);
            width: 90%;
            max-width: 400px;
        }

        h1 {
            margin-bottom: 20px;
            font-size: 2rem;
        }

        p {
            font-size: 1.2rem;
            margin-bottom: 30px;
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
        <h1>Update Results</h1>
        
        <p>
            Student Marks have been edited successfully!
        </p>
        
        <ul>
            <li><a href="lecturerMenu.jsp">Lecturer's Menu</a></li>
            <li><a href="edit_marks.jsp">Update Another Student Marks</a></li>
        </ul>
    </div>
</body>
</html>
