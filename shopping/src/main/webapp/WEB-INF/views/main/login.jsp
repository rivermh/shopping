<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/main/common/common.jspf"%>
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
		<!-- Page content-->
		<section class="py-5">
			<div class="container px-5">
				<!-- Contact form-->
				<c:choose>
					<c:when test="${empty memberLogin}">
						<!-- 로그인 폼 -->
						<div class="bg-light rounded-3 py-5 px-4 px-md-5 mb-5">
							<div class="text-center mb-5">
								<div
									class="feature bg-primary bg-gradient text-white rounded-3 mb-3">
									<i class="bi bi-envelope"></i>
								</div>
								<h1 class="fw-bolder">로그인</h1>
								<p class="lead fw-normal text-muted mb-0">We'd love to hear
									from you</p>
							</div>
							<div class="row gx-5 justify-content-center">
								<div class="col-lg-8 col-xl-6">
									<form id="loginForm">
										<input type="hidden" name="memberTypeId" id="memberTypeId"
											value="1">

										<!-- Email input-->
										<div class="form-floating mb-3">
											<input class="form-control" id="memberEmail" type="text"
												placeholder="Please Enter Your Email Address"
												name="memberEmail" /> <label for="memberEmail">Email
												Address</label>
										</div>

										<!-- Password input-->
										<div class="form-floating mb-3">
											<input class="form-control" id="memberPasswd" type="password"
												placeholder="Please Enter Your Password" name="memberPasswd" />
											<label for="memberPasswd">Password</label>
										</div>

										<!-- Submit Button-->
										<div class="d-grid">
											<button class="btn btn-primary btn-lg" id="loginBtn"
												type="button">login</button>
										</div>

										<!-- Signup Button -->
										<div class="d-grid mt-3">
											<a class="btn btn-secondary btn-lg" href="/signup">Sign
												Up</a>
										</div>
									</form>
								</div>
							</div>
						</div>
					</c:when>

					<c:otherwise>
						<!-- 로그인 후 UI -->
						<div class="bg-light rounded-3 py-5 px-4 px-md-5 mb-5 text-center">
							<h1 class="fw-bolder">Welcome, ${memberLogin.memberName}!</h1>
							<div class="d-grid mt-4">
								<form action="/" class="homeForm">
									<button class="btn btn-primary btn-lg" type="submit">Go
										to Home</button>
								</form>
							</div>
						</div>
					</c:otherwise>
				</c:choose>

				<!-- Contact cards-->
				<div class="row gx-5 row-cols-2 row-cols-lg-4 py-5">
					<div class="col">
						<div
							class="feature bg-primary bg-gradient text-white rounded-3 mb-3">
							<i class="bi bi-chat-dots"></i>
						</div>
						<div class="h5 mb-2">Chat with us</div>
						<p class="text-muted mb-0">Chat live with one of our support
							specialists.</p>
					</div>
					<div class="col">
						<div
							class="feature bg-primary bg-gradient text-white rounded-3 mb-3">
							<i class="bi bi-people"></i>
						</div>
						<div class="h5">Ask the community</div>
						<p class="text-muted mb-0">Explore our community forums and
							communicate with other users.</p>
					</div>
					<div class="col">
						<div
							class="feature bg-primary bg-gradient text-white rounded-3 mb-3">
							<i class="bi bi-question-circle"></i>
						</div>
						<div class="h5">Support center</div>
						<p class="text-muted mb-0">Browse FAQ's and support articles
							to find solutions.</p>
					</div>
					<div class="col">
						<div
							class="feature bg-primary bg-gradient text-white rounded-3 mb-3">
							<i class="bi bi-telephone"></i>
						</div>
						<div class="h5">Call us</div>
						<p class="text-muted mb-0">Call us during normal business
							hours at (555) 892-9403.</p>
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
	<script src="/resources/include/js/jquery-3.7.1.min.js"></script>
	<script src="/resources/include/js/common.js"></script>
	<script src="/resources/include/login/login.js"></script>
	<script>
       $(function() {
           let errorMsg = "${errorMsg}";
           if(errorMsg) {
               alert(errorMsg);
               errorMsg = "";
           }
       });     
       $(function() {        
           if (${not empty memberLogin}) {            
               let memberName = "${memberLogin.memberName}";
               alert("Welcome! This is ${memberLogin.memberName}'s quiz.");
           } 
       });      
   </script>
</body>
</html>
