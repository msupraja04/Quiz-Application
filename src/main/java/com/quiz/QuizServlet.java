package com.quiz;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

@WebServlet("/QuizServlet")
public class QuizServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int score = 0;

        try {
            Connection con = DBConnection.getConnection();

            // Step 1: Get all questions from DB
            PreparedStatement ps = con.prepareStatement("SELECT id, correct_answer FROM questions");
            ResultSet rs = ps.executeQuery();

            // Step 2: Compare each user's answer with correct answer
            while (rs.next()) {
                int qid = rs.getInt("id");
                String correct = rs.getString("correct_answer");
                String userAnswer = request.getParameter("q" + qid);

                if (correct.equals(userAnswer)) {
                    score++;
                }
            }

            // Step 3: Forward score to result.jsp
            request.setAttribute("score", score);
            RequestDispatcher rd = request.getRequestDispatcher("result.jsp");
            rd.forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
