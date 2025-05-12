<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Student Marks Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Modern Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            padding: 0;
            font-family: 'Inter', sans-serif;
            background: linear-gradient(to right, #1e3c72, #2a5298);
            color: #ffffff;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 20px;
        }

        .form-container {
            background-color: rgba(255, 255, 255, 0.08);
            padding: 40px;
            border-radius: 16px;
            max-width: 600px;
            width: 100%;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.4);
        }

        h1 {
            text-align: center;
            margin-bottom: 30px;
            font-size: 2.2rem;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 6px;
            font-weight: 600;
            color: #e0f7fa;
        }

        input[type="text"] {
            width: 100%;
            padding: 12px 14px;
            border: none;
            border-radius: 8px;
            font-size: 1rem;
            background-color: #ffffff;
            color: #333;
            transition: box-shadow 0.3s ease;
        }

        input[type="text"]:focus {
            outline: none;
            box-shadow: 0 0 5px #00e5ff;
        }

        input[type="submit"] {
            width: 100%;
            padding: 14px;
            font-size: 1.1rem;
            font-weight: bold;
            color: #fff;
            background-color: #00bcd4;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        input[type="submit"]:hover {
            background-color: #0097a7;
            transform: translateY(-2px);
        }

        @media (max-width: 500px) {
            .form-container {
                padding: 25px;
            }

            h1 {
                font-size: 1.8rem;
            }
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h1>Add Student Marks</h1>
        <form action="AddStudentServlet.do" method="POST">
            <div class="form-group">
                <label for="id">Student Number</label>
                <input type="text" id="id" name="id" pattern="\d{8}" required placeholder="e.g. 20251234" title="Enter 8-digit student number">
            </div>
            <div class="form-group">
                <label for="initials">Initials</label>
                <input type="text" id="initials" name="initials" required placeholder="e.g. Surname AA.">
            </div>
            <div class="form-group">
                <label for="st1">Semester Test 1</label>
                <input type="text" id="st1" name="st1" pattern="\d{1,3}" required placeholder="e.g. 78">
            </div>
            <div class="form-group">
                <label for="st2">Semester Test 2</label>
                <input type="text" id="st2" name="st2" pattern="\d{1,3}" required placeholder="e.g. 85">
            </div>
            <div class="form-group">
                <label for="quizzes">Quizzes</label>
                <input type="text" id="quizzes" name="quizzes" pattern="\d{1,3}" required placeholder="e.g. 92">
            </div>
            <div class="form-group">
                <label for="industryProject">Industry Project</label>
                <input type="text" id="industryProject" name="industryProject" pattern="\d{1,3}" required placeholder="e.g. 88">
            </div>
            <div class="form-group">
                <label for="miniProject">Mini Project</label>
                <input type="text" id="miniProject" name="miniProject" pattern="\d{1,3}" required placeholder="e.g. 75">
            </div>
            <div class="form-group">
                <label for="classTests">Class Tests</label>
                <input type="text" id="classTests" name="classTests" pattern="\d{1,3}" required placeholder="e.g. 90">
            </div>
            <div class="form-group">
                <input type="submit" value="Add Student">
            </div>
        </form>
    </div>
</body>
</html>
