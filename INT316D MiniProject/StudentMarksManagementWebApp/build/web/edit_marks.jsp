<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Student's Mark</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #4facfe, #00f2fe);
            color: #fff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .form-box {
            background-color: rgba(255, 255, 255, 0.1);
            padding: 35px 30px;
            border-radius: 16px;
            width: 90%;
            max-width: 500px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
        }

        h1 {
            text-align: center;
            margin-bottom: 25px;
        }

        label {
            display: block;
            margin-bottom: 6px;
            font-weight: bold;
            color: #e0f7fa;
        }

        input[type="text"] {
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 8px;
            margin-bottom: 20px;
            font-size: 1rem;
            color: #333;
        }

        input[type="text"]:focus {
            outline: none;
            box-shadow: 0 0 5px #fff;
        }

        input[type="submit"] {
            width: 100%;
            padding: 12px;
            font-size: 1rem;
            background-color: #ffffff;
            color: #2c3e50;
            border: none;
            border-radius: 8px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #d0f0f9;
        }

        @media (max-width: 480px) {
            h1 {
                font-size: 1.6rem;
            }
        }
    </style>
</head>
<body>
    <div class="form-box">
        <h1>Update Student's Mark</h1>
        <form action="UpdateServlet.do" method="POST">
            <label for="id">Student Number</label>
            <input type="text" id="id" name="id" placeholder="Enter student number" required>

            <label for="test">Test to Update</label>
            <input type="text" id="test" name="test" placeholder="e.g. ST1, Quiz, Project" required>

            <label for="newMarks">Updated Marks</label>
            <input type="text" id="newMarks" name="newMarks" placeholder="Enter new marks (0–100)" required>

            <input type="submit" value="Update">
        </form>
    </div>
</body>
</html>
