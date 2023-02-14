<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Your Color!</title>

<script type="text/javascript">

   var cnt = [0,0,0,0];
   
   function Check(){
	   var mok = "";
	   var max = 0;
	   var dap = 0;
	   for(var i=0; i<4; i++){
		   if(max < cnt[i]){
			   max = cnt[i];
		   }
	   }
	   for(var i=0; i<4; i++){
		   if(max == cnt[i]){
			   dap = i;
		   }
	   }
	   
	   if(dap == 0){
		   document.getElementById('name').innerHTML = "<img src = 'image/spring3.png' width = 800px>";
	   }else if(dap == 1){
		   document.getElementById('name').innerHTML = "<img src = 'image/summer1.png' width = 800px>";
	   }else if(dap == 2){
		   document.getElementById('name').innerHTML = "<img src = 'image/autumn1.png' width = 800px>";
	   }else{
		   document.getElementById('name').innerHTML = "<img src = 'image/winter1.png' width = 800px>";
	   }

   }

   function check_only(chk){
	   var obj = document.getElementsByName("cb");
	   
	   for(i =0; i<obj.length; i++){
		   if(obj[i] != chk){
               obj[i].checked = false;
           }
	   }
	   
	   for(var i=0; i<4; i++){
		   if((chk.value-1) == i){
			   cnt[i] ++;
		   }
	   }
	   
   }
   
   function check_only2(chk){
	   var obj = document.getElementsByName("bb");
	   for(i =0; i<obj.length; i++){
		   if(obj[i] != chk){
               obj[i].checked = false;
           }
	   }
	   for(var i=0; i<4; i++){
		   if((chk.value-1) == i){
			   cnt[i] ++;
		   }
	   }
	   
   }
   
   function check_only3(chk){
	   var obj = document.getElementsByName("db");
	   for(i =0; i<obj.length; i++){
		   if(obj[i] != chk){
               obj[i].checked = false;
           }
	   }
	   for(var i=0; i<4; i++){
		   if((chk.value-1) == i){
			   cnt[i] ++;
		   }
	   }
   }
   
   function check_only4(chk){
	   var obj = document.getElementsByName("eb");
	   for(i =0; i<obj.length; i++){
		   if(obj[i] != chk){
               obj[i].checked = false;
           }
	   }
	   for(var i=0; i<4; i++){
		   if((chk.value-1) == i){
			   cnt[i] ++;
		   }
	   }
	   
   }
   function check_only5(chk){
	   var obj = document.getElementsByName("fb");
	   for(i =0; i<obj.length; i++){
		   if(obj[i] != chk){
               obj[i].checked = false;
           }
	   }
	   for(var i=0; i<4; i++){
		   if((chk.value-1) == i){
			   cnt[i] ++;
		   }
	   }
	   
   }

</script>
</head>
<style>

   @font-face {
    font-family: myFont;
    src: url('//fonts.gstatic.com/ea/nanumgothic/v5/NanumGothic-Regular.woff');
	}
	
	@font-face{
	font-family : myFont2;
	src:url('https://fonts.google.com/specimen/Nunito');
	}
	
	.ng { font-family: myFont; }
	
	.ngg{font-family:myfont2; }
	
	*{margin:0;padding:0;}
	li {list-style:none;}
	a{text-decoration: none;}
	
	.menu{position: relative; width:100%; margin-left: auto; margin-right: auto; align:center;}
	.menu a{ line-height:40px; color:gray; padding: 0 18px; display:block;}

</style>
<body style="background-color:white">
	<table style="margin-left: auto; margin-right: auto; align:center;" >
		<tr>
			<td>
				<img src = "image/love_logo.png" height = "120px" OnClick="window.location.href='main.jsp'" style = cursor:pointer;>
			</td>
		</tr>
	</table>
<ul class = "menu">
<hr width = 100% color = "#D5D5D5" align = "center" size = "1"/>
<table style="margin-left: auto; margin-right: auto; align:center;">

	<tr>
		<td><li><a href="about.jsp">About</a></li></td>
		<td><li><a href="yourcolor.jsp">Your color</a></li></td>
		<td><li><a href="withcolor.jsp">With color</a></li></td>
		<td ><li ><a href="list.jsp">Board</a></li></td>
		<td width = "60px"></td>
	</tr>
</table>

