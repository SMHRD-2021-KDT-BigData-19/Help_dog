package member;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/joinform")
public class jorinform extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		 request.setCharacterEncoding("UTF-8");
		 // 폼에서 전송된 데이터 가져오기
    	String user_name = request.getParameter("user_name");
    	String user_hp = request.getParameter("user_hp");
    	String user_id = request.getParameter("user_id");
    	String user_pw = request.getParameter("user_pw");
    	String user_mail = request.getParameter("user_mail");

        // 데이터베이스 연결 정보
        String jdbcUrl = "jdbc:oracle:thin:@project-db-campus.smhrd.com:1523:XE";
        String dbUser = "sc_21K_bigdata_hacksim_2";
        String dbPassword = "smhrd2";

        // JDBC 드라이버 로드
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            throw new ServletException("JDBC 드라이버 로드 실패", e);
        }

        try (Connection connection = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword)) {
            // 여기에서 데이터를 삽입하는 로직을 작성합니다.
            String sql = "INSERT INTO user_info (user_name, user_hp, user_id, user_pw, user_mail) VALUES (?, ?, ?, ?, ?)";
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            	preparedStatement.setString(1, user_name);
                preparedStatement.setString(2, user_hp);
                preparedStatement.setString(3, user_id);
                preparedStatement.setString(4, user_pw);
                preparedStatement.setString(5, user_mail);

                int rowsAffected = preparedStatement.executeUpdate();

                if (rowsAffected > 0) {
                    // 삽입 성공
                    response.setContentType("text/html");
                    PrintWriter out = response.getWriter();
                    out.println("<html><body>");
                    out.println("<h2>회원가입이 완료되었습니다.</h2>");
                    out.println("</body></html>");
                } else {
                    // 삽입 실패
                    response.setContentType("text/html");
                    PrintWriter out = response.getWriter();
                    out.println("<html><body>");
                    out.println("<h2>회원가입 실패했습니다.</h2>");
                    out.println("</body></html>");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new ServletException("데이터베이스 연결 또는 쿼리 실행 중 오류", e);
        }
	}

}
