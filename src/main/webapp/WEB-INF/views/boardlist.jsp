<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ page import="com.example.board.BoardDAO, com.example.board.BoardVO, java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Performance Board</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<style>
		.card {
			margin-bottom: 20px;
			min-height: 500px; /* Change to minimum height */
			transition: transform 0.3s ease;
		}
		.card:hover {
			transform: scale(1.05);
		}
		.card-img-top {
			width: 100%;
			height: 15vw;
			object-fit: cover;
		}
		.card-body {
			display: flex;
			flex-direction: column;
			justify-content: space-between; /* Ensures buttons are pushed to the bottom */
		}
	</style>

</head>
<body>
<div class="container mt-4">
	<h1>공연 리스트</h1>
	<div class="row">
		<c:forEach items="${list}" var="performance">
			<div class="col-md-4">
				<div class="card">
					<img src="${performance.getPoster()}" class="card-img-top" alt="Performance Poster">
					<div class="card-body">
						<h5 class="card-title">${performance.getPrfnm()}</h5>
						<p class="card-text">
								${performance.getPrfpdfrom()} - ${performance.getPrfpdto()}<br>
								${performance.getFcltynm()}<br>
							Cast: ${performance.getPrfcast()}<br>
							Runtime: ${performance.getPrfruntime()}<br>
							Age Restriction: ${performance.getPrfage()}<br>
							Guidance: ${performance.getPcseguidance()}
						</p>
						<a href="../edit/${performance.getBid()}" class="btn btn-primary">Edit</a>
						<a href="../deleteok/${performance.getBid()}" class="btn btn-danger">Delete</a>
						<a href="../views/${performance.getBid()}" class="btn btn-info">View</a>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
	<a href="../add" class="btn btn-success">Add</a>
</div>

<!-- Bootstrap JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
