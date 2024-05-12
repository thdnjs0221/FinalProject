<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<div class="interviewReviewFormWrap">
    <div id="sri_section" class=" layout_full ">
        <div id="sri_wrap">
            <div id="content" style="background-color:#fff;">
                <div class="wrap_title_recruit" style="background-color:#fff;">
                    <h1 class="title_common">면접 후기 등록</h1>
                    <p class="txt_write_info">작성해주신 면접 후기는 <b>익명</b>으로 등록됩니다.</p>
                </div>
                <div class="wrap_interview_review">
                <div style="height: 41px;"><button type="button" id="reviewAutoInsert" class="btn btn-primary">자동완성</button></div>
                    <form id="frm" name="frm" method="post" action="/FinalProject/user/interview/review/newPost">
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
                                                    ${interview.company.companyNm }
                                                    <em class="msgInvalid msgCompanynm hide">필수 항목입니다.</em>
                                                    <input type="hidden" name="intrNo" value="${interview.intrNo }">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row" class="txtLeft">
                                                    <label for="jobCategory" class="tit_item">분야 <span class="spr_review point"><span class="blind">필수</span></span></label>
                                                </th>
                                                <td class="txtLeft">
                                                    ${interview.recruit.rcrtField }
                                                    <em class="msgInvalid msgJobCategory hide">필수 항목입니다.</em>
                                            </tr>
                                            <tr>
                                            </tr>
                                            <tr>
                                                <th scope="row" class="txtLeft">
                                                    <strong class="tit_item">면접 일자 <span class="spr_review point"><span class="blind">필수</span></span></strong>
                                                </th>
                                                <td class="txtLeft">
                                                    ${interview.intrDate }
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
                                                            <input type="radio" name="intervOvrlEvltn" id="evaluation1" value="긍정적">
                                                            <label for="evaluation1" class="lbl" onmousedown="trackevent('step2', 'overall');">긍정적</label>
                                                        </span>
                                                        <span class="inOption">
                                                            <input type="radio" name="intervOvrlEvltn" id="evaluation2" value="보통">
                                                            <label for="evaluation2" class="lbl" onmousedown="trackevent('step2', 'overall');">보통</label>
                                                        </span>
                                                        <span class="inOption">
                                                            <input type="radio" name="intervOvrlEvltn" id="evaluation3" value="부정적">
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
                                                            <input type="radio" name="intervDifficulty" id="difficult1" value="쉬움">
                                                            <label for="difficult1" class="lbl" onmousedown="trackevent('step2', 'difficulty');">쉬움</label>
                                                        </span>
                                                        <span class="inOption">
                                                            <input type="radio" name="intervDifficulty" id="difficult2" value="보통">
                                                            <label for="difficult2" class="lbl" onmousedown="trackevent('step2', 'difficulty');">보통</label>
                                                        </span>
                                                        <span class="inOption">
                                                            <input type="radio" name="intervDifficulty" id="difficult3" value="어려움">
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
                                                        <input type="checkbox" name="interviewTypical" id="type1" value="대면면접">
                                                        <label class="lbl" for="type1" onmousedown="trackevent('step2', 'type');">대면면접</label>
                                                    </div>
                                                    <div class="inpChk small">
                                                        <input type="checkbox" name="interviewTypical" id="type2" value="화상면접">
                                                        <label class="lbl" for="type2" onmousedown="trackevent('step2', 'type');">화상면접</label>
                                                    </div>
                                                    <div class="inpChk small">
                                                        <input type="checkbox" name="interviewTypical" id="type3" value="전화면접">
                                                        <label class="lbl" for="type3" onmousedown="trackevent('step2', 'type');">전화면접</label>
                                                    </div>
                                                    <div class="inpChk small">
                                                        <input type="checkbox" name="interviewTypical" id="type6" value="기타">
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
                                                        <input type="checkbox" name="intervPersonnel" id="headcount1" value="1:1 면접">
                                                        <label class="lbl" for="headcount1" onmousedown="trackevent('step2', 'people');">1:1 면접</label>
                                                    </div>
                                                    <div class="inpChk small">
                                                        <input type="checkbox" name="intervPersonnel" id="headcount2" value="지원자 1명, 면접관 다수">
                                                        <label class="lbl" for="headcount2" onmousedown="trackevent('step2', 'people');">지원자 1명, 면접관 다수</label>
                                                    </div>
                                                    <div class="inpChk small">
                                                        <input type="checkbox" name="intervPersonnel" id="headcount3" value="그룹 면접">
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
(사실이 아닌 비방이나 개인적인 의견은 등록이 거절될 수 있습니다.)" onmousedown="trackevent('step2', 'review');" style="height: 87.1111px;"></textarea>

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
(사실이 아닌 비방이나 개인적인 의견은 등록이 거절될 수 있습니다.)" onmousedown="trackevent('step2', 'review');" style="height: 87.1111px;"></textarea>
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
                                                        <textarea name="intervTip" id="interviewTip" class="tf_input" title="면접 TIP 및 특이사항" cols="25" rows="5" placeholder="분위기, 준비 tip을 공유해주세요." onmousedown="trackevent('step3', 'tip');"></textarea>
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
                                                            <input type="radio" name="intervPass" id="result1" value="합격">
                                                            <label for="result1" class="lbl" onmousedown="trackevent('step3', 'pass');">합격</label>
                                                        </span>
                                                        <span class="inOption">
                                                            <input type="radio" name="intervPass" id="result2" value="대기중">
                                                            <label for="result2" class="lbl" onmousedown="trackevent('step3', 'pass');">대기중</label>
                                                        </span>
                                                        <span class="inOption">
                                                            <input type="radio" name="intervPass" id="result3" value="불합격">
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
<script>
$(function(){
	
	$('#reviewAutoInsert').on("click",function(){
		//전반적평가
		$("input:radio[name='intervOvrlEvltn']:input[value='긍정적']").attr("checked", true);
		//난이도
		$("input:radio[name='intervDifficulty']:input[value='보통']").attr("checked", true);
		//면접및전형유형
		$("input:checkbox[name='interviewTypical']:input[value='대면면접']").attr("checked", true);
		//면접인원
		$("input:checkbox[name='intervPersonnel']:input[value='1:1 면접']").attr("checked", true);
		//전형및면접진행방식
		$('[name=intervProcess]').val("편안한 분위기로 진행되며 이력서 위주로 질문하셨습니다. 전체적인 회사 분위기나 근무하게 될 부서 분위기, 사수 등 다양한 얘기 해주셔서 도움이 많이 되었습니다.");
		//면접질문
		$('[name=intervQuestion]').val("이전에 어떤일을 했는지, 어떤 직책을 맡게 될것인지, 어떤 경로로 회사를 알게되었는지");
		//면접TIP및특이사항
		$('[name=intervTip]').val("긴장하지않기");
		//합격여부
		$("input:radio[name='intervPass']:input[value='합격']").attr("checked", true);
	});
});
</script>