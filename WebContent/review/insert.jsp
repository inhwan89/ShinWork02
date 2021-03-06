<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<!-- summernote CSS/js-->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">

<title>Insert title here</title>
<script>
/* summernote jQuery */
$(document).ready(function() {
		$('input').attr('autocomplete','off');
	    var navbar = document.getElementById("myNavbar");
	    var holder = document.getElementById("holder");
	    navbar.className = "w3-bar" + " w3-card" + " w3-animate-top" + " w3-white";
	    holder.className = "nav-holder" + " w3-padding-large" + " nav_small";
	    $(".default").css("display","none");
	    $(".scrolled").css("display","block");
    $('.summernote').summernote({
            height: 300,                
            minHeight: null,            
            maxHeight: null,    
            toolbar: [
                      ['style', ['bold', 'italic', 'underline', 'clear']],
                      ['font', ['strikethrough', 'superscript', 'subscript']],
                      ['fontsize', ['fontsize']],
                      ['color', ['color']],
                      ['para', ['ul', 'ol', 'paragraph']],
                      ['height', ['height']]
                    ]
    });
});
</script>

<style>
#insert{
margin: auto;
width: 45%;
padding: 10px;
}


#insert h2{border-bottom: 3px solid #036; padding-bottom: 5px;}

#insert #store{text-align: center; height: 30px; opacity: 0.6;  border-radius: 15px;}

#insert .store_name, .grade, .season, .title{
display: inline-block; width: 50px;  
}

#insert  .service, .quality, .cleans{
display: inline-block; width: 50px; margin-right: 12px; 
}
#insert .quality, .cleans{margin-left: 20px; }

#insert #grade{overflow: hidden;}
#insert #service, #quality, #cleans{display: inline-block;} 

#insert #btnInsert {
margin: 0;
width: 100%;
padding: 5px;
padding-left: 40%;
}

#insert #subject{width: 93.3%;}
#insert #content{width: 100%; }

/* 별점 CSS */
#insert #service > input.star { display: none; }
#insert #service > label.star { float: right;padding: 2px;font-size: 16px;color: #444;transition: all .2s;}
#insert #service > input.star:checked ~ label.star:before {content: '\f005';color: #FD4;transition: all .25s;}
#insert #service > input.star-5:checked ~ label.star:before {color: #FE7;text-shadow: 0 0 20px #952;}
#insert #service > input.star-1:checked ~ label.star:before { color: #F62; }
#insert #service > label.star:hover { transform: rotate(-15deg) scale(1.3); }
#insert #service > label.star:before {content: '\f006';font-family: FontAwesome;}

#insert #quality > input.star2 { display: none; }
#insert #quality > label.star2 {float: right;padding: 2px;font-size: 16px;color: #444;transition: all .2s;}
#insert #quality > input.star2:checked ~ label.star2:before {content: '\f005';color: #FD4;transition: all .25s;}
#insert #quality > input.star-5_2:checked ~ label.star2:before {color: #FE7;text-shadow: 0 0 20px #952;}
#insert #quality > input.star-1_2:checked ~ label.star2:before { color: #F62; }
#insert #quality > label.star2:hover { transform: rotate(-15deg) scale(1.3); }
#insert #quality > label.star2:before {content: '\f006';font-family: FontAwesome;}

#insert #cleans > input.star3 { display: none; }
#insert #cleans > label.star3 {float: right;padding: 2px;font-size: 16px;color: #444;transition: all .2s;}
#insert #cleans > input.star3:checked ~ label.star3:before {content: '\f005';color: #FD4;transition: all .25s;}
#insert #cleans > input.star-5_3:checked ~ label.star3:before {color: #FE7;text-shadow: 0 0 20px #952;}
#insert #cleans > input.star-1_3:checked ~ label.star3:before { color: #F62; }
#insert #cleans > label.star3:hover { transform: rotate(-15deg) scale(1.3); }
#insert #cleans > label.star3:before {content: '\f006';font-family: FontAwesome;}

