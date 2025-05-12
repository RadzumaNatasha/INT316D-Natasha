<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entities.Lecturer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Student Marks Page</title>
        <style>
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background: linear-gradient(to right, #56ccf2, #2f80ed);
                color: #fff;
                margin: 0;
                padding: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                flex-direction: column;
                height: 100vh;
                text-align: center;
            }

            h1 {
                font-size: 2.5rem;
                margin-bottom: 20px;
                color: #ffffff;
            }

            table {
                width: 90%;
                max-width: 1000px;
                margin-bottom: 30px;
                border-collapse: collapse;
                box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
                background-color: #ffffff;
                border-radius: 10px;
                overflow: hidden;
            }

            table th, table td {
                padding: 14px;
                text-align: center;
                border: 1px solid #ddd;
            }

            table th {
                background-color: #6c5ce7;
                color: white;
            }

            table tr:hover td {
                background-color: #dfe6e9;
            }

            table td {
                background-color: #f8f9fa;
                color: #2d3436;
            }

            ul {
                list-style-type: none;
                padding: 0;
                margin-top: 20px;
            }

            ul li {
                margin-top: 20px;
            }

            ul li a {
                text-decoration: none;
                color: #fff;
                padding: 12px 25px;
                background-color: #6c5ce7;
                border-radius: 8px;
                font-size: 1.2rem;
                transition: background-color 0.3s;
            }

            ul li a:hover {
                background-color: #a29bfe;
            }

            @media (max-width: 768px) {
                h1 {
                    font-size: 1.8rem;
                }

                table th, table td {
                    padding: 10px;
                    font-size: 0.9rem;
                }

                ul li a {
                    padding: 10px 20px;
                    font-size: 1rem;
                }
            }
        </style>
    </head>
    <body>
        <h1>View All Student Marks</h1>

        <%
            List<Lecturer> lect = (List<Lecturer>)request.getAttribute("lect");
        %>

        <table>
            <thead>
                <tr>
                    <th>Student Number</th>
                    <th>Initials</th>
                    <th>Semester Test 1</th>
                    <th>Semester Test 2</th>
                    <th>Quizzes</th>
                    <th>Class Tests</th>
                    <th>Mini Project</th>
                    <th>Industry Project</th>
                </tr>
            </thead>
            <%
                for (int i = 0; i < lect.size(); i++) {
                    Lecturer lecturer = lect.get(i);
                    Long id = lecturer.getId();
                    String initials = lecturer.getInitials();
                    Long st1 = lecturer.getSt1();
                    Long st2 = lecturer.getSt2();
                    Long quizzes = lecturer.getQuizzes();
                    Long classTests = lecturer.getClassTests();
                    Long miniProject = lecturer.getMimiProject();
                    Long industryProject = lecturer.getIndustryProject();
            %>
            <tbody>
                <tr>
                    <td><%=id%></td>
                    <td><%=initials%></td>
                    <td><%=st1%></td>
                    <td><%=st2%></td>
                    <td><%=quizzes%></td>
                    <td><%=classTests%></td>
                    <td><%=miniProject%></td>
                    <td><%=industryProject%></td>
                </tr>
                <%}%>
            </tbody>
        </table>

        <ul>
            <li><a href="lecturerMenu.jsp">Lecturer's Menu</a></li>
        </ul>
    </body>
</html>
