<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container" >
	<div class="col-lg-4"></div>
	<div class="col-lg-4">
		<div class="jumbotron" style="padding-top: 20px; margin-top: 80px;">
			<form method="post" action="login_processing">
				<h3 style="text-align: center;" >로그인</h3>
				<div class="form-group">
					<input type="text" placeholder="아이디"  name="loginId" 
						class="form-control" maxlength="20" />
				</div>
				<div class="form-group">
					<input type="password" placeholder="패스워드" name="password" 
						class="form-control" maxlength="20" />
				</div>
				<div>
					<button type="submit" class="btn btn-primary" style="width: 110px">
						<span class="glyphicon glyphicon-ok-circle"></span> 로그인
					</button>
					<a class="btn btn-danger" href="index" style="width: 110px">
						<i class="glyphicon glyphicon-ban-circle"></i> 돌아가기
					</a>
				</div>
			</form>
			<c:if test="${ param.error != null }">
				<div class="mt5">접속에 실패했습니다.</div>
			</c:if>
			<c:if test="${ param.joinSuccess != null }">
				<script>
					alert("회원가입에 성공했습니다. \n가입한 정보로 로그인 하시기 바랍니다.");
				</script>
			</c:if>
		</div>
	</div>
	<div class="col-lg-4"></div>
</div>
