<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quiz Result</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #74ABE2, #5563DE);
            color: white;
            text-align: center;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }
        .result-box {
            background: rgba(255, 255, 255, 0.15);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 0 10px rgba(0,0,0,0.3);
        }
        h1 {
            margin-bottom: 20px;
        }
        button {
            padding: 10px 20px;
            border: none;
            background: white;
            color: #5563DE;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        button:hover {
            background: #74ABE2;
            color: white;
        }
    </style>
</head>
<body>
    <div class="result-box">
        <h1>🎯 Quiz Completed!</h1>
        <h2>Your Score: <%= request.getAttribute("score") %> / 5</h2>
        <form action="logout" method="post">
            <button type="submit">Logout</button>
        </form>
    </div>
</body>
</html>
