<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String pizzaname = (String)request.getAttribute("pizzaname"); 
	String[] tops = (String[])request.getAttribute("tops");
	String[] sides = (String[])request.getAttribute("sides");
	int price = (int)request.getAttribute("price");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>피자주문 페이지</title>
<style>
	#pizza{color:red;}
	#top{color:green;}
	#side{color:blue;}
	#last{color : pink;}
</style>
</head>
<body>


	<h3>주문 내역</h3>
	
	피자는 <span id="pizza"><%= pizzaname %></span>, 
	토핑은 
	
	
			토핑은 <span id="top">
			<%if(tops == null){%>
				없고
				
			<%}else {%>
				<%= String.join(",",tops) %>
							
			<%}%>
			</span>
			
			
			사이드는
			<span id="side">
			<%if(sides == null){%>
				없고
				
			<%}else {%>
				<%= String.join(",",sides) %>
					
						
			<%}%>
			</span>
			주문하셨습니다. 
		
		
		
		
			
				<%--< %switch(pizzaname){
						case "치즈피자" : sum += 5000; break;
						case "콤비네이션피자" : sum += 6000;  break;
						case "포테이토피자" : sum += 5000; break;
						case "고구마피자" : sum += 5000; break;
						case "불고기피자" : sum += 5000; break;
					}%>
					
					<%for(int i=0; i<tops.length; i++){
						if(tops[i].equals("고구마무스")){
							sum += 1000;
						}else if(tops[i].equals("콘크림무스")){
							sum+= 1500;
						}else if(tops[i].equals("파인애플토핑")){
							sum+=2000;
						}else if(tops[i].equals("치즈토핑")){
							sum += 2000;
						}else if(tops[i].equals("치즈크러스트")){
							sum += 2000;
						}else if(tops[i].equals("치즈바이트")){
							sum += 3000;
						}
					}%>
					
					<% for(int i=0; i<sides.length; i++){
						if(sides[i].equals("오븐구이통닭")){
							sum += 9000;
						}else if(sides[i].equals("치킨스틱&윙")){
							sum+= 4900;
						}else if(sides[i].equals("치즈오븐스파게티")){
							sum+= 4000;
						}else if(sides[i].equals("새우링&웨지감자")){
							sum+= 3500;
						}else if(sides[i].equals("갈릭포테이토")){
							sum+= 3000;
						}else if(sides[i].equals("콜라")){
							sum+= 1500;
						}else if(sides[i].equals("사이다")){
							sum+= 1500;
						}else if(sides[i].equals("갈릭소스")){
							sum+= 500;
						}else if(sides[i].equals("피클")){
							sum+= 300;
						}else if(sides[i].equals("핫소스")){
							sum+= 100;
						}else if(sides[i].equals("파마산 치즈가루")){
							sum+= 100;
						}
					}
					%>  --%>
	
	<br><br>
	<br><br>
	
	
	
  <h3>총합 : <%= price %></h3>
	
	
	
	
	
	
	<br><br>
	
	<h3 id="last">즐거운 식사시간 되세요~</h3>

















</body>
</html>