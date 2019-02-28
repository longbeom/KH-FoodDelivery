<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<jsp:include page="/WEB-INF/views/common/adminHeader.jsp"></jsp:include>

<style>
	thead#tableHead {
		background-color: #4D4D4D;
		color: rgba(255, 255, 255, .5);
	}
</style>

<script>
	function fn_modal(){
		$('#storeModal').modal();
	}
	function fn_appConfirm(no){
		location.href="${path}/admin/confirmApp.do?no="+no;
	}
</script>

<section>
	<div class="container">	
		<div>
			<h4>���� ��û ��Ȳ</h4>
		</div>
		<div>
			<table class="table table-hover">
				<thead id="tableHead">
					<tr>			
						<th>����</th>
						<th>������</th>
						<th>���ָ�</th>
						<th>�ּ�</th>
						<th>���� ��û��</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach begin="1" end="5">
						<tr>
							<td onclick="fn_modal()">ġŲ</td>
							<td onclick="fn_modal()">���</td>
							<td onclick="fn_modal()">��ȫ��</td>
							<td onclick="fn_modal()">����Ư���� ������ ���ﵿ</td>
							<td onclick="fn_modal()">2019-02-26</td> 
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</section>


<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>





<!-- ��� ���� -->
<div class="modal" id="storeModal" role="dialog">
	<div class="modal-dialog">
		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">���� ����</h4>
				<button type="button" class="close" data-dismiss="modal">��</button>
			</div>
			<div class="modal-body">
				<table class="table">
					<tr>
						<th>����</th>
						<td>ġŲ</td>						
					</tr>
					<tr>
						<th>������</th>
						<td>���</td>
					</tr>
					<tr>
						<th>���ָ�</th>
						<td>��ȫ��</td>
					</tr>
					<tr>
						<th>����ó</th>
						<td>010-1234-1234</td>
					</tr>
					<tr>
						<th>�ּ�</th>
						<td>����Ư���� ������ ���ﵿ</td>
					</tr>
					<tr>
						<th>���� ��û��</th>
						<td>2019-02-26</td>
					</tr>	
					<tr>
						<th>���� �Ұ�</th>
						<td>����</td>
						<!-- <textarea>����</textarea> -->
					</tr>
					<tr>
						<td colspan='2' align="center">
							<button type="button" class="btn btn-outline-success" onclick="fn_appConfirm()">����</button>
							<button type="button" class="btn btn-outline-danger" data-dismiss="modal">����</button>
						</td>
					</tr>
				</table>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">�ݱ�</button>
			</div>
		</div>  
	</div>
</div>
