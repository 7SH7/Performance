<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>공연 정보 추가</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

</head>
<body>

<div class="container mt-4">
    <h1>공연 정보 추가</h1>

    <form action="./addok" method="POST" class="form-horizontal">
        <div class="form-group">
            <label for="prfnm">공연 이름</label>
            <input type="text" class="form-control" name="prfnm"/>
        </div>

        <div class="form-group">
            <label for="prfpdfrom">공연 시작 날짜</label>
            <input type="date" class="form-control" name="prfpdfrom"/>
        </div>

        <div class="form-group">
            <label for="prfpdto">공연 종료 날짜</label>
            <input type="date" class="form-control" name="prfpdto"/>
        </div>

        <div class="form-group">
            <label for="fcltynm">시설 이름</label>
            <input type="text" class="form-control" name="fcltynm"/>
        </div>

        <div class="form-group">
            <label for="prfcast">출연진</label>
            <input type="text" class="form-control" name="prfcast"/>
        </div>

        <div class="form-group">
            <label for="prfruntime">런타임</label>
            <input type="text" class="form-control" name="prfruntime"/>
        </div>

        <div class="form-group">
            <label for="prfage">연령 등급</label>
            <input type="text" class="form-control" name="prfage"/>
        </div>

        <div class="form-group">
            <label for="pcseguidance">관람 안내</label>
            <input type="text" class="form-control" name="pcseguidance"/>
        </div>

        <div class="form-group">
            <label for="poster">포스터</label>
            <input type="text" class="form-control" name="poster"/>
        </div>

<%--        --%>

        <div class="form-group row">
            <label for="loaction" class="col-sm-2 col-form-label">지역</label>
            <div class="col-sm-10">
                <select name="loaction" id="loaction" class="form-control">
                    <option value="">-- 지역을 선택하세요 --</option>
                    <option value="강원도">강원도</option>
                    <option value="경기도">경기도</option>
                    <option value="충청도">충청도</option>
                    <option value="전라도">전라도</option>
                    <option value="경상도">경상도</option>
                    <option value="제주도">제주도</option>
                </select>
            </div>
        </div>

        <div class="form-group row">
            <label for="ispost" class="col-sm-2 col-form-label">포스터</label>
            <div class="col-sm-10">
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="ispost0" value="0" name="ispost" ${u.getPoster() == 0 ? 'checked' : ''}>
                    <label class="form-check-label" for="ispost0">O</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="ispost1" value="1" name="ispost" ${u.getPoster() == 1 ? 'checked' : ''}>
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



<%--        --%>


        <div class="form-group">
<%--            <button type="button" class="btn btn-danger" style="margin-right: 5px;" onclick="window.location.href='원하는 취소 시 이동할 URL'">취소</button>--%>
    <button type="button" class="btn btn-danger" onclick="history.back()">취소</button>
    <button type="submit" class="btn btn-success">완료</button>
        </div>
    </form>
</div>

<!-- Bootstrap JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>
