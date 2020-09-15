
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>PageTemplate1</title>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<style >
			html,body, td{ font-size:12px;font-family:宋体;}
			td.title{ color:#000;font-weight:bold;text-align:left;}
			a { color:#000;font-size:12px;text-decoration: none }
		</style>
		<SCRIPT LANGUAGE="javascript">
			function openWinX(url,name,w,h){
				var pop=window.open(url,name,"width=" + w + ",height=" + h + ",toolbar=no,menubar=no,scrollbars=yes,resizable=yes,location=no,status=no");
				pop.moveTo((screen.width-w)/2,(screen.height-h)/2);
			}

			function popOpen(id){
				var win = window.open('../_data/read_detail_news.aspx?tid='+id, '', 'width=660,height=550,resizable=yes,menubar=yes,toolbar=no,location=no,scrollbars=yes,status=no');
				win.moveTo((screen.availWidth - 550) / 2, 100);
			}
			function popWinMore(){
				var pop,w=550,h=380; 
				var theURL="../_data/index_allnews.aspx"; 
				pop=window.open(theURL,"winDWL","width="+w+",height="+h+",resizable=no,menubar=no,toolbar=no,location=no,scrollbars=no,status=no")
 				pop.moveTo((screen.width-w)/2,100);
			}
		</SCRIPT>
		
	</HEAD>
	<body leftmargin="5" topmargin="10" rightmargin="0" bottommargin="2" >
		<table width='100%' border='0' cellpadding='1' cellspacing='0' align='center'><tr><td width='56%' height='200' valign='top'><table width='100%' border='0' cellpadding='0' cellspacing='0' align='center'><tr><td width='80%' class='title'>通知公告</td><td width='20%' align='right'><a href='javascript:void(0)' onclick=popWinMore()>更多>></a>&nbsp;</td></tr><tr><td colspan='2' height='10px'><img width='360' src='../images/10611/index_navigation_bg_lin.gif' border='0'/></td></tr><tr><td height='22px' ><img src='../images/dot.gif' border='0'/>&nbsp;<a href='javascript:void(0)' onclick=popOpen('15789') >登录系统后功能无法使用请设置浏览器兼容性（具体操作见通知</a></td><td align='center' >2016-04-29</td></tr><tr><td height='22px' ><img src='../images/dot.gif' border='0'/>&nbsp;<a href='javascript:void(0)' onclick=popOpen('15669') >查看最新通知请前往http://jwc.cqu.edu.cn</a></td><td align='center' >2015-11-30</td></tr></table></td><td width='44%'><iframe width='100%' height='100%' frameborder='0' src='../_data/index_YL.aspx' scrolling='no'></iframe></td><tr><td height='5' colspan='2'><br></td></tr><td height='213' valign='top'><table width='100%' border='0' cellpadding='0' cellspacing='0' align='center'><tr><td width='80%' class='title'>文件下载</td><td width='20%' align='right'><a href='javascript:void(0)' onclick=popWinMore()>更多>></a>&nbsp;</td></tr><tr><td colspan='2' height='10px'><img width='360' src='../images/10611/index_navigation_bg_lin.gif' border='0'/></td></tr><tr><td height='22px' ><img src='../images/dot.gif' border='0'/>&nbsp;<a href='javascript:void(0)' onclick=popOpen('7063') >IE浏览器兼容性设置办法</a></td><td align='center' >2015-03-23</td></tr></table></td><td ><iframe width='100%' height='100%' frameborder='0' src='../_data/index_Time.aspx' scrolling='no'></iframe></td></tr></table><script type='text/javascript'></script>
	</body>
</HTML>
