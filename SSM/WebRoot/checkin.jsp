<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head> 
    <title>睿道商城签到</title>
    <link rel="stylesheet" type="text/css" href="css/s_checkin_user_style.css" />

    <!--弹出层动画库样式-->
   <link rel="stylesheet" type="text/css" href="css/s_checkin_layer.css" media="all" />
    <script type="text/javascript">
     
    </script> 
  </head>
  <body> 
  <div class="qt_all_bg">

	<div class="q_ta_div">
		<div class="q_ta_box">
			<h2>${username}已签到</h2>
			<p>累计${checkinDayNums}天</p>
		</div>
	</div>
	
	<div class="q_tb_div">
	
		<div class="q_tb_box">
			<span ><i></i>周一</span>
			<em></em>
			<span ><i></i>周二</span>
			<em></em>
			<span><i></i>周三</span>
			<em></em>
			<span ><i></i>周四</span>
			<em></em>
			<span class="c_xz"><i></i>周五</span>
			<em></em>
			<span><i></i>周六</span>
			<em></em>
			<span class="s_r"><i></i>周日</span>
		</div>
	
	</div>

</div>


<div class="qt_all_mian">
	<div class="qt_tit_div">
		<span>累计签到有奖</span>
	</div>
	<div class="qt_box_div">
		<ul class="clearfix">
			<li class="li_a"><a class="xz_a">已领取</a></li>
			<li class="li_b"><a id="now_zc">未领取</a></li>
			<li class="li_c"><a >未领取</a></li>
		</ul>
	</div>

	<div class="qt_tit_div">
		<span>签到规则</span>
	</div>

	<div class="qt_tit_bot">
		<h2><i></i></h2>
		<ul>
			<em>1</em>
			<li>睿道商城网站用户在网站进行签到，签到周期为7天：</li>
		</ul>
		<ul>
			<em>2</em>
			<li>一周签到次数为1次、3次、7次将分别得到一个不同金额的红包；</li>
		</ul>
		<ul>
			<em>3</em>
			<li>本周签到1次可得到一个满50减5红包，签到3次可得到一个满200减20的红包，签到7次可得到一个满500减50的红包：</li>
		</ul>
		<ul>
			<em>4</em>
			<li>所有红包自发放后，7天有效；</li>
		</ul>
		<ul>
			<em>5</em>
			<li>本活动最终解释权由狙球者彩票所有，有疑问联系客服：</li>
		</ul>
	</div>
</div>



<div id="ljzc_pup" class="hide">
	<div class="zc_pup_tit">
		<h2>恭喜获奖</h2>
		<a  href="javascript:layer.closeAll();"></a>
	</div>
	<div class="zc_pup_box">
		<dl>  
			<em>2</em>
			<dt>累计3天</dt>
			<dd>满20减2使用</dd>
		</dl>
		<p>恭喜您获得满<span>20减2</span>的红包</p>
		<a>知道了</a>
	</div>
</div>
        
        
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script> 
<script type="text/javascript" src="js/layer.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('#now_zc').on('click', function() {
		var url = $(this).attr('url');
		var index = layer.open({
			type: 1,
			title: false,
			closeBtn: false,
			shadeClose: true,
			area: '412px',
			offset: '25%',
			content: $('#ljzc_pup')
		});
	});
});
</script>    
  </body>
</html>
