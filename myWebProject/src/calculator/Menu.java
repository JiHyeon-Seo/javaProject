package calculator;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Menu
 */
public class Menu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Menu() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String mainmenu = request.getParameter("mainmenu");
		String sidemenu = request.getParameter("sidemenu");
		String drink = request.getParameter("drink");
		
		int burgerPrice = 0;
		int sidePrice = 0;
		int drinkPrice = 0;
		
		switch(mainmenu) {
		case "한우버거":  burgerPrice = 5000;
		case "밥버거" : burgerPrice = 4500;
		case "치즈버거" : burgerPrice = 4000;
		}
		
		switch(sidemenu) {
		case "감자튀김" : sidePrice = 1500;
		case "어니언링" : sidePrice = 1700;
		}
		
		switch(drink) {
		case "콜라" : drinkPrice = 1000;
		case "사이다" : drinkPrice = 1000;
		case "커피" : drinkPrice = 1500;
		case "밀크쉐이크" : drinkPrice = 2500;
		}
		
		
		
		PrintWriter out = response.getWriter();
		out.println("<html><head><title>result</title></head>");
		out.println("<body>");
		out.println("<h1>감사합니다.</h1>");
		out.println("<span style='color:red'>" + mainmenu +"</span>" + "," + sidemenu + "," + drink + "을/를 주문하셨습니다<br>");
		out.println("총 결제금액은" +(burgerPrice + sidePrice + drinkPrice)+ "입니다.");
		out.println("</body>");
		out.println("</html>");
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
