<%@ page language="java" contentType="text/html; charset=UTF-8"
import="java.util.*, java.sql.*" 
pageEncoding="UTF-8"%>
   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
<!-- 주문하기 창에 띄울것 -->
<style>
.sub-title {
    background-color: #333;
    color: #fff;
    font-size: 16px;
    padding: 10px 10px 10px 15px;
}
.panel-heading{
    color: #333;
    background-color: #e6e6e6;
    border-radius: 0;
    border-color: #ddd;
    padding: 10px 15px;
    

}
div{
    display: block;
}
.panel-title{
    font-size: 16px;
}
.panel-body{
    
    border-top-color: #ddd;
    border-top: 1px solid #ddd;
}
.panel-default{
    border:1px solid #ddd;
}
.form-group
{
    
    margin-top: 15px; 
    
}
.control-label{

    padding-bottom: 3px;
}
.title{
    background-color: #333;
    color: #fff;
    font-size: 110%;
    padding: 10px 10px 10px 15px;
}
.cart-empty{
    background: #fff;
    text-align: center;
    padding: 50px 0;
    border: 1px solid #d9d9d9;
}
.cart-btn{
    margin-top: 10px;
    text-align: center;
    color: #fff;
    background-color: #DC1400;
    border-color: #DC1400;
    border-radius: 0;
}
.clearfix
{
    border: 1px solid #d9d9d9;
    padding : 10px 15px;
    text-align: center;
}
</style>
<body>

    <div class="container">
        <div class="row justify-content-start">

            <div class="col-sm-8">
                <div class="sub-title">
                    <span>결제하기</span>
                </div>
                <div class="panel-group">


                    <div class="panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">배달정보</h4>
                        </div>
                        <div class="panel-body">
                            <div class="form-horizontal">

                                <div class="form-group">
                                    <label for="address" class="col-sm-3 control-label">주소</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control address1" placeholder="배달 주소" name="memberAddress"
                                            name="address" ng-value="session_storage.checkout_input.address"
                                            ng-readonly="true" ng-disabled="true" value="현재위치받아야함"
                                            readonly="readonly" disabled="disabled">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <input type="text" class="form-control" placeholder="(필수)상세주소 입력"
                                            name="memberAddress1"  required="required">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="address" class="col-sm-3 control-label">휴대전화번호</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" value="${memberPhone }"
                                            name="memberPhone" required="required">
                                    </div>
                                </div>
                            </div>
                        </div>  

                        <div class="panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">주문시 요청사항</h4>
                            </div>

                            <div class="panel-collapse">
                              <div class="panel-body">
                                <textarea name="${payRequest}" class="form-control ng-pristine ng-untouched ng-valid ng-valid-maxlength" rows="3" name="comment"maxlength="100" placeholder="주문시 요청 사항이 있으시면 남겨주세요.">
                                
                                </textarea>
                                
                              </div>
                            </div>
                          </div>

                    </div>
                </div>



            </div>


            <div class="col-sm-4">
                <div>
                    <div class=title>
                        <span>결제 정보</span>
                    </div>
                    <div class="cart">
                        <div class="cart-empty">
                            
                            총 합계 : ${resultPrice} 원
                        </div>
                        <div class="clearfix" id="resultPrice">

                            배달요금 별도 : ${deliveryPrice } 원
                        </div>
                        <div class="cart-btn clearfix">
                            <a id="payButton" class="btu">결제하기</a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <input type="hidden" value="${storeName }" id="storeName">
    </div>

<script>
$(document).on('click','#payButton',function(){ //결제하기 버튼 아이디쓸것
    var title=$('#storeName').text();		//가게명
    console.log(title);
    var resultPrice=$('#resultPrice').val();
    var deliveryPrice=$('#deliveryPrice').val();//총 합계금액     
 	var IMP = window.IMP; // 생략가능
	IMP.init('imp51687071'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
	IMP.request_pay({
    pg : 'inicis', // version 1.1.0부터 지원.
    pay_method : 'card',
    merchant_uid : 'merchant_' + new Date().getTime(),
    name : 'title', //주문음식이름 
    amount : resultPrice+deliveryPrice, //가격 받아가야함 총 가격과 배달가격 합쳐서
    buyer_email : 'wjdqls7773@gmail.com', //사는 사람 이메일 받아가야됨
    buyer_name : '간신배', //이름도
    buyer_tel : '010-1234-5678', //번호도
    buyer_addr : '서울특별시 강남구 역삼동 KH정보교육원', //주소도
    buyer_postcode : '123-456',
    m_redirect_url : ''
}, function(rsp) {
    if ( rsp.success ) {
       var msg = '결제가 완료되었습니다. 주문 내역을 확인해주세요!';
       msg += '고유ID : ' + rsp.imp_uid;
       msg += '상점 거래ID : ' + rsp.merchant_uid;
       msg += '결제 금액 : ' + rsp.paid_amount;
       msg += '카드 승인번호 : ' + rsp.apply_num; 
       location.href="${path}/customer/payEnd.do?amount="+resultPrice+"&&memberId"+memberId+"&&name"+title; //보낼값들

    } else {
        var msg = '결제에 실패하였습니다.';
        msg += '실패 사유 : ' + rsp.error_msg;
    }
    alert(msg);
});
});

</script>
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>