/* 라디오버튼 CSS */
#radio_group{display: inline-block;}
#radio_group label.btn span {font-size: 1.5em ;}
#radio_group label input[type="radio"] ~ i.fa.fa-circle-o{color: #c8c8c8;display: inline;}
#radio_group label input[type="radio"] ~ i.fa.fa-dot-circle-o{display: none;}
#radio_group label input[type="radio"]:checked ~ i.fa.fa-circle-o{display: none;}
#radio_group label input[type="radio"]:checked ~ i.fa.fa-dot-circle-o{color: #7AA3CC;display: inline;}
#radio_group label:hover input[type="radio"] ~ i.fa {color: #7AA3CC;}
#radio_group label input[type="checkbox"] ~ i.fa.fa-square-o{color: #c8c8c8;display: inline;}
#radio_group label input[type="checkbox"] ~ i.fa.fa-check-square-o{display: none;}
#radio_group label input[type="checkbox"]:checked ~ i.fa.fa-square-o{display: none;}
#radio_group label input[type="checkbox"]:checked ~ i.fa.fa-check-square-o{color: #7AA3CC;display: inline;}
#radio_group label:hover input[type="checkbox"] ~ i.fa {color: #7AA3CC;}
#radio_group div[data-toggle="buttons"] label.active{color: #7AA3CC;}
#radio_group div[data-toggle="buttons"] label {
display: inline-block;
padding:3px 0px;
margin-bottom: 0;
font-size: 9px;
font-weight: bold;
line-height: 2em;
text-align: left;
white-space: nowrap;
vertical-align: top;
cursor: pointer;
background-color: none;
border: 0px solid #c8c8c8;
border-radius: 3px;
color: #c8c8c8;
-webkit-user-select: none;
-moz-user-select: none;
-ms-user-select: none;
-o-user-select: none;
user-select: none;
}
#radio_group #btnSummer, #btnFall, #btnWinter{margin-left: 10px; }
#radio_group div[data-toggle="buttons"] label:hover {color: #7AA3CC;}
#radio_group div[data-toggle="buttons"] label:active, div[data-toggle="buttons"] label.active {-webkit-box-shadow: none;box-shadow: none;}

