<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fn" uri="jakarta.tags.functions"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content />
<meta name="author" content />
<title>Modern Business - Start Bootstrap Template</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="/resources/include/css/styles.css" rel="stylesheet" />
</head>
<body class="d-flex flex-column">
	<main class="flex-shrink-0">
		<!-- Navigation-->
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<div class="container px-5">
				<a class="navbar-brand" href="/">Start Bootstrap</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link" href="/">홈</a></li>
						<li class="nav-item"><a class="nav-link" href="/about">About</a></li>
						<li class="nav-item"><a class="nav-link" href="/contact">Contact</a></li>
						<li class="nav-item"><a class="nav-link" href="/pricing">Pricing</a></li>
						<li class="nav-item"><a class="nav-link" href="/faq">문의사항</a></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" id="navbarDropdownBlog" href="#"
							role="button" data-bs-toggle="dropdown" aria-expanded="false">login</a>
							<ul class="dropdown-menu dropdown-menu-end"
								aria-labelledby="navbarDropdownBlog">
								<li><a class="dropdown-item" href="/login">login</a></li>
								<li><a class="dropdown-item" href="/blog-post">Blog
										Post</a></li>
							</ul></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" id="navbarDropdownPortfolio"
							href="#" role="button" data-bs-toggle="dropdown"
							aria-expanded="false">Portfolio</a>
							<ul class="dropdown-menu dropdown-menu-end"
								aria-labelledby="navbarDropdownPortfolio">
								<li><a class="dropdown-item" href="/portfolio-overview">Portfolio
										Overview</a></li>
								<li><a class="dropdown-item" href="/portfolio-item">Portfolio
										Item</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
		</nav>
		<!-- Page content-->
		<section class="py-5">
			<div class="container px-5">
				<!-- Contact form-->
				<div class="bg-light rounded-3 py-5 px-4 px-md-5 mb-5">
					<div class="text-center mb-5">
						<div
							class="feature bg-primary bg-gradient text-white rounded-3 mb-3">
							<i class="bi bi-envelope"></i>
						</div>
						<h1 class="fw-bolder">회원가입</h1>
						<p class="lead fw-normal text-muted mb-0">안녕하세요 회원가입 페이지입니다.</p>
					</div>
					<div class="row gx-5 justify-content-center">
						<div class="col-lg-8 col-xl-6">
							<form id="f_joinForm">
								<!-- Full Name -->
								<div class="form-floating mb-3">
									<input class="form-control" id="memberName" name="memberName" type="text"
										placeholder="Your First Name" required /> <label
										for="memberName">이름</label>
								</div>

								<!-- Gender -->
								<div class="form-floating mb-3">
									<select class="form-select" id="memberGender"
										name="memberGender" required>
										<option value="" disabled selected>성별</option>
										<option value="male">남자</option>
										<option value="female">여자</option>
									</select> <label for="memberGender">성별</label>
								</div>

								<!-- Birth Date -->
								<div class="form-floating mb-3">
									<input class="form-control" id="memberBirth" name="memberBirth" type="text"
										placeholder="YYYYMMDD" required /> <label for="memberBirth">생년월일
										(YYYYMMDD)</label>
								</div>

								<!-- Email -->
								<div class="form-floating mb-3">
									<input class="form-control" id="memberEmail" name="memberEmail" type="email"
										placeholder="Enter your email" required /> <label
										for="memberEmail">이메일</label>
									<button type="button" class="btn btn-outline-secondary mt-2"
										onclick="checkEmail()">이메일 중복체크</button>
								</div>

								<!-- Password -->
								<div class="form-floating mb-3">
									<input class="form-control" id="memberPasswd" name="memberPasswd" type="password"
										placeholder="Enter your password" required /> <label
										for="memberPasswd">비밀번호</label>
									<div id="passwordError" class="text-danger d-none">
										Password: Please use 8-20 characters, including lowercase
										letters, numbers, and special characters.</div>
								</div>

								<!-- Confirm Password -->
								<div class="form-floating mb-3">
									<input class="form-control" id="memberPasswdConfirm" name="memberPasswdConfirm"
										type="password" placeholder="Confirm password" required /> <label
										for="memberPasswdConfirm">비밀번호 확인</label>
								</div>

								<!-- Country -->
								<div class="form-floating mb-3">
									<select class="form-select" id="memberCountry"
										name="memberCountry" required>
										<option value="" disabled selected>
											나라 선택</option>
										<option value="Korea">Korea</option>
										<option value="USA">USA</option>
										<option value="Japan">Japan</option>
										<option value="China">China</option>
										<option value="India">India</option>
										<option value="UK">UK</option>
										<option value="Germany">Germany</option>
										<option value="France">France</option>
										<option value="Brazil">Brazil</option>
										<option value="Australia">Australia</option>
									</select> <label for="memberCountry">Country</label>
								</div>
								<!-- Buttons -->
								<div class="d-grid gap-2">
									<input type="reset" class="btn btn-warning" id="resetBtn"
										value="Reset"> <input type="button"
										class="btn btn-primary" id="memberInsertBtn" value="Join">
								</div>
								<input type="hidden" id="emailChecked" value="false">
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>
	<!-- Footer-->
	<footer class="bg-dark py-4 mt-auto">
		<div class="container px-5">
			<div
				class="row align-items-center justify-content-between flex-column flex-sm-row">
				<div class="col-auto">
					<div class="small m-0 text-white">Copyright &copy; Your
						Website 2023</div>
				</div>
				<div class="col-auto">
					<a class="link-light small" href="#!">Privacy</a> <span
						class="text-white mx-1">&middot;</span> <a
						class="link-light small" href="#!">Terms</a> <span
						class="text-white mx-1">&middot;</span> <a
						class="link-light small" href="#!">Contact</a>
				</div>
			</div>
		</div>
	</footer>
	
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
	<script src="/resources/include/js/jquery-3.7.1.min.js"></script>
	<script src="/resources/include/js/common.js"></script>
	<script src="/resources/include/member/signUp.js"></script>
</body>
</html>
