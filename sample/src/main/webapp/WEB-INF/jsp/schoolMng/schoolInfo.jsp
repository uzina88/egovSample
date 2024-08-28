<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
  src="https://code.jquery.com/jquery-3.7.1.js"
  integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
  crossorigin="anonymous"></script>
<title>Insert title here</title>

<script type="text/javascript">
	$(document).ready(function(){
		$("#btn_delete").on('click', function(){
		 	 fn_deleteSchool();
		});
	});
	
	function fn_deleteSchool(){
  		// form 태그안에 input 태그값 json으로 만들어줌(시리얼라이즈)
  		var frm = $("#frm").serialize();

  		$.ajax({
  			type : 'POST',
  			url : '/schoolMng/deleteMngSchoolInfo.do',
  			data : frm,//{'schoolId':14},
  			dataType : 'json',
  			beforeSend: function(jqXHR, settings){
  				console.log("beforeSend");
  			},
  			success : function(data, textStatus, jqXHR){
  				if(data.resultChk > 0){
  					alert("삭제되었습니다.");	
  				}
  				
  			},  				
  			error: function(jqXHR, textStatus, errorThrown){
  				console.log("error");
  			},
  			complete : function(jqXHR, textStatus){
  				console.log("complete");
  			}
  		});  		
  	}
	
	function fn_update(){
		var frm = $("#frm")
		frm.attr("action","/schoolMng/registerSchool.do");
		frm.submit(); // 값을 보냄		
	}
</script>
</head>
<body>
	<form id="frm" name="frm" >
		<input type="hidden" id="schoolId" name="schoolId" value="${schoolInfo.schoolId }" />
	</form>
		
		<table style="border: 1px solid #444444;">
			<tr>
				<th style="border: 1px solid #444444;">학교명</th>
				<td style="border: 1px solid #444444;">${schoolInfo.schoolName }</td>
				
			</tr>
			<tr>
				<th style="border: 1px solid #444444;">지역구</th>
				<td style="border: 1px solid #444444;">${schoolInfo.schoolArea }</td>
			</tr>
			<tr>
				<th style="border: 1px solid #444444;">학교 주소</th>
				<td style="border: 1px solid #444444;">${schoolInfo.schoolAddr }</td>
			</tr>
			<tr>
				<th style="border: 1px solid #444444;">학교 연락처</th>
				<td style="border: 1px solid #444444;">${schoolInfo.schoolPhone }</td>
			</tr>
			
		</table>
	
	<input type="button" id="btn_delete" name="btn_delete" value="삭제"/>
	<input type="button" id="btn_update" name="btn_update" value="수정" onclick="javascript:fn_update();"/>
	
	<a href="/schoolMng/getSchoolList.do">목록으로</a>
</body>
</html>