</style>
</head>
<body>
<br/><br/><br/><br/><br/><br/>
<div id="insert">
	<h2 class="w3-text-blue">이용후기작성</h2><br/>
	<form name="frm_insert" method="post" enctype="multipart/form-data">
		
		<div id="store_name">
		<label class="store_name">매장명</label>
		<input type="text" name="store" id="store" class="w3-border-blue" readonly="readonly" value="${vo.store }">
		</div>
		
		<div id="grade">
			<label class="grade">평점</label>
			<div id="service">
				<label class="service">service</label>
				<input class="star star-5" id="star-5" type="radio" name="service" value="5"/>
   				<label class="star star-5" for="star-5"></label>
			    <input class="star star-4" id="star-4" type="radio" name="service" value="4"/>
			    <label class="star star-4" for="star-4"></label>
			    <input class="star star-3" id="star-3" type="radio" name="service" value="3"/>
			    <label class="star star-3" for="star-3"></label>
			    <input class="star star-2" id="star-2" type="radio" name="service" value="2"/>
			    <label class="star star-2" for="star-2"></label>
			    <input class="star star-1" id="star-1" type="radio" name="service" value="1"/>
			    <label class="star star-1" for="star-1"></label>
			</div>
			
			<div id="quality">
				<label class="quality">quality</label>
				<input class="star2 star-5_2" id="star-5_2" type="radio" name="quality" value="5"/>
   				<label class="star2 star-5_2" for="star-5_2"></label>
			    <input class="star2 star-4_2" id="star-4_2" type="radio" name="quality" value="4"/>
			    <label class="star2 star-4_2" for="star-4_2"></label>
			    <input class="star2 star-3_2" id="star-3_2" type="radio" name="quality" value="3"/>
			    <label class="star2 star-3_2" for="star-3_2"></label>
			    <input class="star2 star-2_2" id="star-2_2" type="radio" name="quality" value="2"/>
			    <label class="star2 star-2_2" for="star-2_2"></label>
			    <input class="star2 star-1_2" id="star-1_2" type="radio" name="quality" value="1"/>
			    <label class="star2 star-1_2" for="star-1_2"></label>				
			</div>
			
			<div id="cleans">
				<label class="cleans">cleans</label>
				<input class="star3 star-5_3" id="star-5_3" type="radio" name="cleans" value="5"/>
   				<label class="star3 star-5_3" for="star-5_3"></label>
			    <input class="star3 star-4_3" id="star-4_3" type="radio" name="cleans" value="4"/>
			    <label class="star3 star-4_3" for="star-4_3"></label>
			    <input class="star3 star-3_3" id="star-3_3" type="radio" name="cleans" value="3"/>
			    <label class="star3 star-3_3" for="star-3_3"></label>
			    <input class="star3 star-2_3" id="star-2_3" type="radio" name="cleans" value="2"/>
			    <label class="star3 star-2_3" for="star-2_3"></label>
			    <input class="star3 star-1_3" id="star-1_3" type="radio" name="cleans" value="1"/>
			    <label class="star3 star-1_3" for="star-1_3"></label>								
			</div>
		</div>
		
		<div id="season">
		 <label class="season">계절</label>
		 <div id="radio_group">				 
	      	 <div class="btn-group btn-group" data-toggle="buttons">
		         <label class="btn active">
		         <input type="radio" name='seasons' value="Spring" checked><i class="fa fa-circle-o fa-2x "></i><i class="fa fa-dot-circle-o fa-2x "></i><span> Spring</span>
		         </label>
		         
		         <label class="btn" id="btnSummer">
		         <input type="radio" name='seasons' value="Summer" ><i class="fa fa-circle-o fa-2x"></i><i class="fa fa-dot-circle-o fa-2x"></i><span> Summer</span>
		         </label>
	         
	         	 <label class="btn" id="btnFall">
		         <input type="radio" name='seasons' value="Fall" ><i class="fa fa-circle-o fa-2x"></i><i class="fa fa-dot-circle-o fa-2x"></i><span> Fall</span>
		         </label>
		         
		         <label class="btn" id="btnWinter">
		         <input type="radio" name='seasons' value="Winter" ><i class="fa fa-circle-o fa-2x"></i><i class="fa fa-dot-circle-o fa-2x"></i><span> Winter</span>
		         </label>	         
	         </div>       
		 </div>
		</div>
		
		<div id="subject_content">	
			<label class="title">제목</label>
			<input type="text"  required="required" name="subject" id="subject" />		
			<textarea rows="10" name="content" id="content" class="summernote" ></textarea>
		</div>
		
		<label>첨부파일</label><br>
		<input type="file" name="attfile1"><br>
		<input type="file" name="attfile2"><br>
		<p>
		
		<div id="btnInsert">
			<input type="button" value="등록" name="btnInsert" class="w3-button w3-blue"/>
			<input type="button" value="돌아가기" name="btnList" class="w3-button w3-blue"/>
		</div>
		<input type="hidden" name="worker" value="${sId}">
		<input type="hidden" name="reviewPage" value="${vo.reviewPage }">
		<input type="hidden" name="findStr" value="${vo.findStr}">
	</form>
</div>
<div id="show_msg" class="w3-modal w3-center w3-opacity" style = 'z-index: 100'>
	<div class="w3-modal-content w3-animate-top w3-card-4 w3-round-large w3-padding">
	<span onclick="document.getElementById('show_msg').style.display='none'" class="w3-button w3-hover-white w3-xxlarge w3-display-topright w3-round-large">×</span>
         <h4 class="w3-wide w3-padding" id='msg'>
         <i class="fa fa-exclamation-circle w3-margin-right"></i>
         </h4>
        <button type="button" onclick="okFunc()" name="ok" class="btn btn-default" data-dismiss="modal" style="text-align: center;">확인</button>
	</div>
</div>
<script>
var frm =document.frm_insert;

frm.btnList.onclick=function(){
	frm.encType="";
	frm.action="list.review";
	frm.submit();
}
frm.btnInsert.onclick=function(){
	if(frm.subject.value==""){
        $('#msg').text("제목을 입력해주세요.");
        document.getElementById('show_msg').style.display='block';
	}else if(frm.content.value==""){
        $('#msg').text("내용을 입력해주세요.");
        document.getElementById('show_msg').style.display='block';
	}else{
	    $('#msg').text("후기등록이 완료되었습니다.");
	    document.getElementById('show_msg').style.display='block';
	}
}
function okFunc(){
    if($('#msg').text() =="후기등록이 완료되었습니다."){
    	frm.action="insertR.review";
       	frm.submit();            
    }else{
       document.getElementById('show_msg').style.display='none';      
    }
 }
</script>
</body>
</html>