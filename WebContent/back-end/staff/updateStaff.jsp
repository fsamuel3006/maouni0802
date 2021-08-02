<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.backstage_staff.model.*"%>

<%
	StaffVO StaffVO = (StaffVO) request.getAttribute("StaffVO"); 
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>hidden_menu</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/hidden_menu.css"> 
  	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/hidden_menu2.css"> 
<style>
	.update{
	margin-left:auto; 
	margin-right:auto;
	}	
	.btn{
		background: #e8c497;
      	color: #fff;
	}
	.btn:hover {
      	background: #ffe6c7;
      	color: #fff;
   }
	.pagination>li.active>a {
	  	background: #d6b286;
	    color: #fff;
	}
	.pagination>li>a {
	    color: #d6b286;
	}
	.pagination>li>a:hover {
	  	background: #fff;
	    color: #5c3316;
	}
	.col-md-6 .pagination>li>a,
	.col-md-6 .pagination>li>span {
  	  	border: 1px solid #d6b286;
	}
	.pagination>.active>a:hover{
    	background-color: #e6c195;
    	border: solid 1px #e6c195;
	}
	a.btsp{
		font-size: 35px;
		color: #e8c497;
		font-weight: bold;
		margin-left: -5px;
	}
	a.btsp:hover, a.btsp:active{
		color: #ffe6c7;
		text-decoration: none;
	}
	p.allitemtitle{
		color:#fff;
		font-weight: bold;
	}
	input.details{
		background-color: #bfbfbf;
		color: #fff;
	}
	input.details:hover{
		background-color: #e8c497;
	}
	input.update{
		background-color: #bfbfbf;
		color: #fff;
	}	
	input.update:hover{
		background-color: #e8c497;
	}
	body{
	overflow-x:hidden; <!-- 此處做整個BODY橫向的隱藏多出的寬度 -->
	}
</style>
</head>

<body style="height: auto;">

     <!-- 以下為隱藏式菜單內容 -->
         <header>
         <span class="toggle-button" style="margin-left:-5px;margin-top:-7px;">
             <div class="menu-bar menu-bar-top"></div>
             <div class="menu-bar menu-bar-middle"></div>
             <div class="menu-bar menu-bar-bottom"></div>
         </span>
         <div class="menu-wrap">
             <div class="menu-sidebar" style="margin-top:30px;">
                 <ul class="menu">
                     <li><a href="<%= request.getContextPath() %>/back-end/member/listAllMember.jsp">會員資料管理</a></li>
                     <li><a href="<%= request.getContextPath() %>/back-end/item/itemHomePage.jsp">商城管理</a></li>
                     <li><a href="<%= request.getContextPath() %>/front-end/message/addMessage.jsp">商城客服管理</a></li>
                     <li><a href="<%= request.getContextPath() %>/back-end/forumpost/forumPostHomePage.jsp">討論區管理</a></li>
                     <li><a href="<%= request.getContextPath() %>/front-end/adopt/adopt_home.jsp">浪浪找家管理</a></li>
                     <li><a href="<%= request.getContextPath() %>/back-end/article/select_page_art.jsp">知識站管理</a></li>
                     <li><a href="<%= request.getContextPath() %>/back-end/announcemet/select_page.jsp">公告管理</a></li>
                     <li><a href="<%= request.getContextPath() %>/back-end/groomer/groomerList.jsp">美容師管理</a></li>
                     <li><a href="<%= request.getContextPath() %>/back-end/groomer/grooming_report.jsp">美容預約檢舉管理</a></li>
                 </ul>
             </div>
         </div>
     </header>
     
      <div id="wrapper" style="margin-left: 120px;height: auto;">
        <div class="d-flex flex-column" id="content-wrapper" style="margin-right:5px;">
            
            	 <!-- 以下範圍為最上方包著商城管理以及右方後台人員的區塊, -->
                <nav class="navbar navbar-light navbar-expand bg-white mb-4 topbar static-top">
                    <div class="container-fluid" style="margin-top:23px;margin-left:-6px;">
