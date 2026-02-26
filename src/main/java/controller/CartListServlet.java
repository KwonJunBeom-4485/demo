package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import dto.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/cartList.do")
public class CartListServlet extends HttpServlet {

    List<Product> cartList = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        cartList.clear();

        cartList = new ArrayList<>(List.of(
                new Product("야광공룡", 199000, 100),
                new Product("창세의 결정", 119000, 8),
                new Product("구름빵", 3000, 500),
                new Product("저에요..", 155784888, 5)));

        req.setAttribute("cartList", cartList);
        req.getRequestDispatcher("/WEB-INF/views/cartSummary.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // TODO Auto-generated method stub
        super.doPost(req, resp);
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
