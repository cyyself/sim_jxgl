
<HTML>
	<HEAD>
		<title>Menu</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../_style/Styles_menu.css" type="text/css" rel="stylesheet">
		<script type="text/javascript" language="javascript">
		    function rgbTo16(a)
			{
				//RGB(204,204,024)
				//十六进制颜色值的正则表达式
				var reg = /^#([0-9a-fA-f]{3}|[0-9a-fA-f]{6})$/;
				var that = a;
				if (/^(rgb|RGB)/.test(that))
				{
					var aColor = that.replace(/(?:\(|\)|rgb|RGB)*/g, "").split(",");
					var strHex = "#";
					for (var i = 0; i < aColor.length; i++) {
						var hex = Number(aColor[i]).toString(16);
						if (hex === "0"){
							hex += hex;
						}
						strHex += hex;
					}
					if (strHex.length !== 7) {
						strHex = that;
					}
					return strHex;
				} else if (reg.test(that)) {
					var aNum = that.replace(/#/, "").split("");
					if (aNum.length === 6) {
						return that;
					} else if (aNum.length === 3) {
						var numHex = "#";
						for (var i = 0; i < aNum.length; i += 1) {
							numHex += (aNum[i] + aNum[i]);
						}
						return numHex;
					}
				} else {
					return that;
				}
			}
			
			function _16Torgb(a)
			{
				//#ffffff
				//十六进制颜色值的正则表达式
				var reg = /^#([0-9a-fA-f]{3}|[0-9a-fA-f]{6})$/;
				var sColor = a.toLowerCase();
				if (sColor && reg.test(sColor)) 
				{
					if (sColor.length === 4) {
						var sColorNew = "#";
						for (var i = 1; i < 4; i += 1) {
							sColorNew += sColor.slice(i, i + 1).concat(sColor.slice(i, i + 1));
						}
						sColor = sColorNew;
					}
					//处理六位的颜色值
					var sColorChange = [];
					for (var i = 1; i < 7; i += 2) {
					sColorChange.push(parseInt("0x" + sColor.slice(i, i + 2)));
					}
					return "RGB(" + sColorChange.join(",") + ")";
				} else {
					return sColor;
				}
			}
		</script>
		
	</HEAD>
	<body leftMargin="0" topMargin="0" oncontextmenu="window.event.returnValue=false" onselectstart="window.event.returnValue=false"
		ondragstart="window.event.returnValue=false" onsource="window.event.returnValue=false">
		<form name="Form1" method="post" action="menu.aspx" id="Form1">
<input type="hidden" name="__VIEWSTATE" value="dDwtNzk2MDIzMjAwOzs+6K+gxWzF6YamVAxRdVsSMBykKwM=" />

<input type="hidden" name="__VIEWSTATEGENERATOR" value="C8EE3346" />
	<script language='javascript'><!--
var t,KingoMemuBar=new KingoMemu();
function showMenu_WEB(){
var sTree='';
sTree+=addLinkBlock("修改个人密码;../MyWeb/User_ModPWD.aspx;");
sTree+=addLinkBlock("查看个人登录日志;../MyWeb/M_Log.aspx;");
sTree+=addLinkBlock("文件下载;../MyWeb/M_Down.aspx;");
return(sTree);
}
function showMenu_BBS(){
var sTree='';
sTree+=addLinkBlock('论坛首页;../bbs/index_right.aspx;');
return(sTree);
}

var RGB_Atvbord='1px solid #f4fffb';
var RGB_Atvfont='#015436';
var RGB_Atvbgrd='#89bfa7';
var RGB_FontHover='#333333';
var RGB_Chkbord='0 solid #f4fffb';
var RGB_Chkfont='#318262';
var RGB_Chkbgrd='#89bfa7';
var barActiveStyle=" valign=bottom style='height:20px; cursor:pointer; background-color:"+RGB_Atvbgrd+";color:"+RGB_Atvfont+"; border:"+RGB_Atvbord+"' "; 
var barCheckStyle =" valign=bottom style='height:20px; cursor:pointer; background-color:"+RGB_Chkbgrd+";color:"+RGB_Chkfont+"; border:"+RGB_Chkbord+"' "; 
var tableStyle=" style='height:100%;width:100%' border=0 valign=middle align=center cellspacing='0' cellpadding='0' ";
function KingoMemu(){
	this.barArray=new Array();
	this.addBar=addBar;
	this.curBarIndex=-1;
	this.lastLinkObj='';
	this.lastLayerID='';
	this.showBar=showBar;
}
function addBar(pText,pID){
	KingoMemuBar.barArray[KingoMemuBar.barArray.length]=new textArray(pText,pID);
}
function textArray(pText,pID){
	this.id=pID;
	this.text=pText;
}
function showBar(){
	var sHTML="<table "+tableStyle+">"; 
	for (i=0;i<(KingoMemuBar.barArray.length);i++)	{
		sHTML+="<tr id=memuBarBtn"+i+" name=memuBarBtn"+i+" >";
		sHTML+="<td id=memuBarText"+i+" name=memuBarText"+i+" align=center "+barActiveStyle;
		sHTML+=" onmouseover='this.style.color=RGB_FontHover'  onmouseout='this.style.color=RGB_Atvfont' onclick='openTheBar("+i+")' key='"+KingoMemuBar.barArray[i].id+"' >";
		sHTML+="<b>"+KingoMemuBar.barArray[i].text+"</b></td></tr>";
		sHTML+="<tr id=memuLnkBtn"+i+" name=memuLnkBtn"+i+" >";
		sHTML+="<td id=memuLinkDiv"+i+" name=memuLinkDiv"+i+" valign=top align=center style='width:100%;";
		sHTML+=(i!=KingoMemuBar.curBarIndex)?"display:none'>":"'><br></td></tr>"
	}
	sHTML+="<tr><td id=blankdiv name=blankdiv valign=top align=center style='height:100%;width:100%'";
	sHTML+=(i!=KingoMemuBar.curBarIndex)?"display:none'>":"'>";
	sHTML+="<br></td></tr>";
	sHTML+="</table>";
	document.getElementById('divTheMenu').innerHTML=sHTML;
}
function openTheBar(pIndex)
{
	var whichEl; var lastIndex;
	lastIndex = KingoMemuBar.curBarIndex;
	if ((pIndex!=lastIndex)&&(pIndex<KingoMemuBar.barArray.length)){
		KingoMemuBar.curBarIndex=pIndex;	
		document.all("blankdiv").style.display='none';
		if(lastIndex!=-1) doBar('close',lastIndex);	
		doBar('open',pIndex);
		hideTheMenu('T');
	}
}
function doBar(pDo,pIndex){try{
	var theObj=document.all("memuBarText"+pIndex);
	if(pDo=='close'){
		document.all("memuLinkDiv"+pIndex).style.display='none';
		document.all("memuLinkDiv"+pIndex).style.height="100%";
		theObj.style.cursor='pointer';
		theObj.style.border=RGB_Atvbord;
		theObj.style.background=RGB_Atvbgrd;
		theObj.style.color=RGB_Atvfont;
	}else if(pDo=='open'){
		document.all("memuLinkDiv"+pIndex).style.display='';
		document.all("memuLinkDiv"+pIndex).style.height="100%";
		theObj.style.cursor='';
		theObj.style.border=RGB_Chkbord;
		theObj.style.background=RGB_Chkbgrd;
		theObj.style.color=RGB_Chkfont;
	}
}catch(e){}}
function openTheMenu(pIndex,pLayerID){try{
	openTheBar(pIndex);
	if (pLayerID!=''){
	var objDiv=eval("divGrp"+pLayerID);
	var objImg=eval("imgGrp"+pLayerID);
	if(typeof(objDiv)=='object')
	objDiv.style.display='';
	objImg.src='../images/tree/shrink.gif';
	KingoMemuBar.lastLayerID=pLayerID;	
	}
}catch(e){}}
function hideTheMenu(pTF){try{
	var objBar,objLnk;
	var vID=KingoMemuBar.curBarIndex;
	for(i=0;i<KingoMemuBar.barArray.length;i++){
	eval("objBar=memuBarBtn"+i);
	eval("objLnk=memuLnkBtn"+i);
	if(i!=vID){
		if(objBar.style.display=='')
		{objBar.style.display='none';objLnk.style.display='none';}
		else{objBar.style.display='';objLnk.style.display='';}
	}else if(pTF=='F'){	 
		doBar('close',vID);
		document.all("blankdiv").style.display='';
		KingoMemuBar.curBarIndex=-1;
	}else{window.top.menu.onhide2_Ex('down');}
	}
	return true;
}catch(e){return false}}

function addLinkGroup(pID,pGrpName,pDis,pLists)
{
var s,pL,vN,vU,vT;
var pAry=pLists.split('|');
var vLen=pAry.length;
s ="<tr height=20px onclick=showLay('"+pID+"')>";
s+="<td valign=middle width=20px><img id='imgGrp"+pID+"' border=0 width=20px "; 
s+=(pDis=='none')?" src='../images/tree/expand.gif'></td>":" src='../images/tree/shrink.gif'></td>";
s+="<td valign=middle width=154px></b>"+pGrpName+"</b><br></td></tr>";
s+="<tr height=20px id='divGrp"+pID+"' style='display:"+pDis+";'>";
s+="<td colspan=2><table border=0 style='width:174px' CELLPADDING=0 CELLSPACING=0>";
for(i=0;i<vLen;i++){pL=pAry[i];
	vN=pL.split(';')[0]; vU=pL.split(';')[1]; vT=pL.split(';')[2];	
	if((vN.length>12)&&(i>0)) s+="<tr height=2px><td colspan=2 height=2px></td></tr>";
	s+="<tr height=20px><td valign=middle width=20px><img border=0 height=20px width=20px";
	s+=(i+1==vLen)?" src='../images/tree/t1.gif'></td>":" src='../images/tree/t0.gif'></td>";
	s+="<td valign=middle width=154px align=left style='color:#000000;cursor:pointer' value='"+vU+"' title='"+vT+"' onclick=ToLink(this) onmouseover=MouseOver(this) onmouseout=MouseOut(this)>"+vN+"</td></tr>";
	if((vN.length>12)&&(i+1!=vLen)) s+="<tr height=4px><td colspan=2 height=4px></td></tr>";
}
s+="</table></td></tr>";
return s;
}
function addLinkBlock(pAry)
{
var s,vN,vU,vT;
vN=pAry.split(';')[0]; vU=pAry.split(';')[1]; vT=pAry.split(';')[2];
s ="<tr height=20px><td valign=middle><img src='../images/tree/tree0.gif' border=0 width=20px>";
s+="<td valign=middle width=154px><span value='"+vU+"' title='"+vT+"' style='color:#000000;cursor:pointer' onclick=ToLink(this) onmouseover=MouseOver(this) onmouseout=MouseOut(this)>"+vN+"</span><br></td>";
s+="</tr>";
if(vN.length>12){
s ="<tr height=2px><td colspan=2 height=2px></td></tr>"+s;
s+="<tr height=2px><td colspan=2 height=2px></td></tr>";
}
return s;
}
function addTempDiv(pID,pStr)
{
var s;
var vStr=pStr;
s ="<tr><td></td><td id='divTemp"+pID+"' width=174px>"+vStr+"</td></tr>";
return s;
}

var RGB_NONE='#cccccc';
var RGB_LINK='#000000';
var RGB_OVER='#3eb268';
var RGB_CHECK='#ff0000';
function MouseOver(arg)
{
if(rgbTo16(arg.style.color)==RGB_NONE){arg.style.cursor='';return false;}
if(rgbTo16(arg.style.color)==RGB_LINK){arg.style.cursor='pointer';arg.style.color=RGB_OVER;}
}
function MouseOut(arg){try
{
if(rgbTo16(arg.style.color)==RGB_OVER) arg.style.color=RGB_LINK;
}catch(e){}
}
function showLay(divId){
	var objDiv = document.getElementById('divGrp'+divId);
	var objImg = document.getElementById('imgGrp'+divId);
 	var whichEl=KingoMemuBar.lastLayerID;
	var vTREE_Multi = true;
	if(vTREE_Multi!=true){
		if(whichEl!='')
		if(whichEl!=divId){
		document.getElementById('divGrp'+whichEl).style.display='none';
		document.getElementById('imgGrp'+whichEl).src='../images/tree/expand.gif';
		}
	}
	if(objDiv.style.display=='none'){
		objImg.src='../images/tree/shrink.gif';
		objDiv.style.display='';
	}else{ 
		objImg.src='../images/tree/expand.gif';
		objDiv.style.display='none';
	}
	KingoMemuBar.lastLayerID=divId;
}
function ToLink(theObj)
{		
	var whichEl,vTitle;
	if((rgbTo16(theObj.style.color)!=RGB_OVER)&&(rgbTo16(theObj.style.color)!=RGB_CHECK)) return false; 
	whichEl = KingoMemuBar.lastLinkObj;
	if(whichEl!=''){
	if(rgbTo16(whichEl.style.color)==RGB_CHECK) whichEl.style.color=RGB_LINK;
	}
	theObj.style.color =RGB_CHECK;
	KingoMemuBar.lastLinkObj=theObj;
	if(theObj.getAttribute('value')!=''){
	vTitle='重庆大学教务网站 ['+KingoMemuBar.barArray[KingoMemuBar.curBarIndex].text;
	vTitle+='--'+theObj.innerHTML+']';
 	window.frames['frmMain'].document.location.href=theObj.getAttribute('value');
 	 if(vTitle.indexOf('&ensp;')>-1) vTitle=clearBlank(vTitle,'&ensp;');
	 if(vTitle.indexOf('<br>')>-1) vTitle=clearBlank(vTitle,'<br>');
	window.top.document.title=vTitle;
	window.top.frames['banner'].bgwav.src=parent.frames['banner'].bgwav.src;
	}else{alert('不能点击空链接！');}
}
 function clearBlank(str,rStr){
try{
 if(str.indexOf(rStr)==-1){
	 return str;	}else{
		str=str.replace(rStr,'');
		return clearBlank(str,rStr);	}
}catch(err){ return str;}
}

function ShowMenuTree()
{
	try{
		var sTree,sKey;
		var i,barLen=KingoMemuBar.barArray.length;
		var IE=window.navigator.userAgent.indexOf('MSIE');
	    var vheight = document.body.clientHeight - 20;
		for(i=0;i<barLen;i++)
		{
			sTree=''; sKey=KingoMemuBar.barArray[i].id;
			eval("sTree=showMenu_"+sKey+"()");
			sTree="<table style='width:116px' border=0 align=left CELLPADDING=0 CELLSPACING=0>"+sTree+"</table>";
			if(IE>0) {sTree="<div style='overflow:auto;width:100%;height:100%'>"+sTree+"</div>";}
          else{ 			sTree="<div style='overflow:auto;width:100%;height:" + vheight + "px'>"+sTree+"</div>"};
			eval("window.memuLinkDiv"+i+".innerHTML=sTree");
		}
	}
	catch(e){alert('【加载用户菜单】网络繁忙,请稍后刷新再试！')}}

function showMenu_D01(){var sTree='';sTree+=addLinkGroup('D0102','学籍档案','none','基本信息;../xsxj/Stu_MyInfo.aspx;|增改基本信息;../xsxj/Stu_EditMyInfo.aspx;|辅修报名;../xsxj/Stu_fxzy_bm.aspx;|辅修信息;../xsxj/Stu_fxInfo.aspx;');
 sTree+=addLinkBlock('注册信息;../xsxj/Stu_xszcxs.aspx;');
sTree+=addLinkGroup('D0104','学籍异动','none','申请异动;../xsxj/Stu_ydsq.aspx;');
sTree+=addLinkGroup('D0105','毕业事宜','none','毕业审核结论;../xsxj/Stu_byshjl.aspx;');
 return(sTree);}
function showMenu_D02(){var sTree=''; sTree+=addLinkBlock('专业培养方案;../jxjh/jxjh.ckzykchj.aspx;');
 sTree+=addLinkBlock('毕业学分要求;../jxjh/sys.ckbyxfyq.aspx;');
sTree+=addLinkBlock('查看课程大纲;../xsxj/a_xjgd.aspx;');
 return(sTree);}
function showMenu_D03(){var sTree='';sTree+=addLinkGroup('D0303','排课后选课','none','选课程/环节;../wsxk/stu_btx.aspx;|选大学英语拓展课程;../wsxk/stu_yytgk_bx.aspx;|选非限制性选修课;../wsxk/stu_ggrxk.aspx;|退选课程/环节;../wsxk/stu_txjg.aspx;|选大学英语拓展课程结果;../wsxk/stu_yytgkjg_bx.aspx;');
sTree+=addLinkGroup('D0304','通识教育课程','none','选通识教育课程;../wsxk/stu_whszk.aspx;|通识教育课程选课结果;../wsxk/stu_ggrxkjg.aspx;');
 sTree+=addLinkBlock('刷新考试选课;;');
sTree+=addLinkBlock('查看课程→教材;../wsxk/DKCREFFBOOK.aspx;');
 return(sTree);}
function showMenu_D04(){var sTree=''; sTree+=addLinkBlock('查看个人课表;../znpk/Pri_StuSel.aspx;');
 sTree+=addLinkBlock('查看课表[按课程];../ZNPK/KBFB_LessonSel.aspx;');
 sTree+=addLinkBlock('查看课表[按教师];../ZNPK/TeacherKBFB.aspx;');
sTree+=addLinkBlock('查看课表[按班级];../ZNPK/KBFB_ClassSel.aspx;');
 return(sTree);}
function showMenu_D05(){var sTree=''; sTree+=addLinkBlock('申请缓考;../KSSW/Stu_xshksq.aspx;');
sTree+=addLinkBlock('考试安排表;../KSSW/stu_ksap.aspx;');
 return(sTree);}
function showMenu_D06()
{var sTree=''; sTree+=addLinkBlock('查看成绩;../xscj/Stu_MyScore.aspx;');
 sTree+=addLinkBlock('成绩分布;../xscj/Stu_cjfb.aspx;');
sTree+=addLinkBlock('查看平时成绩;../XSCJ/stu_ckpscj.aspx;');
 return(sTree);}
t=KingoMemuBar.addBar('学生学籍','D01');
t=KingoMemuBar.addBar('培养方案','D02');
t=KingoMemuBar.addBar('网上选课','D03');
t=KingoMemuBar.addBar('教学安排','D04');
t=KingoMemuBar.addBar('考试安排','D05');
t=KingoMemuBar.addBar('学生成绩','D06');

KingoMemuBar.addBar('论&ensp;&ensp;&ensp;&ensp;坛','BBS');
KingoMemuBar.addBar('其&ensp;&ensp;&ensp;&ensp;它','WEB');
window.setTimeout('KingoMemuBar.showBar()',50);
window.setTimeout('ShowMenuTree()',500);
parent.frames['banner'].js_UserID='20184309';
parent.frames['banner'].js_UserName='陈泱宇';
parent.frames['banner'].js_UserRight='学生';
parent.frames['banner'].js_UserLVID='STU000';
parent.frames['banner'].js_UserGroup='学生';
parent.frames['banner'].js_UserDepart='_';
parent.frames['banner'].js_UserLogTime='20184309';

try{
parent.frames['frmFoot'].document.getElementById('TheFootMemo').innerHTML='&ensp;&ensp;&ensp;学生：[20184309]陈泱宇';
}catch(e){}
//-->
</script>



			<table style="WIDTH: 100%; HEIGHT: 100%" cellSpacing="0" cellPadding="0" border="0">
				<tbody>
					<tr>
						<td id="divTheMenu" style="HEIGHT: 100%" valign="top" align="center" width="185" bgcolor="#ebf7f3">
							</td>

						<td style="BORDER-LEFT:#89bfa8 1px solid; HEIGHT:100%" vAlign="top"><iframe id="frmMain" name="frmMain" src="../Pub/index.aspx" frameBorder="0" width="100%"
								scrolling="no" height="100%"></iframe>
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</body>
</HTML>
