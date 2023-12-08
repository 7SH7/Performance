<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Performance</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        .info-section {
            background-color: #f8f9fa;
            border-radius: 5px;
            padding: 20px;
            margin-bottom: 10px;
        }
        .info-header {
            font-size: 1.5em;
            margin-bottom: 15px;
        }
        .performance-poster {
            width: 100%;
            height: auto;
            margin-bottom: 15px;
        }
        .booking-section {
            margin-top: 20px;
        }
        /* Adjust the following breakpoint if necessary for your specific design */
        @media (max-width: 768px) {
            .poster-col, .details-col {
                flex: 0 0 100%;
                max-width: 100%;
            }
            .booking-section {
                order: 3; /* Move booking section below details on small screens */
            }
        }
        /* Additional custom styles */
    </style>
</head>
<body>

<div class="container mt-4">
    <div class="row">
        <!-- Poster Column -->
        <div class="col-md-8 col-12 poster-col">
            <div class="info-section">
                <!-- Poster Image -->
                <img src="${u.getPoster()}" alt="Performance Poster" class="performance-poster">
            </div>
        </div>
        <!-- Details Column -->
        <div class="col-md-4 col-12 details-col">
            <div class="info-section">
                <h1 class="info-header">${u.getPrfnm()}</h1>
                <!-- Performance Details -->
                <p>공연 기간: ${u.getPrfpdfrom()} ~ ${u.getPrfpdto()}</p>
                <p>공연 시간: ${u.getPrfruntime()}</p>
                <p>시설 이름: ${u.getFcltynm()}</p>
                <p>출연진: ${u.getPrfcast()}</p>
                <p>연령 등급: ${u.getPrfage()}</p>
                <p>관람 안내: ${u.getPcseguidance()}</p>
                <!-- Additional fields as needed -->
            </div>
            <!-- Ticket Booking Section -->
            <div class="info-section booking-section">
                <h2 class="info-header">티켓 예매하기</h2>
                <!-- Booking Details -->
                <button type="button" class="btn btn-primary btn-lg btn-block">예매하기</button>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <button type="button" class="btn btn-secondary" onclick="history.back()">돌아가기</button>
        </div>
    </div>
</div>

<!-- Bootstrap JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>
