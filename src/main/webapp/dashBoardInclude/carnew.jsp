<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="adm-box">
    <div class="dash-title-box">
        <h2>회원 정보 관리</h2>
    </div>

    <div class="adm-form-box">
        <h4 class="adm-form-title">등록 차량 등록</h4>
        <form class="adm-form" enctype="multipart/form-data" method="post">
            <div class="form-frame"> 
                <div class="label-tag">차량 등록 번호</div>
                <input type="text" id="CAR_NUMBER" name="CAR_NUMBER" placeholder="숫자 4자리까지만 가능" >
            </div>

            <div class="form-frame">
                <div class="label-tag">차종</div>
                <input type="text" id="CAR_TYPE" name="CAR_TYPE" placeholder="경차, 준중형, 중형, 준대형, SUV 중 기술">
            </div>

            <div class="form-frame">
                <div class="label-tag">차량 이름</div>
                <input type="text" id="CAR_NAME" name="CAR_NAME" placeholder="차량 이름 입력">
            </div>
            
            <div class="form-frame">
                <div class="label-tag">연료</div>
                <input type="text" id="CAR_FUEL" name="CAR_FUEL" placeholder="LPG, 가솔린, 경차, 디젤, 전기, 하이브리드만 기술">
            </div>

            <div class="form-frame">
                <div class="label-tag">제조사</div>
                <input type="text" id="CAR_COMPANY" name="CAR_COMPANY" placeholder="제조사 입력">
            </div>

            <div class="form-frame">
                <div class="label-tag">연식</div>
                <input type="text" id="CAR_YEAR" class="s-input s-mr" name="CAR_YEAR" placeholder="연식 4자리 숫자만 가능">
                <div class="label-tag">인승</div>
                <input type="text" id="CAR_SEATER" class="s-input" name="CAR_SEATER" placeholder="인승 입력">
            </div>

            <div class="form-frame">
                <div class="label-tag">차종보험연령</div>
                <input type="text" id="CAR_INSURANCEAGE" class="s-input s-mr" name="CAR_INSURANCEAGE" placeholder="보험연령 입력">
                <div class="label-tag">가격</div>
                <input type="text" id="CAR_PRICE" class="s-input" name="CAR_PRICE" placeholder="가격 입력">
            </div>

            <div class="form-frame img-frame">
                <div class="label-tag">차량 이미지</div>
                <input type="file" id="CAR_IMAGE" name="CAR_IMAGE" onchange="readURL(this);" multiple>
                <img id="preview"/>
            </div>

			<input type="text" id="CAR_STATUS" name="CAR_STATUS" value="예약가능" hidden>

            <div class="btn-frame">
            	<button type="submit" onclick="enroll_carInput()">등록</button>
    			<button type="button" onclick="back()">취소</button>
            </div>
            
        </form>
    </div>
</div>

<script>

    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                document.getElementById('preview').style.display = 'block';
                document.getElementById('preview').setAttribute('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]);
        }
    }
    
    function enroll_carInput() {
        // FormData 객체 생성
        var formData = new FormData();
        
        // 차량 정보 데이터 추가
        formData.append('CAR_NUMBER', $('#CAR_NUMBER').val());
        formData.append('CAR_TYPE', $('#CAR_TYPE').val());
        formData.append('CAR_NAME', $('#CAR_NAME').val());
        formData.append('CAR_FUEL', $('#CAR_FUEL').val());
        formData.append('CAR_COMPANY', $('#CAR_COMPANY').val());
        formData.append('CAR_YEAR', $('#CAR_YEAR').val());
        formData.append('CAR_SEATER', $('#CAR_SEATER').val());
        formData.append('CAR_INSURANCEAGE', $('#CAR_INSURANCEAGE').val());
        formData.append('CAR_PRICE', $('#CAR_PRICE').val());
        formData.append('CAR_STATUS', $('#CAR_STATUS').val());
        
        // 이미지 파일 추가
        var files = $('#CAR_IMAGE')[0].files;
        for (var i = 0; i < files.length; i++) {
            formData.append('CAR_IMAGE', files[i]);
        }

        // AJAX 요청 보내기
        $.ajax({
             url: "carInsertForm.bo",
             type: "POST",
             data: formData,
             processData: false, 
             contentType: false, 
             cache: false,
             async: false,
             success: function() {
            	 back();
//             	 $("#content").html();
             },
             error: function() {
                 $("#content").html("Error loading page.");
             }
         });
    }

    
    function back() {
        $.ajax({
             url:"dashBoardInclude/carmng.jsp", //전 페이지
             type: "GET",
             async : false,
             success: function(data) {
                 $("#content").html(data);
             },
             error: function() {
                 $("#content").html("Error loading page.");
             }
         });
     }
</script>
