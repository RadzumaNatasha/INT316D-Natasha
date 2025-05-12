<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lecturer Menu Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Include icons (Font Awesome) -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #141e30, #243b55);
            color: #fff;
            display: flex;
            flex-direction: column;
            align-items: center;
            min-height: 100vh;
            padding: 40px 20px;
        }

        h1 {
            font-size: 2.8rem;
            margin-bottom: 40px;
            text-align: center;
        }

        .menu-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            width: 100%;
            max-width: 800px;
        }

        .menu-card {
            background-color: rgba(255, 255, 255, 0.1);
            padding: 25px;
            border-radius: 12px;
            text-align: center;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.3);
            transition: transform 0.3s ease, background-color 0.3s ease;
        }

        .menu-card:hover {
            transform: translateY(-5px);
            background-color: rgba(255, 255, 255, 0.15);
        }

        .menu-card a {
            text-decoration: none;
            color: #fff;
            font-size: 1.2rem;
            font-weight: bold;
            display: block;
            margin-top: 10px;
        }

        .menu-icon {
            font-size: 2rem;
            margin-bottom: 10px;
            color: #00eaff;
        }

        @media (max-width: 500px) {
            h1 {
                font-size: 2rem;
            }
        }
    </style>
</head>
<body>
    <h1>Lecturer DeskHelp</h1>

    <div class="menu-container">
        <div class="menu-card">
            <div class="menu-icon"><i class="fas fa-user-plus"></i></div>
            <a href="addStudent.jsp">Add Student</a>
        </div>
        <div class="menu-card">
            <div class="menu-icon"><i class="fas fa-users"></i></div>
            <a href="ViewStudentServlet.do">View All Students</a>
        </div>
        <div class="menu-card">
            <div class="menu-icon"><i class="fas fa-pen-to-square"></i></div>
            <a href="edit_marks.jsp">Update Student Marks</a>
        </div>
        <div class="menu-card">
            <div class="menu-icon"><i class="fas fa-sign-out-alt"></i></div>
            <a href="index.html">Logout</a>
        </div>
    </div>
</body>
</html>
