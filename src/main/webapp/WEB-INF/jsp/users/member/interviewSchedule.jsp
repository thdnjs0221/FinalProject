<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="interviewScheduleWrap">
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
                    <li class="only   selected">
                        <a href="<%=request.getContextPath() %>/user/interviewScheduleList" onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'apply', '')">
                            <svg>
                                <use xlink:href="#svg_my_20"></use>
                            </svg>
                            <span class="txt">면접일정</span>
                        </a>
                    </li>
                    <li class="only">
                        <a href="<%=request.getContextPath() %>/user/interviewReviewList"  onmousedown="pushDataLayer('ga_lead', 'pc_my_gnb', 'qna', '')">
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
            <div id="sri_wrap">
                <div id="content">
                    <div class="wrapper_narrow my_interview myInterview">
                        <h1 class="wrap_title">면접 일정</h1>
                        <div class="interview_list_header">
                            <div class="total_interviews">총 <b>${paging.totalRecord }</b>건</div>
                            <!-- 면접 리스트 소트/검색 -->
                            <div class="search_interview">
                                <form action="/zf_user/member/interview-schedule/list" id="form_search">
                                    <div class="search_areaa">
                                        <div id="searchUI" class="row g-3 d-flex justify-content-center">
                                            <div class="col-auto">
                                                <form:input path="simpleCondition.searchWord" class="form-control" placeholder="키워드를 입력하세요." />
                                            </div>
                                            <div class="col-autoo">
                                                <input type="button" value="검색" id="searchBtn" class="btn btn-primary" />
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <!-- // 면접 리스트 소트/검색 -->
                        </div>
                        <!-- 면접일정 리스트 영역 -->
                        <div class="interview_list">
                            <span class="blind">면접 요청 리스트</span>
                            <!-- 면접 요청 리스트 없을 경우 -->
                            <c:set var="interviewScList" value="${paging.dataList }" />
                            <c:if test="${empty interviewScList }">
                                <div class="empty_data">
                                    <img src="//www.saraminimage.co.kr/sri/person/resume/img_empty_announce.png">
                                    <strong class="tit">면접 일정이 없습니다.</strong>
                                </div>
                            </c:if>
                            <!-- 면접일정 리스트가 있는 경우 -->
                            <c:if test="${not empty interviewScList }">
                                <c:forEach items="${interviewScList }" var="interview">
                                    <div class="activity_list">
                                        <span class="blind">공고 리스트</span>
                                        <div class="list_recruit">
                                            <ul>
                                        <input type="hidden" name="intrNo" value="${interview.intrNo }">
                                                <li class="row ">
                                                    <div class="col_corp">
                                                        ${interview.intrDate }
                                                    </div>
                                                    <div class="col_informs">
                                                        <strong class="tit"><a href="<%=request.getContextPath() %>/recruit/${interview.rcrtNo}" onmousedown="gaEvent('reclist_favor_company', 'rec_item')"> ${interview.recruit.rcrtTitle }
                                                            </a>
                                                        </strong>
                                                        <ul class="inform">
                                                            <li><b>면접일정 :</b> ${interview.intrIntdate }</li>
                                                            <li><b>면접장소 :</b> ${interview.intrPlace }</li>
                                                            <li><b>면접유형 :</b> ${interview.code.comCodeNm }</li>
                                                        </ul>
                                                    </div>
                                                     <div class="col_btns colBtns">
                                                     <c:choose>
                                                     <c:when test="${interview.intrReview eq 'N'}">
                                                     	<a href="<%= request.getContextPath()%>/user/interview/reviewForm/${interview.intrNo}">
                                                     		<button type="button" id="addBtn" class="btn btn-primary">면접후기 등록</button>
                                                     	</a>
                                                     </c:when>
                                                     <c:otherwise>
                                                     	<button type="button" id="addBtn" class="btn btn-secondary">면접후기 등록</button>
                                                     </c:otherwise>
                                                     </c:choose>
                                                	</div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </c:forEach>
                            </c:if>
                            <!-- 페이징 -->
                            <div>
                                <ul>
                                    <li colspan="7" class="jstfyCntntCntr">${paging.pagingHTML }</li>
                                </ul>
                            </div>
                            <form:form modelAttribute="simpleCondition" method="get" id="searchForm">
                                <form:input type="hidden" path="searchType" readonly="readonly" placeholder="searchType" />
                                <form:input type="hidden" path="searchWord" readonly="readonly" placeholder="searchWord" />
                                <input type="hidden" name="page" readonly="readonly" placeholder="page" />
                            </form:form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
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