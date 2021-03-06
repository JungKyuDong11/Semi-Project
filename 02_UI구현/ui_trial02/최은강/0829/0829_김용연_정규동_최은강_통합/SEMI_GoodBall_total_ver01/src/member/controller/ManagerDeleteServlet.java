package member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.MemberService;
import member.model.vo.Member;

/**
 * Servlet implementation class ManagerDeleteServlet
 */

@WebServlet(urlPatterns="/deleteMember.me",name="ManagerPwdEncryptServlet")
public class ManagerDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManagerDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Member loginUser = (Member)request.getSession().getAttribute("loginUser");
		String encryptPwd = request.getParameter("encryptPwd");
		
		if(encryptPwd.equals(loginUser.getPwd())) {
			
			int result = new MemberService().deleteMember(loginUser);
			
			request.getSession().invalidate();
			
			request.getRequestDispatcher("WEB-INF/views/member/manager/moveIndex.jsp").forward(request, response);
		} else {
			request.setAttribute("msg", "회원탈퇴에 실패하였습니다.");
            request.getRequestDispatcher("WEB-INF/views/common/errorPage.jsp").forward(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}