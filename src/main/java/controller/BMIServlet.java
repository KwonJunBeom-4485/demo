package controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/bmi.do")
public class BMIServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // cm, kg 단위
        double height = Double.parseDouble(req.getParameter("height"));
        double weight = Double.parseDouble(req.getParameter("weight"));
        double bmi = weight / (Math.pow(height / 100, 2));

        String result;
        if (bmi >= 30) {
            result = "고도비만";
            req.setAttribute("result", result);
        } else if (bmi >= 25 && bmi < 30) {
            result = "비만";
            req.setAttribute("result", result);
        } else if (bmi >= 23 && bmi < 25) {
            result = "과체중";
            req.setAttribute("result", result);
        } else if (bmi >= 18.5 && bmi < 23) {
            result = "정상";
            req.setAttribute("result", result);
        } else if (bmi < 18.5) {
            result = "저체중";
            req.setAttribute("result", result);
        }

        req.setAttribute("bmi", String.format("%.2f", bmi));

        req.getRequestDispatcher("/WEB-INF/views/bmiResult.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        double height = Double.parseDouble(req.getParameter("height")) / 100;
        double weight = Double.parseDouble(req.getParameter("weight"));

        double bmi = weight / (Math.pow(height, 2));
        String result;
        if (bmi >= 30) {
            result = "고도비만";
            req.setAttribute("result", result);
        } else if (bmi >= 25 && bmi < 30) {
            result = "비만";
            req.setAttribute("result", result);
        } else if (bmi >= 23 && bmi < 25) {
            result = "과체중";
            req.setAttribute("result", result);
        } else if (bmi >= 18.5 && bmi < 23) {
            result = "정상";
            req.setAttribute("result", result);
        } else if (bmi < 18.5) {
            result = "저체중";
            req.setAttribute("result", result);
        }

        req.setAttribute("bmi", String.format("%.2f", bmi));
        req.getRequestDispatcher("/WEB-INF/views/bmiResult.jsp").forward(req, resp);
    }

    @Override
    public void destroy() {
        // TODO Auto-generated method stub
        super.destroy();
    }

    @Override
    public void init() throws ServletException {
        // TODO Auto-generated method stub
        super.init();
    }

}
