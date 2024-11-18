<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="inner">
    <div id="board-main">
    	<div class="board-inner">
        <h1 class="board-title">
            공지사항
        </h1>

        <div class="board-read-box">
            <div class="board-top-info-box">
                <span class="writer"> 
                    <span class="span-point">
                        작성자
                    </span>
                    <span>
                        랜트어때.
                    </span>
                </span>
                <span class="write-date">
                    <span class="span-point">
                        등록일
                    </span>
                    <span>
                        ${article.NOTICEDATE }
                    </span>
                </span>
            </div>
            <form class="board-form"> 
                <div class="form-frame board-title-box">
                    <input type="text" id="NOTICETITLE" name="NOTICETITLE" value="${article.NOTICETITLE }" readonly>
                </div>

                <div class="form-frame board-info-box">
                    <textarea name="NOTICECONTENT" id="NOTICECONTENT" cols="30" rows="20" readonly>${article.NOTICECONTENT }</textarea>
                </div>

                <div class="btn-frame">
                    <button type="button" onclick="location.reload()">글 목록</button>
                </div>
            </form>
        </div>
    </div>
    </div>
</div>
