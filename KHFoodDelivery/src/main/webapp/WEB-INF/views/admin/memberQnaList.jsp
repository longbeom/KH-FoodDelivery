<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<jsp:include page="/WEB-INF/views/common/adminHeader.jsp"></jsp:include>

<style>
	h4#titleText{ display: inline; }	
	div#qnaList{ margin-top: 15px; }
	thead#tableHead{ background-color: #4D4D4D; color: rgba(255, 255, 255, .5); }
	.pnt{ cursor: pointer; }
	div#qna-search{ margin-top: 20px; }
	div#qna-sort{ float: right; }
	table#qnaTable{ table-layout: fixed; word-wrap: break-word; }
	table#qnaTable th, table#qnaTable td{ text-align: center; vertical-align: middle; }
	
	table#table-sort{ border: 1px solid #444444; border-collapse: collapse; }
	table#table-sort th{ background-color: #4D4D4D; color: rgba(255, 255, 255, .5); border: 1px solid #444444; padding: 0; }
	table#table-sort td{ border: 1px solid #444444; padding: 0; }
	
	input[type=checkbox], input[type=radio] {  }
	input[type=checkbox]:checked, input[type=radio]:checked {background: #ffffff;}
		
</style>

<script>
	function fn_qnaView(){
		location.href="${path}/admin/memberQnaView.do";
	}
</script>

<section>
	<div class="container">	
		<h4 id="titleText">ȸ�� ���� ���� </h4>
		
		<div class="row">			
			<div class="col-sm-6">
				<div class="input-group" id="qna-search">
					<form class="form-controll navbar-right" role="search" action="" method="get">
						<div class="form-group">
							<div class="input-group">
								<input type="text" class="form-control" name="keyword" id="keyword" autocomplete="off" placeholder="������ �Է��ϼ���"/>
								<span class="input-group-btn">
									<button type="submit" class="btn btn-default" id="searchBar">�˻�</button>
								</span>
							</div>
						</div>
					</form>
				</div>
			</div>			
			<div class="col-sm-6">
				<div id="qna-sort">
					<form action="" method="get">
						<table id="table-sort">
							<tbody>
								<tr>
									<th>�亯</th>
									<td><input type="radio" id="radio1" name="radios" value="all" checked/><label for="radio1">��ü</label></td>
									<td><input type="radio" id="radio2" name="radios" value="complete"/><label for="radio2">�Ϸ�</label></td>
									<td><input type="radio" id="radio3" name="radios" value="incomplete"/><label for="radio3">���</label></td>														
								</tr>
								<tr>
									<th>ī�װ�</th>
									<td><input type="checkbox" id="chk1" checked/><label for="chk1">��ü</label></td>
									<td><input type="checkbox" id="chk2"/><label for="chk2">����</label></td>
									<td><input type="checkbox" id="chk3"/><label for="chk3">ȸ��</label></td>
									<td><input type="checkbox" id="chk4"/><label for="chk4">�ֹ�</label></td>
									<td><input type="checkbox" id="chk5"/><label for="chk5">����Ʈ</label></td>
									<td><input type="checkbox" id="chk6"/><label for="chk6">����</label></td>
								</tr>
							</tbody>
						</table>
					</form>
				</div>	
			</div>
			</div>
			
			
			<div id="qnaList">
				<table class="table table-hover" id="qnaTable">
					<thead id="tableHead">
						<tr>	
							<th>ī�װ�</th>	
							<th style="width: 60%">����</th>
							<th>�ۼ���</th>
							<th>��¥</th>	
							<th>�亯����</th>						
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${mqList}" var="mq">
							<tr class="pnt" onclick="fn_qnaView()">
								<td>${mq.qnaCategory }</td>
								<td>${mq.qnaTitle }</td>
								<td>${mq.memberId }</td>
								<td>${mq.formatWriteDate }</td>
								<td><img src="${path }/resources/images/admin/complete.png" width="30px" height="30px"/></td>
								<%-- <td><img src="${path }/resources/images/admin/incomplete.png" width="30px" height="30px"/></td> --%>
							</tr>				
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</section>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>