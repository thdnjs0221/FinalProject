<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>관리자 대시보드</title> 
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/css/sb-admin-2.min.css" rel="stylesheet">
</head>

<body id="page-top">
    <div id="wrapper">
        <div id="content-wrapper" class="d-flex flex-column">
            <div id="content">
                <div class="container-fluid">
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">관리자 대시보드</h1> 
                    </div>
                    <div class="row">
                        <!-- 미승인 회원수 -->
                        <div class="col-xl-4 col-md-6 mb-4">
                        	<a href="<%=request.getContextPath()%>/bsnsLcnsNmbr">
	                            <div class="card border-left-primary shadow h-100 py-2">
	                                <div class="card-body">
	                                    <div class="row no-gutters align-items-center">
	                                        <div class="col mr-2">
	                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
	                                               미확인 기업</div>
	                                            <div class="h5 mb-0 font-weight-bold text-gray-800">${resultMap.companyCount }</div>
	                                        </div>
	                                        <div class="col-auto">
	                                            <i class="fa-regular fa-building fa-2x text-gray-300"></i>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
                            </a>
                        </div>
                        <!-- 미승인 면접후기 -->
                        <div class="col-xl-4 col-md-6 mb-4">
                        	<a href="<%=request.getContextPath()%>/intvwRevMgmt">
	                            <div class="card border-left-success shadow h-100 py-2">
	                                <div class="card-body">
	                                    <div class="row no-gutters align-items-center">
	                                        <div class="col mr-2">
	                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
	                                                미확인 면접후기</div>
	                                            <div class="h5 mb-0 font-weight-bold text-gray-800">${resultMap.reviewCount }</div>
	                                        </div>
	                                        <div class="col-auto">
	                                            <i class="fa-solid fa-users fa-2x text-gray-300"></i>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
                            </a>
                        </div>
                        <!-- 미승인 이미지광고 -->
                        <div class="col-xl-4 col-md-6 mb-4">
                        	<a href="#">
	                            <div class="card border-left-info shadow h-100 py-2">
	                                <div class="card-body">
	                                    <div class="row no-gutters align-items-center">
	                                        <div class="col mr-2">
	                                            <div class="text-xs font-weight-bold text-info text-uppercase mb-1">미승인 이미지광고
	                                            </div>
	                                            <div class="row no-gutters align-items-center">
	                                                <div class="col-auto">
	                                                    <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">50</div>
	                                                </div>
	                                                
	                                            </div>
	                                        </div>
	                                        <div class="col-auto">
	                                            <i class="fa-solid fa-clapperboard fa-2x text-gray-300"></i>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
                            </a>
                        </div>
                    </div>
                    <div class="row">
                        <!-- 막대 Chart -->
                        <div class="col-xl-6 col-lg-6">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">지원자 수 통계</h6>
                                    
                                </div>
                                <!-- Card Body -->
                                <div class="card-body">
                                	<div style="width:750px;">
									  <canvas id="myChart"></canvas>
									</div>

									<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
									
									<script>
									  const ctx = document.getElementById('myChart');
									
									  // chart.js가 잘 만들어진 이유, return값으로 제어가 직관적
									  // line과 bar는 한 차트에서 같이 쓸 수 있다 (mixed 차트)
									  const myChart = new Chart(ctx, {
									    type: 'bar',
									    data: {
									      // 값 표시 갯수는 라벨 수에 의존
									      labels: ['1월', '2월', '3월', '4월', '5월', '6월','7월', '8월', '9월', '10월', '11월', '12월'],
									      datasets: [
									        {
									          type: "line",
									          label: '# 2022 year',
									          data: [120, 191, 135, 154, 125, 143, 128, 159, 163, 135, 162, 173],
									          borderWidth: 1,
									          backgroundColor: "pink"
									        }
									      ]
									    },
									    options: {
									      scales: {
									        y: {
									          beginAtZero: true
									        }
									      }
									    }
									  });
							
									  function fRanData() {
									    let data = [];
									    for (let i = 0; i <= 11; i++) {
									      data.push(Math.round(Math.random() * 100) + 100); // 50~100;
									    }
									    return data;
									  }
									
									  function fRender() {
									    let types = ["line", "bar"];
									    let colors = ["skyblue", "pink"];
									    for (let i = 0; i < 2; i++) {
									      let ranData = {
									        type: types[i],
									        label: '202${i+2} year',
									        data: fRanData(),
									        borderWidth: 1
									      };
									      myChart.data.datasets[i] = ranData;
									    }
									    // 제일 중요한 메소드 update
									    myChart.update(); // 다시 그려짐 rendering
									
// 									    setTimeout(fRender, 2500);
									  }
									  fRender();
									</script> 
                                </div>
                            </div>
                        </div>
                        <!--  table -->
                        <div class="col-xl-6 col-lg-6">
            				<div class="card shadow mb-4">
						         <div class="card-header py-3">
						             <h6 class="boardTxt m-0 font-weight-bold text-primary">미답변 문의 목록</h6>
						             <a href="<%=request.getContextPath()%>/questionMgmt" class="boardMore">더보기</a>
						         </div>
						         <div class="card-body">
						             <div class="table-responsive">
						            
						                 <table class="table table-bordered" id="dataTable">
						                     <thead>
						                         <tr class="textAlignCenter">
						                             <th class="fbdTble">제목</th>
						                             <th>답변여부</th>
						                         </tr>
						                     </thead>
						                     <tbody>
						                    
						                     <c:forEach var="qnAVO" items="${resultMap.qnaboardList}">
						                        <tr>
						                           <td>${qnAVO.qstnTitle}</td>
						                           <td class="tdDlt">${qnAVO.qstnReply}</td>                                                                      
						                        </tr>
						                      </c:forEach>
						                     </tbody>						                     
						                 </table>
						             </div>
						         </div>
						     </div>
                        </div>

                    <div class="row">
                        <!--  table -->
<!--                         <div class="col-xl-6 col-lg-6"> -->
<!--             				<div class="card shadow mb-4"> -->
<!-- 						         <div class="card-header py-3"> -->
<!-- 						             <h6 class="boardTxt m-0 font-weight-bold text-primary">자유게시판 신고 목록</h6> -->
<%-- 						             <a href="<%=request.getContextPath()%>/freeBoardMgmt" class="boardMore">더보기</a> --%>
<!-- 						         </div> -->
<!-- 						         <div class="card-body"> -->
<!-- 						             <div class="table-responsive"> -->
						            
<!-- 						                 <table class="table table-bordered" id="dataTable"> -->
<!-- 						                     <thead> -->
<!-- 						                         <tr class="textAlignCenter"> -->
<!-- 						                             <th class="fbdTble">제목</th> -->
<!-- 						                             <th>신고여부</th> -->
<!-- 						                         </tr> -->
<!-- 						                     </thead> -->
<!-- 						                     <tbody> -->

<%-- 						                     <c:forEach var="frBoardVO" items="${resultMap.frboardList}"> --%>
<!-- 						                        <tr> -->
<%-- 						                           <td>${frBoardVO.frbTitle}</td> --%>
<%-- 						                           <td class="tdDlt">${frBoardVO.frbRep}</td>                                                                       --%>
<!-- 						                        </tr> -->
<%-- 						                      </c:forEach> --%>
<!-- 						                     </tbody>						                      -->
<!-- 						                 </table> -->
						                
<!-- 						             </div> -->
<!-- 						         </div> -->
<!-- 						     </div> -->
<!--                         </div> -->
						
                    
                    </div>
                    
                </div>  
            </div>
        </div>
    </div>
</body>
</html>