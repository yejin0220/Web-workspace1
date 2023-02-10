package com.kh.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Pizza
 */
@WebServlet("/test.do")
public class Pizza extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Pizza() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1) POST방식일경우 : 전달값 중에 한글이 있을 경우 인코딩 처리(UTF-8)해주기
		request.setCharacterEncoding("UTF-8");
		
		//2) 요청시 전달값 뽑기 및 데이터 가공처리 => 전달받을 데이터를 변수나 객체로 변환 및 기록
		String pizzaname = request.getParameter("pizzaname");
		String[] tops = request.getParameterValues("top");
		String[] sides = request.getParameterValues("side");
		
		
		
		
		int price =0;
		
		switch(pizzaname) {
		case "치즈피자" : price += 5000; break;
		case "콤비네이션피자" : price+= 6000;  break;
		case "포테이토피자" : price+= 5000; break;
		case "고구마피자" : price+= 5000; break;
		case "불고기피자" : price+= 5000; break;
		}
		
		if(tops != null) {
			for(String top : tops) {
				switch(top){
				case"고구마무스" : price += 1000; break;
				case"콘크림무스" : price += 1500; break;
				case"파인애플토핑" :
				case"치즈토핑" : 
				case"치즈바이트" : price += 2000; break;
				case"치즈크러스트" : price += 3000; break;	
				}
			}
		}
		
		if(sides != null) {
			for(String side : sides) {
				//모든 사이드메뉴 가격이 5000이라는 가정
				price += 5000;
				
			}
		}
		
		
		
		
		
		
		//4) 요청처리 후 사용자가 보게 될 응답페이지를 만들기
		request.setAttribute("pizzaname", pizzaname); //치즈피자,  ...
		request.setAttribute("tops", tops);			  //[고구마무스, 파인애플토핑...]
		request.setAttribute("sides", sides);		  //[치즈오븐스파게티, 오븐구이통닭....]
		request.setAttribute("price", price);
		
		
		//5) 응답할 뷰 객체 만들기
		RequestDispatcher view = request.getRequestDispatcher("views/pizzaorderPage.jsp");
		
		
		
		view.forward(request, response);
		
		//doGet(request, response);
	}

}
