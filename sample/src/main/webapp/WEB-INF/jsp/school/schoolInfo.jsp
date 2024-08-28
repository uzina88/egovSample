<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	table td{border:1px solid #444;}
</style>
<body>
	<table>
		<tr>
			<td>학교명</td>
			<td>${schoolInfo.schoolName }</td>
		</tr>
		<tr>
			<td>지역구</td>
			<td>${schoolInfo.schoolArea }</td>
		</tr>
		<tr>
			<td>학교 주소</td>
			<td>${schoolInfo.schoolAddr }</td>
		</tr>
		<tr>
			<td>학교 연락처</td>
			<td>${schoolInfo.schoolPhone }</td>
		</tr>
	</table>
	<a href="/school/getSchoolList.do">목록으로</a>
</body>
</html>