<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<jsp:include page="/WEB-INF/views/common/adminHeader.jsp"></jsp:include>

<div class="container">	
	<div>
		<h4>���� ��û ��Ȳ</h4>
	</div>
	<div>
		<table class="table">
			<tr>
				<th>��ȣ</th>
				<th>���Ը�</th>
				<th>���� ��û��</th>
			</tr>
			<tr>
				<td>1</td>
				<td>���</td>
				<td>2019-02-26</td>
			</tr>
		</table>
	</div>
</div>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>