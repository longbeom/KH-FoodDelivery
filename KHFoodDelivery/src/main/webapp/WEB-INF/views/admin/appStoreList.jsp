<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%-- <%@ page import="java.util.List, com.kh.food.owner.store.model.vo.Store" %> --%>
<%-- <%
	List<Store> appStoreList = (List)request.getAttribute("appStoreList");  
%> --%>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<jsp:include page="/WEB-INF/views/common/adminHeader.jsp"></jsp:include>

<style>
	thead#tableHead {
		background-color: #4D4D4D;
		color: rgba(255, 255, 255, .5);
	}
	.pnt { cursor: pointer; }
	tr#btnGroup td{
		margin-top: 15px;
	}
	
</style>

<script> 
	function fn_modal(num){				
		$.ajax({
			type: "POST",
			url: "${path}/admin/selectAppStore.do?no=" + num,
			data: JSON,
			success: function(data){
				$('#storeModal').modal();
				$('#mdCategory').val(data.storeCategory);
				$('#mdName').val(data.storeName)
				$('#mdOwner').val(data.businessName);
				$('#mdPhone').val(data.storePhone);
				$('#mdAddress').val(data.storeAddress);
				$('#mdAppDate').val(data.formatAppDate);
				$('#mdProfile').val(data.storeProfile);
			}
		});
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
					<c:forEach items="${appStoreList}" var="store">
						<c:if test="${store.isConfirm eq 0}">
							<tr class="pnt" onclick="fn_modal(${store.businessCode})">
								<td>${store.storeCategory }</td>
								<td>${store.storeName }</td>
								<td>${store.businessName }</td>
								<td>${store.storeAddress }</td>
								<td>${store.formatAppDate }</td>
							</tr>
						</c:if>						
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
			<div class="modal-body" style="height: 1000px;">
				<table class="table">
					<tr>
						<th>����</th>
						<td><input class="form-control" type="text" id="mdCategory" readonly/></td>						
					</tr>
					<tr>
						<th>������</th>
						<td><input class="form-control" type="text" id="mdName" readonly/></td>
					</tr>
					<tr>
						<th>���ָ�</th>
						<td><input class="form-control" type="text" id="mdOwner" readonly/></td>
					</tr>
					<tr>
						<th>����ó</th>
						<td><input class="form-control" type="text" id="mdPhone" readonly/></td>
					</tr>
					<tr>
						<th>�ּ�</th>
						<td><input class="form-control" type="text" id="mdAddress" readonly/></td>
					</tr>
					<tr>
						<th>���� ��û��</th>
						<td><input class="form-control" type="text" id="mdAppDate" readonly/></td>
					</tr>	
					<tr>
						<th>���� �Ұ�</th>					
						<td><textarea cols="10" rows="4" class="form-control" id="mdProfile" style="resize: none" readonly></textarea></td> 
					</tr>
					<tr id="btnGroup">
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