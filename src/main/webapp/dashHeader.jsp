<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<body>
	<div id="dash-wrap">
		<div class="dash-header">
            <h1 class="h_logo">
                <a href="">
                    <img src="" alt="">로고
                </a>
            </h1>
            <div class="dash-home">
                홈
            </div>
            <ul class="tabs">
                <li class="tab-link current" data-tab="tab-1">회원 관리</li>
                <li class="tab-link" data-tab="tab-2">예약 관리</li>
                <li class="tab-link" data-tab="tab-3">차량 관리</li>
                <details>
                    <summary>
                        게시판 관리
                    </summary>
                    <ul class="tabs">
                        <li class="tab-link" data-tab="tab-4">공지사항 게시판</li>
                        <li class="tab-link" data-tab="tab-5">이벤트 게시판</li>
                        <li class="tab-link" data-tab="tab-6">이용후기 게시판</li>
                        <li class="tab-link" data-tab="tab-7">문의 및 상담 게시판</li>
                    </ul>
                </details>
            </ul>

            <div class="dash-footer">
                <button class="logout">로그아웃</button>
            </div>
        </div>