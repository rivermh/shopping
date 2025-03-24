$(function() {
	/** 저장 버튼 클릭 시 이벤트 */
	$("#loginBtn").on("click", function() {
		// 입력값 체크
		if (!chkData("#memberEmail", "이메일을 ")) return;
		else if (!chkData("#memberPasswd", "비밀번호를 ")) return;
		else {
			$("#loginForm").attr({
				"method" : "post",
				"action" : "/login"
			});
			$("#loginForm").submit();
		}
	});
	
	$("#logoutBtn").on("click", function() {
		location.href = "/logout";
	});
})