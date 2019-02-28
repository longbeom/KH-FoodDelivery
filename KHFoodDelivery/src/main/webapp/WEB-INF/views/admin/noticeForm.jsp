<%@ page language="java" contentType="text/html; charset=UTF-8"
import="java.util.*, java.sql.*" 
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<jsp:include page="/WEB-INF/views/common/adminHeader.jsp"></jsp:include>

<div class="container">
	<div class="row">
		<div class="col-md-12">
			<form
				action="${pageContext.request.contextPath}/admin/noticeForm.do"
				method="post">
				<table class="table table-bordered board" id="notice_table" name="notice_table">

					<tbody>
						<!-- <form action="" method="post" encType="multiplart/form-data" name="board_form"> -->
						<tr>
							<th colspan="2">제목</th>
							<td><input type="text" placeholder="제목을 입력하세요. "
								name="noticeTitle" class="form-control" /></td>
							<th>작성자</th>
							<td><input type="text" class="form-control"
								name="noticeWriter" readonly="readonly" value="관리자" /></td>
						</tr>
						<tr aria-rowspan="3">
							<th>첨부파일</th>
							<td colspan="2"><input type="file" name="NoticeupFile"
								id="NoticeupFile1"> <input type="file"
								name="NoticeupFile" id="NoticeupFile1"></td>
							<th>첨부파일</th>
							<td colspan="2"><input type="file" name="NoticeupFile"
								id="NoticeupFile1"> <input type="file"
								name="NoticeupFile" id="NoticeupFile1"></td>
					</tbody>
				</table>
				<div id="Noticetinymce-form">
					<fieldset class="form-group">
						<textarea class="form-control" placeholder="내용을 입력하세요."
							id="noticeEditor" rows="10" name="noticeContent">
 						 </textarea>
					</fieldset>
				</div>


				<button name="noticeListBtn" class="btn btn-default float-left" onclick="location.href='${path}'">목록</button>
				<button type="submit" onclick="return validate();" class="btn btn-default float-right">등록</button>
				
			</form>

		</div>
	</div>
</div>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>