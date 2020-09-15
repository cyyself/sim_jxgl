<?php 
	session_start();
	include_once("course.php");
	$cnt_course = 0;//��ѡ�γ�����
	$tot_score = 0;//��ѧ��
	function query_course_sel() {
		return null;
	}
?>
<script language=javascript> try{ parent.document.getElementById('td_xktime').style.display=''; }catch(e){} </script>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title></title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../_Style/styles_Rpt.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" type="text/JavaScript">
		function openWin(theID,vT,kc_flag)
			{	
				var theURL,w,h,Tform;
				if(vT=='kc'){w=480,h=300;
					eval("Tform='width="+w+",height="+h+"'");
					if(kc_flag=="0")
					{
						theURL = '../JXJH/INFO_KC.aspx?id='+theID.getAttribute("value");
					}
					else
					{
						theURL = '../JXJH/INFO_HJ.aspx?id='+theID.getAttribute("value");						
					}
				}
				else if(vT=='Tea'){w=450,h=380;
					eval("Tform='width="+w+",height="+h+"'");
					theURL = '../JXZY/INFO_Teacher.aspx?id='+theID.getAttribute("value");
				}
				else if(vT=='xkmc'){w=650,h=380;
					eval("Tform='width="+w+",height="+h+"'");
					theURL = '../WSXK/j_zxb_bjrs.aspx?id='+theID.getAttribute("value");
				}
				pop=window.open(theURL,'winKPT',Tform);
			}
			
			function openWinDialog(theID,N)
			{
				var Tform;
				var ReturnStr="";
				var jsskbj_str="";
				var jsskbj_val="";
				var w=800,h=600;
				var skbjval="";
				
				skbjval=document.getElementById("chkSKBJ"+N).value;
				var url="stu_xszx_skbj.aspx?lx=BX&id="+theID.getAttribute("value")+"&skbjval="+skbjval;
				
				//eval("Tform='dialogWidth:"+w+"px;dialogHeight:"+h+"px;status:no;scrollbars=no;help:no'");	
				//ReturnStr=window.showModalDialog(url,1,Tform);
				myShowModalDialog(url, w, h, function (ReturnStr) {
				try
				{
					jsskbj_str=ReturnStr.split('@')[0];
					jsskbj_val=ReturnStr.split('@')[1];
					if(ReturnStr.split('@')[0]=="undefined"){jsskbj_str="";}
					if(ReturnStr.split('@')[1]=="undefined"){jsskbj_val="";}
					eval("window.document.all.chkSKBJstr"+N+".value=jsskbj_str;");
					eval("window.document.all.chkSKBJ"+N+".value=jsskbj_val;");
				}catch(e){}
				
				if( document.getElementById("chkKC"+N).disabled == false){
					if( document.getElementById("chkSKBJ"+N).value != "" ){
						document.getElementById("chkKC"+N).checked = true;
					}else{
						document.getElementById("chkKC"+N).checked = false;
					}
				}
				
				});
				
			}
			
		function myShowModalDialog(url, width, height, fn) {
		    if (navigator.userAgent.indexOf("Chrome") > 0) {
		        window.returnCallBackValue354865588 = fn;
		        var paramsChrome = 'height=' + height + ', width=' + width + ', top=' + (((window.screen.height - height) / 2) - 50) +
		            ',left=' + ((window.screen.width - width) / 2) + ',toolbar=no, menubar=no, scrollbars=no, resizable=no, location=no, status=no';
		        window.open(url, "newwindow", paramsChrome);
		    }
		    else {
		        var params = 'dialogWidth:' + width + 'px;dialogHeight:' + height + 'px;status:no;dialogLeft:'
		                    + ((window.screen.width - width) / 2) + 'px;dialogTop:' + (((window.screen.height - height) / 2) - 50) + 'px;';
		        var tempReturnValue = window.showModalDialog(url, "", params);
		        fn.call(window, tempReturnValue);
		    }
		}
			function openWinDialog_YYTGK(theID,N,skqzdm)
			{
				var Tform;
				var ReturnStr="";
				var jsskbj_str="";
				var jsskbj_val="";
				var w=800,h=600;
				var skbjval="";
				var sel_xq = "";
				try
				{
					sel_xq = parent.document.getElementById("sel_xq").value;
				}
				catch(e)
				{
					sel_xq = "%";
				}
				skbjval=document.getElementById("chkSKBJ"+N).value;
				var url="stu_xszx_chooseskbj.aspx?lx=ZX&id="+theID.getAttribute("value")+"&skbjval="+skbjval+"&xq="+sel_xq+"&skqzdm="+skqzdm;
				
				//eval("Tform='dialogWidth:"+w+"px;dialogHeight:"+h+"px;status:no;center:yes;scroll=no;help:no'");	
				//ReturnStr=window.showModalDialog(url,1,Tform);
				myShowModalDialog(url, w, h, function (ReturnStr) {
				try
				{
					jsskbj_str=ReturnStr.split('@')[0];
					jsskbj_val=ReturnStr.split('@')[1];
					if(ReturnStr.split('@')[0]=="undefined"){jsskbj_str="";}
					if(ReturnStr.split('@')[1]=="undefined"){jsskbj_val="";}
					document.getElementById("chkSKBJstr"+N).value = jsskbj_str;
					document.getElementById("chkSKBJ"+N).value = jsskbj_val;
				}catch(e){}
				
				
				if( document.getElementById("chkKC"+N).disabled == false){
					if( document.getElementById("chkSKBJ"+N).value != "" ){
						document.getElementById("chkKC"+N).checked = true;
					}else{
						document.getElementById("chkKC"+N).checked = false;
					}
				}
				});
			}
			
			function go(theObj)
			{
				var mFlag=true;
				var mb=false;
				var mcount;
				var m;
				mcount=FormAdd.mcount.value;
				if(mcount>0) {
					for(i=0;i<mcount;i++){
						if(eval("FormAdd.chkKC"+i+".checked==true")&&eval("FormAdd.chkKC"+i+".disabled==false"))
						{
							mb=true;
							if(mb==true)
							{
								if(eval("window.document.all.chkSKBJ"+i+".value==''"))
								{mFlag=false;}
							}
						}
					}
					if(mb==false){
						alert("需选定一门课程！");
						return false;		
					}
					if(mFlag==false){
						alert("需选定上课班号→任课教师！");
						return false;		
					}
					else{
						if(document.getElementById("sel_lx").value == "2")//选公共任选课增加验证码
						{
						    try{
					            if(parent.document.getElementById("txt_yzm").value=="")
					            {
					                alert("须录入验证码！");
					                parent.document.getElementById("txt_yzm").focus();
					                return false;
					            }else{
						            return ChkValue(theObj);
						            return false;
					            }
					        }catch(e){
					           return ChkValue(theObj);
						        return false;
					        }
						}
						else{
						  return ChkValue(theObj);
						  return false;
					    }
					}
				}
			}

			function ChkValue(theObj)
			{
				var strurl;
				var strid="TTT",s=false;
				var N;
				var s1=theObj.value;
				var jsskbj_str="";
				var jsskbj_array;
				var xyjc;
				N=FormAdd.mcount.value;
				if(s1=="提交正选"){
					for (i=1;i<=N;i++){
					if(eval("FormAdd.chkKC"+(i-1)+".checked==true")&&eval("FormAdd.chkKC"+(i-1)+".disabled==false")){
						eval("jsskbj_str=FormAdd.chkSKBJ"+(i-1)+".value;");
						if(jsskbj_str!=""){
							var jsskbj_array=jsskbj_str.split(";");
							for(j=0;j<jsskbj_array.length;j++){
								strid+=","+jsskbj_array[j]+"#"+eval("FormAdd.chkKC"+(i-1)+".value");
								}
							}
							s=true;
						}
					}
					if (!s)return false;
					if (!confirm('是否提交记录？'))return false;
					
					FormAdd.id.value=strid;
					strurl="stu_btx_rpt.php?func=1";
					
					//重庆大学二专/主修允许时间冲突判断
					if(document.getElementById("sel_lx").value == "1" || 
					   document.getElementById("sel_lx").value == "0" ){  
						try{
							if(parent.document.getElementById("__thecheck").checked)
								document.getElementById("yxsjct").value = "1";
							else
								document.getElementById("yxsjct").value = "0";
						}catch(e){}
					}
					if(document.getElementById("sel_lx").value == "2")//选公共任选课增加验证码
					{
					    try{
					       document.getElementById("txt_yzm").value=parent.document.getElementById("txt_yzm").value;
					    }catch(e){}
					} 
					FormAdd.action=strurl;
					FormAdd.submit();
					//document.forms["FormAdd"].submit();
				}  
			}
			
			function selectSKBJ(xh,obj){
				
				if( obj.checked ){
					if( document.getElementById("winSKBJ"+xh) ){
						document.getElementById("winSKBJ"+xh).onclick();
					}
				}
			}
			
		</script>
	</HEAD>
	<body  onselectstart=window.event.returnValue=false oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false 
	 leftMargin="0" topMargin="0" marginheight="0" marginwidth="0">
		<form action='stu_btx_rpt.php?func=1' method="post" name="FormAdd">
			<table id="pageRpt" cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td>
			<TABLE id=oTable WIDTH=99% BORDER=0 align=center CELLPADDING=0 CELLSPACING=1 bgcolor=#89bfa7 ><TR align=center class=T><TD width='4%'>序号</TD><TD width='4%'>选定</TD><td align=center width='30%' >课程/环节</td><TD width='4%'>学分</TD><TD width='6%'>总学时</TD><TD width='20%'>类别</TD><TD width='32%'><br></TD></TR>
	<?php $i = 0; ?>
	<?php foreach ($course as $key => $value) { $course_sel = query_course_sel($key);?>
		<tr class=<?php echo $i%2?'H':'B'; ?>>
			<td align=center>
				<?php echo $i+1; ?>
				<input type=hidden name='kcxf<?php echo $key; ?>' id='kcxf<?php echo $i; ?>' value='1'>
			</td>
			<td align=center>
				<input name=chkKC0 id=chkKC0 type=checkbox value='000550Z1806XL01H��F1N2018C0U[MT23400]ë��˼����й���ɫ�������������ϵ����ʵ��$dwb0ahmacwayagmazabuagsanqbmag8aeqa4agyacgarag4amga4aggamab1ag4abwa9aa==' <?php if(!empty($course_sel)) echo 'checked disabled'; ?>
			</td>
			<td >
				<a href='javascript:void(0)' onclick=openWin(this,'kc','1') value=000550><?php echo $key; ?></a>
			</td>
			<td align=right>
				1.00<br>
			</td>
			<td align=right>
				1.0<br>
			</td>
			<td align=center>
				公共基础/必修<br>
			</td>
			<td align=left>
				<input type=hidden name='chkSKBJ<?php echo $i; ?>' id='chkSKBJ<?php echo $i; ?>' value='000550-016'>
				<input type=text name='chkSKBJstr<?php echo $i; ?>' id='chkSKBJstr<?php echo $i; ?>' style='width:225px' value="<?php 
					if (!empty($course_sel)) echo sprintf('[%03d]%s',$course_sel['class'],$course_sel['teacher']);
					?>" <?php if(!empty($course_sel)) echo 'disabled'; ?>>
				&nbsp;&nbsp;
				<a href='javascript:void(0)' id='winSKBJ0' onclick=openWinDialog(this,0) value='2019|1|000550|0|0|2018|1806|0'>查看</a>
			</td>
			</tr>
			<?php $i++; } ?>
			<tr style='background-color:#f4fffb'><td colspan=8 >已选课程门数：<?php echo $cnt_course; ?>，总学分：<?php echo sprintf("%0.2lf",$tot_score); ?></td></tr><tr style='display:none'><td colspan=5 ><input type=submit name=Submit onclick='return go(this)' value=提交正选 class=but40><input name=mcount id=mcount type=hidden value='27'><input name=sel_lx id=sel_lx type=hidden value=0><input name='sel_xq' id='sel_xq' type=hidden value=%><input name=SelSpeciality type=hidden value=20181806><input name=kclb3 type=hidden value=%><input name=chk_kyme id=chk_kyme type=hidden value=0><input name=id type=hidden value=''></td></tr><script language=javascript>parent.document.all.submit.disabled=false;try{parent.document.getElementById('kcmc').style.display='';}catch(e){}</script></table>
</td></tr></table>
			<input type=hidden name="yxsjct" id="yxsjct" ><!--允许时间冲突-->
			<input type="hidden" name="txt_yzm" id="txt_yzm">
		</form>
	</body>
</HTML>
