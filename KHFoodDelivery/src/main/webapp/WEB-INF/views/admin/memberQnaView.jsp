<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<jsp:include page="/WEB-INF/views/common/adminHeader.jsp"></jsp:include>

<section>
	<div class="container">
		<div class="row">
			<div class="col-sm-10">
				<h4>���� . ~~~~~~~~~~~~ ���ǵ帳�ϴ�.</h4>
			</div>
			<div class="col-sm-2">
			</div>
			<div class="col-sm-2">
				<p>ī�װ� <b>����</b></p>
			</div>
			<div class="col-sm-2">
				<p>�ۼ��� <b>��ȫ��</b></p>
			</div>
			<div class="col-sm-3">
				<p>2019-02-28 12:14</p>
			</div>
			<div class="col-sm-3">				
			</div>			
			<div class="col-sm-2">
				<button class="btn">����</button>
				<button class="btn">����</button>			
			</div>	
		</div>
		<hr/>
		<br/>	
		<div class="row">			
			<div class="col-sm-12">
				�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�
				�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�ñ��ؿ�
			</div>
			<div class="col-sm-2"></div>
		</div>
		<hr/>
		<div class="row">			
			<div class="col-sm-12">
				<textarea rows="3" cols="100" class="form-control"></textarea>
				<button>���</button>
			</div>			
		</div>
	</div>
</section>


<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>