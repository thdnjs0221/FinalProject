<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="interviewReviewEditWrap">
    <div id="sri_section" class=" layout_full ">
        <div id="sri_wrap">
            <div id="content">
                <div class="wrap_title_recruit">
                    <h1 class="title_common">면접 후기 등록</h1>
                    <p class="txt_write_info">작성해주신 면접 후기는 <b>익명</b>으로 등록됩니다.</p>
                </div>
                <div class="wrap_interview_review">
                    <form id="frm" name="frm" method="post" action="/FinalProject/user/interview/review/editPost">
                        <input type="hidden" name="idx" value="">
                        <fieldset>
                            <div class="review_write">
                                <h2 class="tit_step">기본 정보 입력</h2>
                                <p class="txt_point"><span class="spr_review point"><span class="blind">필수</span></span>는 필수입력정보입니다</p>
                                <div class="tblType">
                                    <table>
                                        <colgroup>
                                            <col style="width:170px">
                                            <col>
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th scope="row" class="txtLeft">
                                                    <label for="companyName" class="tit_item">기업명 <span class="spr_review point"><span class="blind">필수</span></span></label>
                                                </th>
                                                <td class="txtLeft">
                                                    ${review.company.companyNm}
                                                    <em class="msgInvalid msgCompanynm hide">필수 항목입니다.</em>
                                                    <input type="hidden" name="intrevNo" value="${review.intrevNo }">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row" class="txtLeft">
                                                    <label for="jobCategory" class="tit_item">분야 <span class="spr_review point"><span class="blind">필수</span></span></label>
                                                </th>
                                                <td class="txtLeft">
                                                    ${review.recruit.rcrtField }
                                                    <em class="msgInvalid msgJobCategory hide">필수 항목입니다.</em>
                                            </tr>
                                            <tr>
                                            </tr>
                                            <tr>
                                                <th scope="row" class="txtLeft">
                                                    <strong class="tit_item">면접 일자 <span class="spr_review point"><span class="blind">필수</span></span></strong>
                                                </th>
                                                <td class="txtLeft">
                                                    ${review.interviewSchdVO.intrDate }
                                                    <em class="msgInvalid msgInterviewDate hide">필수 항목입니다.</em>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="review_write">
                                <h2 class="tit_step">면접 정보 입력</h2>
                                <p class="txt_point"><span class="spr_review point"><span class="blind">필수</span></span>는 필수입력정보입니다</p>
                                <div class="tblType">
                                    <table>
                                        <colgroup>
                                            <col style="width:170px">
                                            <col>
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th scope="row" class="txtLeft">
                                                    <strong class="tit_item">전반적 평가 <span class="spr_review point"><span class="blind">필수</span></span></strong>
                                                </th>
                                                <td class="txtLeft">
                                                    <span class="inpRdoSw colorWhite">
                                                        <span class="inOption">
                                                            <input type="radio" name="intervOvrlEvltn" id="evaluation1" value="긍정적" ${review.intervOvrlEvltn=='긍정적' ? 'checked' : '' }>
                                                            <label for="evaluation1" class="lbl" onmousedown="trackevent('step2', 'overall');">긍정적</label>
                                                        </span>
                                                        <span class="inOption">
                                                            <input type="radio" name="intervOvrlEvltn" id="evaluation2" value="보통" ${review.intervOvrlEvltn=='보통' ? 'checked' : '' }>
                                                            <label for="evaluation2" class="lbl" onmousedown="trackevent('step2', 'overall');">보통</label>
                                                        </span>
                                                        <span class="inOption">
                                                            <input type="radio" name="intervOvrlEvltn" id="evaluation3" value="부정적" ${review.intervOvrlEvltn=='부정적' ? 'checked' : '' }>
                                                            <label for="evaluation3" class="lbl" onmousedown="trackevent('step2', 'overall');">부정적</label>
                                                        </span>
                                                    </span>
                                                    <em class="msgInvalid msgEvaluation hide">필수 항목입니다.</em>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row" class="txtLeft">
                                                    <strong class="tit_item">난이도 <span class="spr_review point"><span class="blind">필수</span></span></strong>
                                                </th>
                                                <td class="txtLeft">
                                                    <span class="inpRdoSw colorWhite">
                                                        <span class="inOption">
                                                            <input type="radio" name="intervDifficulty" id="difficult1" value="쉬움" ${review.intervDifficulty=='쉬움' ? 'checked' : '' }>
                                                            <label for="difficult1" class="lbl" onmousedown="trackevent('step2', 'difficulty');">쉬움</label>
                                                        </span>
                                                        <span class="inOption">
                                                            <input type="radio" name="intervDifficulty" id="difficult2" value="보통" ${review.intervDifficulty=='보통' ? 'checked' : '' }>
                                                            <label for="difficult2" class="lbl" onmousedown="trackevent('step2', 'difficulty');">보통</label>
                                                        </span>
                                                        <span class="inOption">
                                                            <input type="radio" name="intervDifficulty" id="difficult3" value="어려움" ${review.intervDifficulty=='어려움' ? 'checked' : '' }>
                                                            <label for="difficult3" class="lbl" onmousedown="trackevent('step2', 'difficulty');">어려움</label>
                                                        </span>

                                                        <em class="msgInvalid msgDifficult hide">필수 항목입니다.</em>
                                                    </span></td>
                                            </tr>
                                            <tr>
                                                <th scope="row" class="txtLeft">
                                                    <strong class="tit_item">면접 및 전형 유형 <span class="spr_review point"><span class="blind">필수</span></span></strong>
                                                </th>
                                                <td class="txtLeft">
                                                    <div class="inpChk small">
                                                        <input type="checkbox" name="interviewTypical" id="type1" value="대면면접" ${review.interviewTypical == '대면면접' ? 'checked' : '' }>
                                                        <label class="lbl" for="type1" onmousedown="trackevent('step2', 'type');">대면면접</label>
                                                    </div>
                                                    <div class="inpChk small">
                                                        <input type="checkbox" name="interviewTypical" id="type2" value="화상면접" ${review.interviewTypical == '화상면접' ? 'checked' : '' }>
                                                        <label class="lbl" for="type2" onmousedown="trackevent('step2', 'type');">화상면접</label>
                                                    </div>
                                                    <div class="inpChk small">
                                                        <input type="checkbox" name="interviewTypical" id="type3" value="전화면접" ${review.interviewTypical == '전화면접' ? 'checked' : '' }>
                                                        <label class="lbl" for="type3" onmousedown="trackevent('step2', 'type');">전화면접</label>
                                                    </div>
                                                    <div class="inpChk small">
                                                        <input type="checkbox" name="interviewTypical" id="type6" value="기타" ${review.interviewTypical == '기타' ? 'checked' : '' }> 
                                                        <label class="lbl" for="type6" onmousedown="trackevent('step2', 'type');">기타</label>
                                                    </div>
                                                    <em class="msgInvalid msgDifficult hide">필수 항목입니다.</em>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row" class="txtLeft">
                                                    <strong class="tit_item">면접 인원 <span class="spr_review point"><span class="blind">필수</span></span></strong>
                                                </th>
                                                <td class="txtLeft">
                                                    <div class="inpChk small">
                                                        <input type="checkbox" name="intervPersonnel" id="headcount1" value="1:1 면접" ${review.intervPersonnel == '1:1 면접' ? 'checked' : '' }>
                                                        <label class="lbl" for="headcount1" onmousedown="trackevent('step2', 'people');">1:1 면접</label>
                                                    </div>
                                                    <div class="inpChk small">
                                                        <input type="checkbox" name="intervPersonnel" id="headcount2" value="지원자 1명, 면접관 다수" ${review.intervPersonnel == '지원자 1명, 면접관 다수' ? 'checked' : '' }>
                                                        <label class="lbl" for="headcount2" onmousedown="trackevent('step2', 'people');">지원자 1명, 면접관 다수</label>
                                                    </div>
                                                    <div class="inpChk small">
                                                        <input type="checkbox" name="intervPersonnel" id="headcount3" value="그룹 면접" ${review.intervPersonnel == '그룹 면접' ? 'checked' : '' }>
                                                        <label class="lbl" for="headcount3" onmousedown="trackevent('step2', 'people');">그룹 면접</label>
                                                    </div>
                                                    <em class="msgInvalid msgDifficult hide">필수 항목입니다.</em>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row" class="txtLeft">
                                                    <label for="interviewDetails" class="tit_item">전형 및 면접 <br> 진행방식 <span class="spr_review point"><span class="blind">필수</span></span></label>
                                                </th>
                                                <td class="txtLeft">
                                                    <div class="textarea">
                                                        <textarea name="intervProcess" id="interviewDetails" class="tf_input" title="전형 및 면접 진행방식" cols="25" rows="5" placeholder="서류 합격 후 어떤 전형과 면접을 경험하셨나요?