<hr width = 100% color = "#D5D5D5" align = "center" size = "1"/>
</ul>





<table style="margin-left: auto; margin-right: auto; align:center; font-family:Nanum Gothic;" width = "800">
	<tr style = "font-size:20px; ">
		<td align = "center"><img src = "image/read3.jpg" width = 800px></td>
	</tr>
</table>





<table style="margin-left: auto; margin-right: auto; align:center; font-family:Nanum Gothic;"  width = "800" >	
	<tr align = "center">
	<td style = "font-size:15px;">
         <form name="form1">
         </br>
         <p class='ng'>
     		<strong>1. ���� � ���� ���ǰ� ��︮����? </strong></br></br>
               <input type="checkbox" name="cb" value="1" OnClick = "javascript:check_only(this)"> �ڶ� �÷��� ���ƿ�!
               <input type="checkbox" name="cb" value="2" OnClick = "javascript:check_only(this)"> ������� �� ����!
               <input type="checkbox" name="cb" value="3" OnClick = "javascript:check_only(this)"> ���� �÷��� ������!
               <input type="checkbox" name="cb" value="4" OnClick = "javascript:check_only(this)"> ��ä���� ���ƿ�! </br>
               </br></br>
               
               <strong>2. ���� � �Ǽ������� ��︮����? </strong></br></br>
			   <input type="checkbox" name="bb" value="1" OnClick = "javascript:check_only2(this)"> ���� ��� �÷��� ������!
               <input type="checkbox" name="bb" value="2" OnClick = "javascript:check_only2(this)"> �� ���� ������, �ǹ� �÷��� ���ƿ�.
               <input type="checkbox" name="bb" value="3" OnClick = "javascript:check_only2(this)"> ȭ���� ��� �÷��� �����ؿ�.
               <input type="checkbox" name="bb" value="4" OnClick = "javascript:check_only2(this)"> ��¦�̴� �ǹ� �÷��� ���ƿ�! </br>
               </br></br>
               
               <strong>3. ������ ��︮�� ��� �÷���? </strong></br></br>
               <input type="checkbox" name="db" value="1" OnClick = "javascript:check_only3(this)"> ������� ���� ���� ����!
               <input type="checkbox" name="db" value="2" OnClick = "javascript:check_only3(this)"> ��? ��ο� ����? Ÿ�� �ʾƿ�!
               <input type="checkbox" name="db" value="3" OnClick = "javascript:check_only3(this)"> ��ο� �÷��� ������ ���ƿ�.
               <input type="checkbox" name="db" value="4" OnClick = "javascript:check_only3(this)"> ���� ��ο� ���� ���ƿ�! </br>
               </br></br>
               
               <strong>4. �̷� ȭ���� ����ؿ�. </strong> </br></br>
               <input type="checkbox" name="eb" value="1" OnClick = "javascript:check_only4(this)"> �ڶ� �÷��� ���� ������ ���ƿ�! 
               <input type="checkbox" name="eb" value="2" OnClick = "javascript:check_only4(this)"> ���ϰ� ������� ��ܿ�.
               <input type="checkbox" name="eb" value="3" OnClick = "javascript:check_only4(this)"> £�� ���� ������ ��ܿ�!
               <input type="checkbox" name="eb" value="4" OnClick = "javascript:check_only4(this)"> ���ǵ�� �� �� ��! </br>
               </br></br>
               
               <strong>5. ���� �̹�����?</strong> </br></br>
               <input type="checkbox" name="fb" value="1" OnClick = "javascript:check_only5(this)"> ��������� �Ϳ���, 
               <input type="checkbox" name="fb" value="2" OnClick = "javascript:check_only5(this)"> ����ϰ� ����������,
               <input type="checkbox" name="fb" value="3" OnClick = "javascript:check_only5(this)"> �����ϸ鼭 ������ �ִ�,
               <input type="checkbox" name="fb" value="4" OnClick = "javascript:check_only5(this)"> ������ ������, </br>
               </br></br>
               <input type="button" value="Ȯ��" onclick="javascript:Check()">
               
          </p>
          </br>
          </form>
          </td>
    </tr>
</table>




<table style="margin-left: auto; margin-right: auto; align:center; font-family:Nanum Gothic;" width = "800">    
    <tr>
    	<td id = name align = "center"><img src = "image/what.png" width = 800px></td>
    </tr>
</table>




</body>
</html>