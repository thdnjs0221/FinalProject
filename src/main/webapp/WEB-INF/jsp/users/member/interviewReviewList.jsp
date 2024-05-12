<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="interviewReviewListWrap">
    <div class="test">
        <div id="sri_section">
            <!-- 메뉴 리스트-->
            <div id="sri_gnb_wrap">
                <ul class="gnb">
                    <li class="only">
                        <a href="/zf_user/member/persons/main" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'main', '')">
                            <svg>
                                <use xlink:href="#svg_my_14"></use>
                            </svg>
                            <span class="txt"></span>
                        </a>
                    </li>
                    <li class="only">
                        <a href="<%=request.getContextPath() %>/user/info" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'mag', '')">
                            <svg>
                                <use xlink:href="#svg_my_16"></use>
                            </svg>
                            <span class="txt">개인정보관리</span>
                        </a>
                    </li>
                    <!--                     <li class=""> -->
                    <!--                         <a href="/zf_user/resume/resume-manage" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'resume', '')"> -->
                    <!--                             <svg> -->
                    <!--                                 <use xlink:href="#svg_my_17"></use> -->
                    <!--                             </svg> -->
                    <!--                             <span class="txt">이력서</span> -->
                    <!--                             <button type="button" class="btn_expand"><svg> -->
                    <!--                                     <use xlink:href="#svg_gnb_arrow"></use> -->
                    <!--                                 </svg><span class="blind">더보기</span></button> -->
                    <!--                         </a> -->
                    <!--                         <ul> -->
                    <!--                             <li class=""> -->
                    <!--                                 <a href="/zf_user/member/resume-manage/write?template_cd=1" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'resume_add', '')"> -->
                    <!--                                     <span class="txt">이력서 등록</span> -->
                    <!--                                 </a> -->
                    <!--                             </li> -->
                    <!--                             <li class=""> -->
                    <!--                                 <a href="/zf_user/resume/resume-manage" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'resume_manage', '')"> -->
                    <!--                                     <span class="txt">이력서 관리</span> -->
                    <!--                                 </a> -->
                    <!--                             </li> -->
                    <!--                         </ul> -->
                    <!--                     </li> -->
                    <li class="only">
                        <a href="<%=request.getContextPath() %>/user/resume/new" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'mag', '')">
                            <svg>
                                <use xlink:href="#svg_my_16"></use>
                            </svg>
                            <span class="txt">이력서 등록</span>
                        </a>
                    </li>
                    <li class="only">
                        <a href="<%=request.getContextPath() %>/user/resumeList" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'mag', '')">
                            <svg>
                                <use xlink:href="#svg_my_16"></use>
                            </svg>
                            <span class="txt">이력서 관리</span>
                        </a>
                    </li>
                    <li class="only">
                        <a href="<%=request.getContextPath() %>/user/scrapList" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'scrap', '')">
                            <svg>
                                <use xlink:href="#svg_my_18"></use>
                            </svg>
                            <span class="txt">스크랩/관심기업</span>
                        </a>
                    </li>
                    <li class="only">
                        <a href="<%=request.getContextPath() %>/user/applyList" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'apply', '')">
                            <svg>
                                <use xlink:href="#svg_my_20"></use>
                            </svg>
                            <span class="txt">입사지원현황</span>
                        </a>
                    </li>
                    <!--                     <li class=""> -->
                    <!--                         <a href="/zf_user/resume/resume-manage" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'interview_schedule', '')"> -->
                    <!--                             <svg> -->
                    <!--                                 <use xlink:href="#svg_my_21"></use> -->
                    <!--                             </svg> -->
                    <!--                             <span class="txt">면접현황</span> -->
                    <!--                             <button type="button" class="btn_expand"><svg> -->
                    <!--                                     <use xlink:href="#svg_gnb_arrow"></use> -->
                    <!--                                 </svg><span class="blind">더보기</span></button> -->
                    <!--                         </a> -->
                    <!--                         <ul> -->
                    <!--                             <li class=""> -->
                    <!--                                 <a href="/zf_user/member/resume-manage/write?template_cd=1" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'resume_add', '')"> -->
                    <!--                                     <span class="txt">면접일정</span> -->
                    <!--                                 </a> -->
                    <!--                             </li> -->
                    <!--                             <li class=""> -->
                    <!--                                 <a href="/zf_user/resume/resume-manage" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'resume_manage', '')"> -->
                    <!--                                     <span class="txt">면접후기</span> -->
                    <!--                                 </a> -->
                    <!--                             </li> -->
                    <!--                         </ul> -->
                    <!--                     </li> -->
                    <li class="only">
                        <a href="<%=request.getContextPath() %>/user/interviewScheduleList" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'apply', '')">
                            <svg>
                                <use xlink:href="#svg_my_20"></use>
                            </svg>
                            <span class="txt">면접일정</span>
                        </a>
                    </li>
                    <li class="only selected">
                        <a href="<%=request.getContextPath() %>/user/interviewReviewList" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'qna', '')">
                            <svg>
                                <use xlink:href="#svg_my_22"></use>
                            </svg>
                            <span class="txt">면접후기</span>
                        </a>
                    </li>
                    <li class="only">
                        <a href="<%=request.getContextPath() %>/myPage_PointCouponTicketView" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'point', '')">
                            <svg>
                                <use xlink:href="#svg_my_23"></use>
                            </svg>
                            <span class="txt">포인트/쿠폰/이용권</span>
                        </a>
                    </li>
                </ul>
            </div>
            <!-- 메뉴 리스트 끝 -->
            <!-- 메뉴명 -->
            <div id="sri_wrap">
                <div id="content">
                    <div class="wrapper_narrow support_announce">
                        <h1 class="wrap_title">면접 후기</h1>
                    </div>
                    <div class="wrap_interview_review">
                        <div class="review_cont">


                        </div>
                        <div class="top_btns">
                            <div class="align">
                            </div>
              
                        </div>


                        <span class="num_count">총 <b>${paging.totalRecord }</b>건</span>
                        <div class="list_review">
                            <c:set var="reviewList" value="${paging.dataList }" />
                            <c:if test="${empty reviewList }">
                                <div class="empty_data">
                                    <img src="//www.saraminimage.co.kr/sri/person/resume/img_empty_announce.png">
                                    <strong class="tit">작성한 면접후기가 없습니다.</strong>
                                </div>
                            </c:if>
                            <c:if test="${not empty reviewList }">
                                <c:forEach items="${reviewList }" var="review">
                                    <div class="box_review boxReview" data-ga-label="1">
                                        <div class="view_title">
                                            <strong class="txt_company">
                                                ${review.company.companyNm }
                                                <c:choose>
                                                    <c:when test="${review.intervPass eq '합격'}">
                                                        <span class="result pass" style="color: #4876ef;">${review.intervPass }</span>
                                                    </c:when>
                                                    <c:when test="${review.intervPass eq '불합격'}">
                                                        <span class="result pass" style="color: #f95e45;">${review.intervPass }</span>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <span class="result pass" style="color: black;">${review.intervPass }</span>
                                                    </c:otherwise>
                                                </c:choose>
                                            </strong>
                                            <c:choose>
                                                <c:when test="${review.intervApproval eq 'N'}">
                                                    <span class="txt_date">등록 불가</span>
                                                </c:when>
                                                <c:when test="${review.intervApproval eq 'Y'}">
                                                    <span class="txt_date">등록 완료</span>
                                                </c:when>
                                                <c:when test="${review.intervApproval eq 'W'}">
                                                    <span class="txt_date"><a href="<%=request.getContextPath()%>/user/interview/reviewEdit/${review.intrevNo}">수정하기</a></span>
                                                </c:when>
                                            </c:choose>
                                            <ul class="info_interview">
                                                <li>${review.recruit.rcrtField }</li>
                                            </ul>
                                            <button type="button" class="spr_review btn_view"><span class="blind">후기상세보기</span></button>
                                        </div>
                                        <div class="view_cont">
                                            <div class="info_emoticon">
                                                <dl class="review">
                                                    <dt>전반적 평가</dt>
                                                    <c:choose>
                                                        <c:when test="${review.intervOvrlEvltn eq '긍정적'}">
                                                            <dd class="spr_review smile">${review.intervOvrlEvltn }</dd>
                                                        </c:when>
                                                        <c:when test="${review.intervOvrlEvltn eq '불합격'}">
                                                            <dd class="spr_review sad">${review.intervOvrlEvltn }</dd>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <dd class="spr_review">${review.intervOvrlEvltn }</dd>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </dl>
                                                <dl class="review difficulty">
                                                    <dt>난이도</dt>
                                                    <dd class="spr_review">${review.intervDifficulty }</dd>
                                                </dl>
                                                <dl class="review result">
                                                    <dt>결과</dt>
                                                    <c:choose>
                                                        <c:when test="${review.intervPass eq '합격'}">
                                                            <dd class="spr_review smile" style="color: #4876ef;">${review.intervPass }</dd>
                                                        </c:when>
                                                        <c:when test="${review.intervPass eq '불합격'}">
                                                            <dd class="spr_review sad" style="color: #f95e45;">${review.intervPass }</dd>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <dd class="spr_review" style="color: black;">${review.intervPass }</dd>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </dl>
                                            </div>
                                            <div class="info_view">
                                                <strong class="tit_view">면접 유형</strong>
                                                <ul class="list_item">
                                                    <li>${review.interviewTypical }</li>
                                                </ul>
                                            </div>
                                            <div class="info_view">
                                                <strong class="tit_view">면접 인원</strong>
                                                <ul class="list_item">
                                                    <li>${review.intervPersonnel }</li>
                                                </ul>
                                            </div>
                                            <div class="info_view">
                                                <strong class="tit_view">전형 및 면접 진행 방식</strong>
                                                <p class="txt_desc">${review.intervProcess }</p>
                                            </div>
                                            <div class="info_view">
                                                <strong class="tit_view">면접 질문</strong>
                                                <ul class="list_question">
                                                    <li>${review.intervQuestion }</li>
                                                </ul>
                                            </div>
                                            <div class="info_view">
                                                <strong class="tit_view">TIP 및 특이사항</strong>
                                                <p class="txt_desc">${review.intervTip }</p>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </c:if>
                            <div>
                                <ul class="jstfyCntntCntr">
                                    <li colspan="7">${paging.pagingHTML }</li>
                                </ul>
                            </div>
                            <form:form modelAttribute="simpleCondition" method="get" id="searchForm">
                                <form:input type="hidden" path="searchType" readonly="readonly" placeholder="searchType" />
                                <form:input type="hidden" path="searchWord" readonly="readonly" placeholder="searchWord" />
                                <input type="hidden" name="page" readonly="readonly" placeholder="page" />
                            </form:form>
                        </div>
                    </div>
                    <div class="review_notice reviewNotice">
                        <strong class="tit_notice">안내 및 유의사항</strong>
                        <ul class="list_notice">
                            <li>- 후기 등록 안내<br>
                                ▶ 검수 전에는 ‘면접후기’에서 내용 수정이 가능합니다.<br>
                                ▶ 검수 후에는 내용 수정 및 삭제가 불가합니다.<br>
                                ▶ 부합하지 않는 글은(욕설/비방/광고성/반복적인 글/허위 사실/기타 취지에 어긋나는 글) 관리자에 의해 통보 없이 삭제될 수 있습니다.
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $(document).ready(function() {
        // 후기상세보기 버튼에 대한 클릭 이벤트 리스너 등록
        $('.btn_view').on('click', function() {
            // 클릭된 버튼의 부모 요소에서 view_cont 클래스를 가진 요소를 찾아 토글(toggle) 처리
            var $viewCont = $(this).closest('.box_review').find('.view_cont');
            
            // 닫혀있는 경우 모든 다른 .view_cont 요소를 닫음
            if (!$viewCont.is(':visible')) {
                $('.box_review .view_cont').hide();
            }
            
            // 클릭된 버튼에 대한 .view_cont 요소 토글 처리
            $viewCont.toggle();
        });
    });
</script>
<script>
    function fn_paging(page) {
        searchForm.page.value = page;
        searchForm.requestSubmit();
    }
    $(searchUI).on("click", "#searchBtn", function(event) {
        let inputs = $(this).parents("#searchUI").find(":input[name]");
        $.each(inputs, function(idx, ipt) {
            let name = ipt.name;
            let value = $(ipt).val();
            $(searchForm).find(`:input[name=\${name}]`).val(value);
            $(searchForm).submit();
        });

    });
</script>