(사실이 아닌 비방이나 개인적인 의견은 등록이 거절될 수 있습니다.)" onmousedown="trackevent('step2', 'review');" style="height: 87.1111px;">${review.intervProcess }</textarea>

                                                        <em class="msgInvalid msgContents hide">필수 항목입니다.</em>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="review_write">
                                <h2 class="tit_step">합격 정보 입력</h2>
                                <p class="txt_point"><span class="spr_review point"><span class="blind">필수</span></span>는 필수입력정보입니다</p>
                                <div class="tblType">
                                    <table>
                                        <colgroup>
                                            <col style="width:170px">
                                            <col>
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th scope="row" class="txtLeft">
                                                    <label for="interviewQ" class="tit_item">면접 질문 <span class="spr_review point"><span class="blind">필수</span></span></label>
                                                </th>
                                                <td class="txtLeft">
                                                    <div class="textarea">
                                                        <textarea name="intervQuestion" id="interviewDetails" class="tf_input" title="면접 질문" cols="25" rows="5" placeholder="ex) 경력 사항에 대한 상세한 질문
(사실이 아닌 비방이나 개인적인 의견은 등록이 거절될 수 있습니다.)" onmousedown="trackevent('step2', 'review');" style="height: 87.1111px;">${review.intervQuestion }</textarea>
                                                        <em class="msgInvalid msgContents hide">필수 항목입니다.</em>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row" class="txtLeft">
                                                    <label for="interviewTip" class="tit_item">면접 TIP 및 <br>특이 사항 <span class="spr_review point"><span class="blind">필수</span></span></label>
                                                </th>
                                                <td class="txtLeft">
                                                    <div class="textarea">
                                                        <textarea name="intervTip" id="interviewTip" class="tf_input" title="면접 TIP 및 특이사항" cols="25" rows="5" placeholder="분위기, 준비 tip을 공유해주세요." onmousedown="trackevent('step3', 'tip');">${review.intervTip }</textarea>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row" class="txtLeft">
                                                    <strong class="tit_item">합격 여부 <span class="spr_review point"><span class="blind">필수</span></span></strong>
                                                </th>
                                                <td class="txtLeft">
                                                    <span class="inpRdoSw colorWhite">
                                                        <span class="inOption">
                                                            <input type="radio" name="intervPass" id="result1" value="합격" ${review.intervPass=='합격' ? 'checked' : '' }>
                                                            <label for="result1" class="lbl" onmousedown="trackevent('step3', 'pass');">합격</label>
                                                        </span>
                                                        <span class="inOption">
                                                            <input type="radio" name="intervPass" id="result2" value="대기중" ${review.intervPass=='대기중' ? 'checked' : '' }>
                                                            <label for="result2" class="lbl" onmousedown="trackevent('step3', 'pass');">대기중</label>
                                                        </span>
                                                        <span class="inOption">
                                                            <input type="radio" name="intervPass" id="result3" value="불합격" ${review.intervPass=='불합격' ? 'checked' : '' }> 
                                                            <label for="result3" class="lbl" onmousedown="trackevent('step3', 'pass');">불합격</label>
                                                        </span>
                                                    </span>
                                                    <em class="msgInvalid msgResult hide">필수 항목입니다.</em>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <p class="txt_copyright">면접 후기에 대한 저작권은 <b>(주)내일을잡자</b>에 있습니다. 등록하신 콘텐츠는 임의로 삭제하실 수 없습니다.</p>
                                </div>
                                <input type="submit" class="btn_confirm" value="등록 요청">
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>