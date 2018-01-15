<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="container" >
	<div class="col-lg-4"></div>
	<div class="col-lg-5">
		<div class="jumbotron" style="padding-top: 20px; margin-top: 60px;">
			<form:form method="post" modelAttribute="userJoinModel">
			<div style="text-align: right">
					<label style="color:blue;">※ 는 필수사항입니다.</label>
			</div>
					<h3 style="text-align: center;" >회원가입</h3>
				<div class="form-group">
					<label>※ 이름:</label>
					<form:input path="name" class="form-control" />
					<form:errors path="name" class="error" />
				</div>
				<div class="form-group">
					<label>※ 아이디:</label>
					<form:input path="loginId" id="loginId" class="form-control" />
					<form:errors path="loginId" class="error" />
				</div>
				<div class="form-group">
					<label>※ 비밀번호:</label>
					<form:password path="password" class="form-control" />
					<form:errors path="password" class="error" />
				</div>
				<div class="form-group">
					<label>※ 비밀번호 재입력:</label>
					<form:password path="rePassword" class="form-control" />
					<form:errors path="rePassword" class="error" />
				</div>
				<div class="form-group">
					<label>※ 이메일:</label>
					<form:input path="email" class="form-control" />
					<form:errors path="email" class="error" />
				</div>
				<div class="form-group">
					<label>닉네임:</label>
					<form:input path="nickName" class="form-control" />
					<form:errors path="nickName" class="error" />
				</div>
				<div style="text-align:center;">
					<button type="submit" class="btn btn-primary" style="width: 110px">
						<span class="glyphicon glyphicon-user"></span> 가입하기
					</button>
					<a class="btn btn-danger" href="index" style="width: 110px">
						<i class="glyphicon glyphicon-ban-circle"></i> 취소
					</a>
				</div>
			</form:form>
				<div class="mt5">${ duplicate }</div>
		</div>
	</div>
	<div class="col-lg-5"></div>
</div>