<!--請看這行最右邊-->  <a class="btsp" href="Item_select_page.jsp">商城管理</a>  <!-- 這行是商城管理的標題，可以自行設定，還有href可以自行設定跳轉的頁面 -->
                       	 <ul class="nav navbar-nav flex-nowrap ml-auto" style="margin-top:-10px;">                         
                           
                            <li class="nav-item dropdown no-arrow" style="margin-top:10px">
                                <div class="nav-item dropdown no-arrow"><a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false" href="#">
                                	
                                	<img class="border rounded-circle img-profile" style="widht:40px;height:40px;margin-top:-5px;" src="<%=request.getContextPath()%>/resources/images/items/MaoUniICON.png"></a>
                                    <div class="dropdown-menu dropdown-menu-right animated--grow-in">
                                    	<a class="dropdown-item" href="<%=request.getContextPath()%>/back-end/Staff/Select.jsp" style="font-weight:700;color:#646464;">Logout</a>
                                    </div>
	                   			</div>
	                    	</li>
	                    </ul>
	            	</div>
	            </nav>
     
     
	<FORM METHOD="post"
		ACTION="<%=request.getContextPath()%>/StaffServlet" name="update">

		<table class="update">
			<tr>
				<td>員工編號:<font color=red><b>*</b></font></td>
				<td><input type="TEXT" name="id" size="45"
					value="<%=StaffVO.getId()%>" /></td>
			</tr>
			<tr>
				<td>員工姓名:</td>
				<td><input type="TEXT" name="name" size="45"
					value="<%=StaffVO.getName()%>" /></td>
			</tr>
			<tr>
				<td>狀態:</td>
				<td><input type="TEXT" name="status" size="45"
					value="<%=StaffVO.getStatus()%>" /></td>
			</tr>

			<tr>
				<td>年齡:</td>
				<td><input type="TEXT" name="age" size="45"
					value="<%=StaffVO.getAge()%>" /></td>
			</tr>

			<tr>
				<td>學歷:</td>
				<td><input type="TEXT" name="edu" size="45"
					value="<%=StaffVO.getEdu()%>" /></td>
			</tr>

			<tr>
				<td>地址:</td>
				<td><input type="TEXT" name="add" size="45"
					value="<%=StaffVO.getAdd()%>" /></td>
			</tr>
			<tr>
				<td>聯絡人:</td>
				<td><input type="TEXT" name="cont" size="45"
					value="<%=StaffVO.getCont()%>" /></td>
			</tr>
			<tr>
				<td>電話:</td>
				<td><input type="TEXT" name="tel" size="45"
					value="<%=StaffVO.getTel()%>" /></td>
			</tr>
			<tr>
				<td>修改帳號:</td>
				<td><input type="TEXT" name="username" size="45"
					value="<%=StaffVO.getUsername()%>" /></td>
			</tr>
			<tr>
				<td>修改密碼:</td>
				<td><input type="TEXT" name="password" size="45"
					value="<%=StaffVO.getPassword()%>" /></td>
			</tr>


			<jsp:useBean id="staffSvc" scope="session"
				class="com.backstage_staff.model.StaffService" />




		</table>
		<br> <input type="hidden" name="action" value="update"> <input
			type="hidden" name="id" value="<%=StaffVO.getId()%>"> <input
			type="submit" value="送出修改">

	</FORM>
	
	 <script src="<%=request.getContextPath()%>/resources/js/jquery.min.js"></script> 
    <script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
    
    

	<!-- 以下為隱藏式菜單連結(JSP)--> 
    <script src="<%=request.getContextPath()%>/resources/js/hidden_menu3.js"></script> 
    <script src="<%=request.getContextPath()%>/resources/js/hidden_menu4.js"></script>
</body>

</html>