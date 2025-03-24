function validateEmail(memberEmail) {
    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailRegex.test(memberEmail);
}

function checkEmail() {
    var memberEmail = $('#memberEmail').val();
    // 이메일 유효성 검사 추가
    if (!validateEmail(memberEmail)) {
        alert("올바른 이메일 주소를 입력하세요.");
        $('#memberEmail').focus();
        return;
    }
    
    $.ajax({
            url: '/emailCheck',
            type: 'post',
            data: { memberEmail: memberEmail },
            success: function (cnt) {
                if (cnt == 0) {
                    alert("사용 가능한 이메일입니다!");
                    $('#emailChecked').val('true'); // 이메일 중복 체크 완료 표시
                } else {
                    alert("이미 사용 중인 이메일입니다. 다른 이메일을 입력하세요.");
                    $('#memberEmail').val('');
                    $('#emailChecked').val('false'); // 이메일 중복 체크 실패 시 초기화
                }
            },
            error: function () {
                alert("오류가 발생했습니다.");
            }
        });
};


function validateForm() {
    var memberName = $("#memberName").val();
    var memberGender = $("#memberGender").val();
    var memberBirth = $("#memberBirth").val();
    var memberEmail = $("#memberEmail").val();
    var memberPasswd = $("#memberPasswd").val();
    var memberPasswdConfirm = $("#memberPasswdConfirm").val();
    var memberCountry = $("#memberCountry").val();
    var emailChecked = $('#emailChecked').val();
	

function validateName(memberName) {
    var nameRegex = /^[가-힣a-zA-Zぁ-んァ-ン一-龥]{2,20}$/;
    return nameRegex.test(memberName);
}


 function validateGender(memberGender) {
    return memberGender !== "" && (memberGender === "male" || memberGender === "female");
    }

function validateBirth(memberBirth) {
    var birthWithoutHyphen = memberBirth.replace(/-/g, ''); 
    var birthRegex = /^\d{4}\d{2}\d{2}$/;
    return birthRegex.test(birthWithoutHyphen);
}

function validateEmail(memberEmail) {
    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailRegex.test(memberEmail);
}

function validatePassword(memberPasswd) {
    var passwordRegex = /^(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&/\\#^_~+=\[\]{}|:;,.-])[a-z\d@$!%*?&/\\#^_~+=\[\]{}|:;,.-]{8,20}$/;
    return passwordRegex.test(memberPasswd);
}



     if (!validateName(memberName)) {
        alert("이름은 한글 또는 영어로 2~10자 이내로 입력하세요.");
        $("#memberName").focus();
        return false;
    }
    
    if (!validateGender(memberGender)) {
        alert("성별을 선택하세요.");
        $("#memberGender").focus();
        return false;
    }

    
    if (!validateBirth(memberBirth)) {
       alert("생년월일을 YYYYMMDD 형식으로 입력하세요.");
       $("#memberBirth").focus();
       return false;
    }
    
    if (!validateEmail(memberEmail)) {
       alert("올바른 이메일 주소를 입력하세요.");
       $("#memberEmail").focus();
       return false;
    }
    
     if (emailChecked !== 'true') {
        alert("이메일 중복 확인을 진행하세요.");
        return false;
    }
    
    
  if (!validatePassword(memberPasswd)) {
    alert("비밀번호는 8~20자 길이여야 하며, 소문자, 숫자, 특수문자를 포함해야 합니다.");
    $("#passwordError").show(); // Show error message
    $("#memberPasswd").focus();
    return false;
} else {
    $("#passwordError").hide(); // Hide error message
}


    
    
    if (memberPasswd !== memberPasswdConfirm) {
        alert("비밀번호가 일치하지 않습니다.");
        $("#memberPasswdConfirm").focus();
        return false;
    }
    
    if (memberCountry === "") {
        alert("국가를 선택하세요.");
        $("#memberCountry").focus();
        return false;
    }
    

    return true;
}

$(document).ready(function() {
    $("#memberInsertBtn").click(function() {
        if (validateForm()) {
            if (confirm("회원가입을 완료하시겠습니까?")) {
                alert("회원가입이 완료되었습니다!");
                $("#f_joinForm").attr({
                    "method": "post",
                    "action": "/memberInsert"
                });
                $("#f_joinForm").submit();
            }
        }
    });
});
