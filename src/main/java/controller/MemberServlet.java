package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import dto.MemberInfo;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/members.do")
public class MemberServlet extends HttpServlet {
    static List<MemberInfo> memberInfos = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        memberInfos.clear();

        memberInfos = new ArrayList<>(List.of(
                new MemberInfo(1, "고길동", "gogildong@sm.com", true),
                new MemberInfo(2, "둘리", "dulli@dn.com", true),
                new MemberInfo(3, "또치", "bird@sks.com", true),
                new MemberInfo(4, "도우너", "gganddabbia@ms.com", true),
                new MemberInfo(5, "마이콜", "impoorblackman@art.com", false),
                new MemberInfo(6, "홍길동", "honggildong@korea.kr", true),
                new MemberInfo(7, "홍박사", "hongdr@dr.com", false),
                new MemberInfo(8, "홍학생", "hongst@st.com", false),
                new MemberInfo(9, "홍학", "honghak@nature.com", true),
                new MemberInfo(10, "홍합", "honghab@food.com", false)));

        req.setAttribute("members", memberInfos);
        req.getRequestDispatcher("/WEB-INF/views/membersList.jsp").forward(req, resp);

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
