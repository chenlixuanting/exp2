<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>飞牛网</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" href="css/jquery-yys-slider.css">
	<style>
		label{
			margin-top: -10px;
		}
	</style>
  </head>
  
  <body>
<table width="1900" height="833" border="0px" style="margin-left: -10px;margin-top: -10px;">
  <tr>
    <td colspan="2" rowspan="2"><img src="images/logo.png" width="172" height="71" /><img src="images/logo10.png" width="207" height="37" /></td>
    <td height="71" colspan="8">
    	<span>
    		<form method="post" action="search">
					<input name="searchContent" type="text" style="width: 855px;height: 34px;margin-top: -100px;border: 2px solid red"/>
    				<input type="submit" value="搜索" style="width: 100px;height: 34px;margin-left: -105px;border: 0 solid #ff4200;background-color: red;color: white;"/>
    		</form>
    	</span>
    </td>
    <td colspan="4"><img src="images/logo1.png" width="67" height="54" /></td>
  </tr>
  <tr>
    <td height="15" colspan="12">
      <label>啤酒</label>&nbsp;
      <label>买2付1</label>&nbsp;
      <label>乐优家</label>&nbsp;
      <label>电风扇</label>&nbsp;
      <label>驱蚊液</label>&nbsp;
      <label>六一狂欢</label>&nbsp;
      <label>钻典</label>&nbsp;
      <label>甜虾</label>&nbsp;
      <label>1件包邮</label>&nbsp;
    </td>
  </tr>
  <tr>
    <td width="196" align="center" bgcolor="#FF0000" style="color: white;font-size: 20px;border: 2px solid red;"><b>全部商品分类</b></td>
    <td width="181" align="center" bgcolor="#FF0000" style="color: white;">首页</td>
    <td width="188" align="center" bgcolor="#FF0000" style="color: white;">飞牛商城</td>
    <td width="178" align="center" bgcolor="#FF0000" style="color: white;">周周抢</td>
    <td width="103" align="center" bgcolor="#FF0000" style="color: white;">生鲜馆</td>
    <td width="81" align="center" bgcolor="#FF0000" style="color: white;">家电馆</td>
    <td width="135" align="center" bgcolor="#FF0000" style="color: white;">服装城</td>
    <td width="154" align="center" bgcolor="#FF0000" style="color: white;">家居馆</td>
    <td colspan="6" align="center" bgcolor="#FF0000" style="color: white;">美食城进口美食馆</td>
  </tr>
  <tr>
    <td height="34"><img src="images/logo4.png" width="29" height="26" />
    <label>生鲜、</label>
    <label>冷藏、</label>
    <label>冷冻食</label>
     <hr style= "opacity:0.5;width: 90%;">
    </td>
    <td colspan="13">&nbsp;</td>
 </tr>
  <tr>
    <td height="47"><img src="images/logo5.png" width="26" height="29" />
      <label>食品、</label>
      <label>饮料、</label>
      <label>酒水</label>
      <hr style= "opacity:0.5;width: 90%;">
    </td>
    <td colspan="8" rowspan="9">
    	<!-- <img src="images/good1.png" width="1400" height="490" /> -->
    	
    	<div class="content-part part-tese">
	<div class="content-title">
	</div>
	<div class="shadow">
	</div>
		<div class="gallery_container">
			<div class="gallery_wrap threeD_gallery_wrap" style="margin-left: -550px; margin-top: -350px;">
				<div href="javascript:;" class="gallery_item threeD_gallery_item gallery_left_middle">
					<img src="images/yys_banner1.jpg" class="show">
					<div class="line-t">
					</div>
					<div class="line-r">
					</div>
					<div class="line-b">
					</div>
					<div class="line-l">
					</div>
				</div>
				<div href="javascript:;" class="gallery_item threeD_gallery_item front_side">
					<img src="images/yys_banner2.jpg" class="show">
					<div class="line-t">
					</div>
					<div class="line-r">
					</div>
					<div class="line-b">
					</div>
					<div class="line-l">
					</div>
				</div>
				<div href="javascript:;" class="gallery_item threeD_gallery_item gallery_right_middle">
					<img src="images/yys_banner3.jpg" class="show">
					<div class="line-t">
					</div>
					<div class="line-r">
					</div>
					<div class="line-b">
					</div>
					<div class="line-l">
					</div>
				</div>
				<div href="javascript:;" class="gallery_item threeD_gallery_item gallery_out">
					<img src="images/yys_banner4.jpg" class="show">
					<div class="line-t">
					</div>
					<div class="line-r">
					</div>
					<div class="line-b">
					</div>
					<div class="line-l">
					</div>
				</div>
			</div>
			<a class="prev" href="javascript:;" style="margin-left: -200px;"></a>
			<a class="next" href="javascript:;" style="margin-right: 150px;"></a>
		</div>
	</div>
    </td>
    <td><input name="" type="button" style="width:65px;height: 55px;border: 0 solid #ff4200;background-color: red;color: white;"value="登录"/></td>
    <td><input name="" type="button" style="width:70px;height: 55px;border: 0 solid #ff4200;background-color: red;color: white;"value="免费注册"/></td>
    <td><input name="" type="button" style="width:65px;height: 55px;border: 0 solid #ff4200;background-color: red;color: white;"value="VIP会员"/></td>
    <td><input name="" type="button" style="width:65px;height: 55px;border: 0 solid #ff4200;background-color: red;color: white;"value="折扣"/></td>
  </tr>
  <tr>
    <td height="47"><img src="images/logo6.png" width="28" height="31" /> 
    	<label>进口食品、</label>
      <label>进口牛奶</label>
      <hr style= "opacity:0.5;width: 90%;">
    </td>
    <td width="58"><img src="images/logo2.png" width="35" height="34" /></td>
    <td width="66">正品低价</td>
    <td width="58"><img src="images/logo2.png" width="35" height="34" /></td>
    <td width="71">信誉到家</td>
  </tr>
  <tr>
    <td height="40"><img src="images/logo4.png" alt="" width="29" height="26" /> 
    	<label>美容化妆、</label>
      <label>个人护理</label>
       <hr style= "opacity:0.5;width: 90%;">
    </td>
    <td><img src="images/logo3.png" width="31" height="34" /></td>
    <td>货到付款</td>
    <td><img src="images/logo3.png" width="31" height="34" /></td>
    <td>放心购买</td>
  </tr>
  <tr>
    <td height="37"><img src="images/logo5.png" alt="" width="26" height="29" />
    	<label>家庭清洁、</label>
      <label>纸、</label>
    	<label>卫沐</label>
    	<hr style= "opacity:0.5;width: 90%;">
    </td>
    <td colspan="5">&nbsp;</td>
  </tr>
  <tr>
    <td height="27"><img src="images/logo6.png" alt="" width="28" height="31" />
    	<label>厨具、</label>
      <label>餐具、</label>
    	<label>一次性</label>
    	<hr style= "opacity:0.5;width: 90%;">
    </td>
    <td colspan="2">
    	<hr color="red">
    	<input name="" type="button" style="width: 138px;height: 60px;border: 0px solid #ff4200; color: red;background-color: white;" value="重磅推荐"/>
    </td>
    
    <td colspan="2">
    		<hr color="gainsboro">
    	<input name="" type="button" style="width: 138px;height: 60px;border: 0px solid #ff4200; color: gainsboro;background-color: white;" value="疯狂抢购"/>
    </td>
  </tr>
  <tr>
    <td><img src="images/logo4.png" alt="" width="29" height="26" />
    	<label>家居家装、</label>
      <label>收纳</label>
    	<hr style= "opacity:0.5;width: 90%;">
    </td>
    <td colspan="5" rowspan="5">
    	<img src="images/good10.jpg" width="292" height="269" />
    </td>
  </tr>
  <tr>
    <td height="46"><img src="images/logo5.png" alt="" width="26" height="29" />
    	<label>手机、</label>
      <label>数码、</label>
    	<label>配件</label>
    	<hr style= "opacity:0.5;width: 90%;">
    </td>
  </tr>
  <tr>
    <td height="45"><img src="images/logo6.png" alt="" width="28" height="31" />
    	<label>电脑、</label>
    	<label>外设</label>
    	<hr style= "opacity:0.5;width: 90%;">
    </td>
  </tr>
  <tr>
    <td height="32"><img src="images/logo4.png" alt="" width="29" height="26" />
    <label>家用电器</label>
    <hr style= "opacity:0.5;width: 90%;">
    </td>
  </tr>
  <tr>
    <td height="41"><img src="images/logo5.png" alt="" width="26" height="29" />
    <label>文具、</label>
    <label>图书、</label>
    <label> 汽车</label>
    <hr style= "opacity:0.5;width: 90%;">
    </td>
    <td rowspan="3">&nbsp;</td>
    <td rowspan="3"><img src="images/good3.png" width="162" height="93" /></td>
    <td rowspan="3">&nbsp;</td>
    <td colspan="2" rowspan="3"><img src="images/good4.png" width="132" height="111" /></td>
    <td rowspan="3">&nbsp;</td>
    <td colspan="2" rowspan="3"><img src="images/good5.png" width="155" height="108" style="margin-left: 100px;"/></td>
  </tr>
  <tr>
    <td height="38"><img src="images/logo6.png" alt="" width="28" height="31" />
    	<label>服饰、</label>
      <label>童装、</label>
    	<label>饰品配</label>
    	<hr style= "opacity:0.5;width: 90%;">
    </td>
    <td colspan="2">
    	<hr color="red">
    	<input name="" type="button" style="width: 142px;height: 57px;border: 0px solid #ff4200; color: red;background-color: white;" value="网站公告"/>
    </td>
    <td colspan="2">
    	<hr color="gainsboro">
    	<input name="" type="button" style="width: 142px;height: 57px;border: 0px solid #ff4200; color: gainsboro;background-color: white;" value="最新消息"/>
    </td>
  </tr>
  <tr>
    <td height="34"><img src="images/logo4.png" alt="" width="29" height="26" />
    	<label>鞋靴、</label>
    	<label>皮包</label>
    	<hr style= "opacity:0.5;width: 90%;">
    </td>
    <td colspan="5" rowspan="4">
    	<ul>
    		<li style="opacity: 0.5;">飞牛商城,欢迎入驻</li>
    		<li style="opacity: 0.5;">飞牛商城,欢迎入驻</li>
    		<li style="opacity: 0.5;">便利店自提服务上线</li>
    		<li style="opacity: 0.5;">便利店自提服务上线</li>
    		<li style="opacity: 0.5;">会员积分说明</li>
    		<li style="opacity: 0.5;">会员积分说明</li>
    		<li style="opacity: 0.5;">优惠卡卷说明</li>
    		<li style="opacity: 0.5;">优惠卡卷说明</li>
    	</ul>
    </td>
  </tr>
  <tr>
    <td height="46"><img src="images/logo5.png" alt="" width="26" height="29"/>
    	<label>床品、</label>
    	<label>内衣、</label>
    	<label>毛巾</label>
    	<hr style= "opacity:0.5;width: 90%;">
    </td>
    <td rowspan="3">&nbsp;</td>
    <td rowspan="3"><img src="images/good6.png" width="152" height="97" /></td>
    <td rowspan="3">&nbsp;</td>
    <td colspan="2" rowspan="3"><img src="images/good7.png" width="159" height="105" /></td>
    <td rowspan="3">&nbsp;</td>
    <td colspan="2" rowspan="3"><img src="images/good8.png" width="125" height="94" style="margin-left: 100px;"/></td>
  </tr>
  <tr>
    <td height="47">
    	<img src="images/logo6.png" alt="" width="28" height="31" /> 
    	<label>母婴、<label>
    	</label>玩具</label>
    	<hr style= "opacity:0.5;width: 90%;">
    </td>
  </tr>
  <tr>
    <td height="34">
    	<img src="images/logo4.png" alt="" width="29" height="26" />
    	<label>保健滋补、<label>
     </label>计生
     <hr style= "opacity:0.5;width: 90%;">
    </td>
  </tr>
</table>
    <div>
        <form action="commodity/add" method="post">
            <span>商品名称:<input type="text" name="name" style="width:200px;height: 30px;"></span>
            <span>商品数量:<input type="text" name="number" style="width:200px;height: 30px;"></span>
            <span>商品价格:<input type="text" name="price" style="width:200px;height: 30px;"></span>
            <span><input type="submit" value="提交" style="width:50px;height: 30px;"></span>
        </form>
    </div>
</body>
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script> 
<script src="js/jquery-yys-slider.js"></script> 
<script>
	$(function(){
		$('.content-part.part-tese').addClass('show');
		$('.gallery_container').gallery_slider({imgNum: 4});
	})
</script>
</html>
