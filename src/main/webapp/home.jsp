<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.BufferedReader, java.io.InputStreamReader, java.net.HttpURLConnection, java.net.URL" %>
<%@ page import="org.apache.http.client.methods.HttpGet" %>
<%@ page import="org.apache.http.impl.client.CloseableHttpClient, org.apache.http.impl.client.HttpClients" %>
<%@ page import="org.apache.http.util.EntityUtils" %>
<%@ page import="javax.servlet.ServletContext" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home</title>
<style>
.btn{
	border: none;
	background-color: #565656;
	color:white;
	padding: 4px;
	border-radius: 4px;
}

#wifiTable {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#wifiTable td, #wifiTable th {
  border: 1px solid #ddd;
  padding: 8px;
}

#wifiTable tr:nth-child(even){background-color: #f2f2f2;}

#wifiTable tr:hover {background-color: #ddd;}

#wifiTable th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}
</style>
</head>
<body>

<%
    // ServletContext 객체를 통해 web.xml에서 apiKey 가져오기
    ServletContext context = getServletContext();
    String apiKey = context.getInitParameter("seoulApiKey");

    // 좌표 설정 (예: 서울시청)
    String lat = "37.5665";
    String lng = "126.9780";
    
    // API 요청 URL 생성
    String apiUrl = "http://openapi.seoul.go.kr:8088/" + apiKey + "/json/TbPublicWifiInfo/1/1000/" + lat + "/" + lng;

    // HTTP 요청 보내기 (HttpClient 사용)
    // ... (기존 코드)
%>

	<!--  

	<h1>Hello main~!</h1>
	<% out.println(java.time.LocalDateTime.now()); %>
	
	-->


	<h2>와이파이 정보 구하기</h2>
	
	<div>
		<a href="#">홈</a><span> | </span>
		<a href="#">위치 히스토리 목록</a><span> | </span>
		<a href="#">Open API 와이파이 정보 가져오기</a><span> | </span>
		<a href="#">북마크 보기</a><span> | </span>
		<a href="#">북마크 그룹 관리</a><span></span>
	</div>
	<br>
	
	<div>
		<span>LAT:</span>
		<input id="lat">
		<span>, LNT:</span>
		<input id="lnt">
		<button class="btn">내 위치 가져오기</button>
		<button class="btn">근처 WIPI 정보 보기</button>
	</div>
	<br>
	
	<div>
		<table id="wifiTable">
			<thead>
				<tr>
					<th>거리(Km)</th>
					<th>관리번호</th>
					<th>자치구</th>
					<th>와이파이명</th>
					<th>도로명주소</th>
					<th>상세주소</th>
					<th>설치위치(층)</th>
					<th>설치유형</th>
					<th>설치기관</th>
					<th>서비스구분</th>
					<th>망종류</th>
					<th>설치년도</th>
					<th>실내외구분</th>
					<th>WIFI접속환경</th>
					<th>x좌표</th>
					<th>y좌표</th>
					<th>작업일자</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</tbody>
		</table>
	</div>
	

</body>
</html>