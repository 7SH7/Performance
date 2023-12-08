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

        <div class="form-group">
            <button type="button" class="btn btn-danger" style="margin-right: 5px;" onclick="window.location.href='원하는 취소 시 이동할 URL'">취소</button>
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
