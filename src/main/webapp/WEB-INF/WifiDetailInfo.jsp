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
<title>Wifi Detail info</title>
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
		
		<button>북마크 추가하기</button>
	</div>
	
	<div>
		<table id="wifiTable">
			<tr>
				<th>거리(Km)</th>
				<td></td>
			</tr>
			<tr>
				<th>관리번호</th>
				<td></td>
			</tr>
			<tr>
				<th>자치구</th>
				<td></td>
			</tr>
			<tr>
				<th>와이파이명</th>
				<td></td>
			</tr>
			<tr>
				<th>도로명주소</th>
				<td></td>
			</tr>
			<tr>
				<th>상세주소</th>
				<td></td>
			</tr>
			<tr>
				<th>설치위치(층)</th>
				<td></td>
			</tr>
			<tr>
				<th>설치유형</th>
				<td></td>
			</tr>
			<tr>
				<th>설치기관</th>
				<td></td>
			</tr>
			<tr>
				<th>서비스구분</th>
				<td></td>
			</tr>
			<tr>
				<th>망종류</th>
				<td></td>
			</tr>
			<tr>
				<th>설치년도</th>
				<td></td>
			</tr>
			<tr>
				<th>실내외구분</th>
				<td></td>
			</tr>
			<tr>
				<th>WIFI접속환경</th>
				<td></td>
			</tr>
			<tr>
				<th>X좌표</th>
				<td></td>
			</tr>
			<tr>
				<th>Y좌표</th>
				<td></td>
			</tr>
			<tr>
				<th>작업일자</th>
				<td></td>
			</tr>
		</table>
	</div>

</body>
</html>