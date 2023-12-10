<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>공연 정보 수정</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>

<div class="container mt-4">
	<h1>Edit Performance</h1>
	<form:form modelAttribute="u" method="POST" action="../editok" accept-charset="UTF-8" class="form-horizontal">
		<h2>공연 정보 수정</h2>
		<form:hidden path="bid" />

		<div class="form-group row">
			<label for="prfnm" class="col-sm-2 col-form-label">공연 이름</label>
			<div class="col-sm-10">
				<form:input path="prfnm" class="form-control" value="${u.getPrfnm()}" />
			</div>
		</div>

		<div class="form-group row">
			<label for="prfpdfrom" class="col-sm-2 col-form-label">공연 시작 날짜</label>
			<div class="col-sm-10">
				<form:input path="prfpdfrom" type="date" class="form-control" value="${u.getPrfpdfrom()}" />
			</div>
		</div>

		<div class="form-group row">
			<label for="prfpdto" class="col-sm-2 col-form-label">공연 종료 날짜</label>
			<div class="col-sm-10">
				<form:input path="prfpdto" type="date" class="form-control" value="${u.getPrfpdto()}" />
			</div>
		</div>

		<div class="form-group row">
			<label for="fcltynm" class="col-sm-2 col-form-label">시설 이름</label>
			<div class="col-sm-10">
				<form:input path="fcltynm" class="form-control" value="${u.getFcltynm()}" />
			</div>
		</div>

		<div class="form-group row">
			<label for="prfcast" class="col-sm-2 col-form-label">출연진</label>
			<div class="col-sm-10">
				<form:input path="prfcast" class="form-control" value="${u.getPrfcast()}" />
			</div>
		</div>

		<div class="form-group row">
			<label for="prfruntime" class="col-sm-2 col-form-label">런타임</label>
			<div class="col-sm-10">
				<form:input path="prfruntime" class="form-control" value="${u.getPrfruntime()}" />
			</div>
		</div>

		<div class="form-group row">
			<label for="prfage" class="col-sm-2 col-form-label">연령 등급</label>
			<div class="col-sm-10">
				<form:input path="prfage" class="form-control" value="${u.getPrfage()}" />
			</div>
		</div>

		<div class="form-group row">
			<label for="pcseguidance" class="col-sm-2 col-form-label">관람 안내</label>
			<div class="col-sm-10">
				<form:input path="pcseguidance" class="form-control" value="${u.getPcseguidance()}" />
			</div>
		</div>

		<div class="form-group row">
			<label for="poster" class="col-sm-2 col-form-label">포스터</label>
			<div class="col-sm-10">
				<form:input path="poster" class="form-control" value="${u.getPoster()}" />
			</div>
		</div>

		<%--		--%>
		<div class="form-group row">
			<label for="location" class="col-sm-2 col-form-label">지역</label>
			<div class="col-sm-10">
				<select name="location" id="location" class="form-control">
					<option value="">-- 지역을 선택하세요 --</option>
					<option value="강원도" ${u.getLocation() == '강원도' ? 'selected' : ''}>강원도</option>
					<option value="경기도" ${u.getLocation() == '경기도' ? 'selected' : ''}>경기도</option>
					<option value="충청도" ${u.getLocation() == '충청도' ? 'selected' : ''}>충청도</option>
					<option value="전라도" ${u.getLocation() == '전라도' ? 'selected' : ''}>전라도</option>
					<option value="경상도" ${u.getLocation() == '경상도' ? 'selected' : ''}>경상도</option>
					<option value="제주도" ${u.getLocation() == '제주도' ? 'selected' : ''}>제주도</option>
				</select>
			</div>
		</div>

		<div class="form-group row">
			<label for="doimg" class="col-sm-2 col-form-label">포스터</label>
			<div class="col-sm-10">
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="checkbox" id="ispost0" value="0" name="doimage" ${u.getDoimage() == 0 ? 'checked' : ''}>
					<label class="form-check-label" for="ispost0">O</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="checkbox" id="ispost1" value="1" name="doimage" ${u.getDoimage() == 1 ? 'checked' : ''}>
					<label class="form-check-label" for="ispost1">X</label>
				</div>
			</div>
		</div>

		<div class="form-group row">
			<label for="agerange" class="col-sm-2 col-form-label">나이 범위</label>
			<div class="col-sm-10">
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" id="agerange1" value="10대~20대" name="agerange" ${u.getAgerange() == '10대~20대' ? 'checked' : ''}>
					<label class="form-check-label" for="agerange1">10대~20대</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" id="agerange2" value="30대~40대" name="agerange" ${u.getAgerange() == '30대~40대' ? 'checked' : ''}>
					<label class="form-check-label" for="agerange2">30대~40대</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" id="agerange3" value="50대~" name="agerange" ${u.getAgerange() == '50대~' ? 'checked' : ''}>
					<label class="form-check-label" for="agerange3">50대~</label>
				</div>
			</div>
		</div>



		<%--		--%>


		<div class="form-group row">
			<div class="col-sm-10">
				<button type="button" class="btn btn-danger" onclick="history.back()">취소</button>
				<button type="submit" class="btn btn-success">완료</button>
			</div>
		</div>
	</form:form>
</div>

<!-- Bootstrap JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>
