<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quiz</title>
    <link rel="stylesheet" href="style.css?v=123456">
    <script src="quiz.js" defer></script>
</head>
<body>
    <div class="quiz-container">
        <h2>Simple Quiz</h2>

        <form id="quizForm" action="QuizServlet" method="post">
            <div class="question" id="question1">
                <p>1. Which keyword is used to define a class in Java?</p>
                <label><input type="radio" name="q1" value="method">method</label><br>
                <label><input type="radio" name="q1" value="class">class</label><br>
                <label><input type="radio" name="q1" value="def">def</label><br>
                <label><input type="radio" name="q1" value="function">function</label>
            </div>
            
		    <div class="question" id="question2">
               <p>2. What is the correct HTML element for inserting a line break?</p>
               <label><input type="radio" name="q2" value="<lb>"> &lt;lb&gt;</label><br>
               <label><input type="radio" name="q2" value="<break>"> &lt;break&gt;</label><br>
               <label><input type="radio" name="q2" value="<br>"> &lt;br&gt;</label><br>
          	   <label><input type="radio" name="q2" value="<ln>"> &lt;ln&gt;</label>
            </div>

            <div class="question" id="question3">
                <p>3. Which of the following is a data type in Java?</p>
                <label><input type="radio" name="q3" value="integer">integer</label><br>
                <label><input type="radio" name="q3" value="real">real</label><br>
                <label><input type="radio" name="q3" value="number">number</label><br>
                <label><input type="radio" name="q3" value="text">text</label>
            </div>

            <div class="question" id="question4">
                <p>4. Which tag is used to create a hyperlink in HTML?</p>
                <label><input type="radio" name="q4" value="<a>">&lt;a&gt;</label><br>
                <label><input type="radio" name="q4" value="<link>">&lt;link&gt;</label><br>
                <label><input type="radio" name="q4" value="<href>">&lt;href&gt;</label><br>
                <label><input type="radio" name="q4" value="<url>">&lt;url&gt;</label>
            </div>

            <div class="question" id="question5">
                <p>5. What symbol is used for comments in Java?</p>
                <label><input type="radio" name="q5" value="/*">/* */</label><br>
                <label><input type="radio" name="q5" value="//">//</label><br>
                <label><input type="radio" name="q5" value="#">#</label><br>
                <label><input type="radio" name="q5" value="--">--</label>
            </div>

            <div class="button-container">
                <button type="button" id="prevBtn">Previous</button>
                <button type="button" id="nextBtn">Next</button>
                <button type="submit" id="submitBtn">Submit</button>
            </div>
        </form>
    </div>
</body>
</html>
