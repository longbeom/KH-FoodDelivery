<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<jsp:include page="/WEB-INF/views/common/adminHeader.jsp"></jsp:include>

<style>
	div#context-area{ min-height: 200px; }
</style>

<section>
	<div class="container">
		<div class="row">
			<div class="col-sm-10">
				<h4>${mq.qnaTitle }</h4>
			</div>
			<div class="col-sm-2">
			</div>
			<div class="col-sm-2">
				<p>ī�װ� <b>${mq.qnaCategory }</b></p>
			</div>
			<div class="col-sm-2">
				<p>�ۼ��� <b>${mq.memberId }</b></p>
			</div>
			<div class="col-sm-3">
				<p>�ۼ���<b>${mq.formatWriteDate }</b></p>
			</div>
			<div class="col-sm-4">				
			</div>			
			<div class="col-sm-1">
				<button class="btn">����</button>			
			</div>	
		</div>
		<hr/>
		<br/>	
		<div class="row">			
			<div class="col-sm-12" id="context-area">
				<p>${mq.qnaContent }</p>
			</div>
			<div class="col-sm-2"></div>
		</div>
		
		<c:if test="${!empty mqr}">
			<hr/>		
			<div class="row">
				<div class="col-sm-1">
					<p><b>������</b></p>
				</div>
				<div class="col-sm-9">
					<p>${mqr.formatWriteDate }</p>
				</div>
				<div class="col-sm-2">
					<button class="btn float-right">����</button>
					<button class="btn float-right">����</button>
				</div>
				<div class="col-sm-12">
					<p>${mqr.reviewContext }</p>
				</div>
			</div>
		</c:if>
		
		<c:if test="${empty mqr }">
			<hr/>
			<div class="row">			
				<div class="col-sm-11">
					<textarea rows="3" cols="100" style="resize: none" class="form-control"></textarea>
				</div>
				<div class="col-sm-1" style="margin-top: 20px">
					<button class="btn">���</button>
				</div>			
			</div>
		</c:if>
	</div>
</section>


<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>