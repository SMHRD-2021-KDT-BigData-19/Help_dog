package member;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/loginForm")
public class loginForm extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        
        String userID = request.getParameter("user_id");
        String userPassword = request.getParameter("user_pw");

        // 데이터베이스 연결 정보
        String jdbcUrl = "jdbc:oracle:thin:@project-db-campus.smhrd.com:1523:XE";
        String dbUser = "sc_21K_bigdata_hacksim_2";
        String dbPassword = "smhrd2";

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            throw new ServletException("JDBC 드라이버 로드 실패", e);
        }

        try (Connection connection = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword)) {
            String sql = "SELECT * FROM user_info WHERE user_id = ? AND user_pw = ?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                preparedStatement.setString(1, userID);
                preparedStatement.setString(2, userPassword);

                try (ResultSet resultSet = preparedStatement.executeQuery()) {
                    if (resultSet.next()) {
                        // 로그인 성공
                        response.setContentType("text/html");
                        PrintWriter out = response.getWriter();
                        out.println("<html><body>");
                        out.println("<h2>로그인 성공!</h2>");
                        out.println("</html></body>");
                        
                        // 로그인 성공 시 회원가입 페이지로 리다이렉트
                        out.println("<script>");
                        out.println("window.location.href='회원가입.html';");
                        out.println("</script>");

                        out.println("</body></html>");
                    } else {
                        // 로그인 실패
                        response.setContentType("text/html");
                        PrintWriter out = response.getWriter();
                        out.println("<html><body>");
                        out.println("<h2>로그인 실패. 아이디 또는 비밀번호를 확인하세요.</h2>");
                        out.println("</body></html>");
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new ServletException("데이터베이스 연결 또는 쿼리 실행 중 오류", e);
        }
    }
}
