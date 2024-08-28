<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
  src="https://code.jquery.com/jquery-3.7.1.js"
  integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
  crossorigin="anonymous"></script>
<title>Insert title here</title>

<script type="text/javascript">
	$(document).ready(function(){
		$("#btn_insert").on('click', function(){
			fn_insertSchool();
		});
	});
	
	// 입력
	function fn_insertSchool(){
		var frm = $("#frm").serialize();
		console.log(frm);
		$.ajax({
		    url: '/studentMng/insertMngSchoolInfoPage.do',
		    method: 'post',
			data : frm,
		    dataType : 'json',
  			beforeSend: function(jqXHR, settings){
  				console.log("beforeSend");
  			},		    
		    success: function (data, status, xhr) {
		        if(data.resultChk > 0){
		        	alert("저장되었습니다.");
		        	location.href="/studentMng/getStudentMngList.do";
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
	
	
</script>

</head>
<body>
	<form id="frm" name="frm">
		<table style="border: 1px solid #444444;">
			<tr>
				<th>학생이름</th>
				<td>
					<input type="text" id="studentName" name="studentName" value=""/>
				</td>
			</tr>
			<tr>
				<th>학교명</th>
				<td>
					<select id="schoolId" name="schoolId">
						<option value="">---학교를 선택해주세요---</option>
						<c:forEach var="schoolList" items="${schoolList }">
						<option value="${schoolList.schoolId }">${schoolList.schoolName }</option>
						</c:forEach>
					</select>			
				</td>
			</tr>
			<tr>
				<th>졸업여부</th>
				<td>
					<input type="text" id="studentGraduateYn" name="studentGraduateYn" value=""/>				
				</td>
			</tr>
		</table>
		<input type="button" id="btn_insert" name="btn_insert" value="등록"/>
	</form>
	
</body>
</html>
