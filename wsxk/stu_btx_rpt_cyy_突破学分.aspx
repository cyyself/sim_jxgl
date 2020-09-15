<script language=javascript> try{ parent.document.getElementById('td_xktime').style.display=''; }catch(e){} </script><table width=645px border=0 align=center><tr><td align=left width=100%>&nbsp;<font color=red>选课失败的课程：[CST21301]数值计算，原因：突破学分上限</font><br></td></tr></table>
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
	<TABLE id=oTable WIDTH=99% BORDER=0 align=center CELLPADDING=0 CELLSPACING=1 bgcolor=#89bfa7 ><TR align=center class=T><TD width='4%'>序号</TD><TD width='4%'>选定</TD><td align=center width='30%' >课程/环节</td><TD width='4%'>学分</TD><TD width='6%'>总学时</TD><TD width='20%'>类别</TD><TD width='32%'><br></TD></TR><tr class=B><td align=center>1<input type=hidden name='kcxf0' id='kcxf0' value='1'></td><td align=center><input name=chkKC0 id=chkKC0 type=checkbox value='000550Z1806XL01H考F1N2018C0U[MT23400]毛泽东思想和中国特色社会主义理论体系概论实践$dwb0ahmacwayagmazabuagsanqbmag8aeqa4agyacgarag4amga4aggamab1ag4abwa9aa==' checked disabled></td><td ><a href='javascript:void(0)' onclick=openWin(this,'kc','1') value=000550>[MT23400]毛泽东思想和中国特色社会主义理论体系概论实践</a></td><td align=right>1.00<br></td><td align=right>1.0<br></td><td align=center>/必修<br></td><td align=left><input type=hidden name='chkSKBJ0' id='chkSKBJ0' value='000550-016'><input type=text name='chkSKBJstr0' id='chkSKBJstr0' style='width:225px' value=[016]刘昕 disabled >&nbsp;&nbsp;<a href='javascript:void(0)' id='winSKBJ0' onclick=openWinDialog(this,0) value='2019|1|000550|0|0|2018|1806|0'>查看</a></td></tr><tr class=H><td align=center>2<input type=hidden name='kcxf1' id='kcxf1' value='3'></td><td align=center><input name=chkKC1 id=chkKC1 type=checkbox value='184011Z1806XL01H考F3N2018C0U[CST23101]软件综合设计$cab0ag4aaqbkagmazwbhadkacqbtageaegb0agiayqbwacsaoqbyaduazabsagmacwa9aa==' checked disabled></td><td ><a href='javascript:void(0)' onclick=openWin(this,'kc','1') value=184011>[CST23101]软件综合设计</a></td><td align=right>3.00<br></td><td align=right>3.0<br></td><td align=center>/必修<br></td><td align=left><input type=hidden name='chkSKBJ1' id='chkSKBJ1' value='184011-001'><input type=text name='chkSKBJstr1' id='chkSKBJstr1' style='width:225px' value=[001]郑田青 disabled >&nbsp;&nbsp;<a href='javascript:void(0)' id='winSKBJ1' onclick=openWinDialog(this,1) value='2019|1|184011|0|0|2018|1806|0'>查看</a></td></tr><tr class=B><td align=center>3<input type=hidden name='kcxf2' id='kcxf2' value='3'></td><td align=center><input name=chkKC2 id=chkKC2 type=checkbox value='108214Z1806X06L01H01F3N2018C0U[MATH20042]概率论与数理统计Ⅱ$oqblagkalwb5ag8aagbhadqaywbxac8adqbuag0anwbpag0amwbiadiazqbhageaawa9aa==' checked disabled></td><td ><a href='javascript:void(0)' onclick=openWin(this,'kc','0') value=108214>[MATH20042]概率论与数理统计Ⅱ</a></td><td align=right>3.00<br></td><td align=right>48.0<br></td><td align=center>公共基础/必修<br></td><td align=left><input type=hidden name='chkSKBJ2' id='chkSKBJ2' value='108214-003'><input type=text name='chkSKBJstr2' id='chkSKBJstr2' style='width:225px' value=[003]曹术存 disabled >&nbsp;&nbsp;<a href='javascript:void(0)' id='winSKBJ2' onclick=openWinDialog(this,2) value='2019|1|108214|0|0|2018|1806|0'>查看</a></td></tr><tr class=H><td align=center>4<input type=hidden name='kcxf3' id='kcxf3' value='4'></td><td align=center><input name=chkKC3 id=chkKC3 type=checkbox value='000549Z1806X06L01H01F4N2018C0U[MT20400]毛泽东思想和中国特色社会主义理论体系概论$cqbqagyababpahcamabnacsazwbuag4alwboagoabab6agqabgbwahiabqb2ag8adqa9aa==' checked disabled></td><td ><a href='javascript:void(0)' onclick=openWin(this,'kc','0') value=000549>[MT20400]毛泽东思想和中国特色社会主义理论体系概论</a></td><td align=right>4.00<br></td><td align=right>64.0<br></td><td align=center>公共基础/必修<br></td><td align=left><input type=hidden name='chkSKBJ3' id='chkSKBJ3' value='000549-016'><input type=text name='chkSKBJstr3' id='chkSKBJstr3' style='width:225px' value=[016]刘昕 disabled >&nbsp;&nbsp;<a href='javascript:void(0)' id='winSKBJ3' onclick=openWinDialog(this,3) value='2019|1|000549|0|0|2018|1806|0'>查看</a></td></tr><tr class=B><td align=center>5<input type=hidden name='kcxf4' id='kcxf4' value='.01'></td><td align=center><input name=chkKC4 id=chkKC4 type=checkbox value='000554Z1806X06L01H01F.01N2018C0U[MT80004]形势与政策4$egbyagsamgbrahcaawaraheacwbzageanqbmagqabgbraheaywbtag8amgbzahuazwa9aa==' checked disabled></td><td ><a href='javascript:void(0)' onclick=openWin(this,'kc','0') value=000554>[MT80004]形势与政策4</a></td><td align=right>0.01<br></td><td align=right>8.0<br></td><td align=center>公共基础/必修<br></td><td align=left><input type=hidden name='chkSKBJ4' id='chkSKBJ4' value='000554-038'><input type=text name='chkSKBJstr4' id='chkSKBJstr4' style='width:225px' value=[038]罗璇 disabled >&nbsp;&nbsp;<a href='javascript:void(0)' id='winSKBJ4' onclick=openWinDialog(this,4) value='2019|1|000554|0|0|2018|1806|0'>查看</a></td></tr><tr class=H><td align=center>6<input type=hidden name='kcxf5' id='kcxf5' value='2'></td><td align=center><input name=chkKC5 id=chkKC5 onclick=selectSKBJ('5',this) type=checkbox value='108220Z1806X06L03H01F2N2018C0U[MATH20502]数学模型$zqa3agoaagbtagyabqbxagoaawbqag8aaabmadkazqbiaguanablacsazqbpahgayqa9aa=='></td><td ><a href='javascript:void(0)' onclick=openWin(this,'kc','0') value=108220>[MATH20502]数学模型</a></td><td align=right>2.00<br></td><td align=right>32.0<br></td><td align=center>公共基础/选修课<br></td><td align=left><input type=hidden name='chkSKBJ5' id='chkSKBJ5'><input type=text name='chkSKBJstr5' id='chkSKBJstr5' style='width:225px' disabled >&nbsp;&nbsp;<a href='javascript:void(0)' id='winSKBJ5' onclick=openWinDialog(this,5) value='2019|1|108220|0|0|2018|1806|1'>选择</a></td></tr><tr class=B><td align=center>7<input type=hidden name='kcxf6' id='kcxf6' value='1'></td><td align=center><input name=chkKC6 id=chkKC6 onclick=selectSKBJ('6',this) type=checkbox value='254134Z1806X06L03H01F1N2018C0U[PESS22055]体育自选技能（瑜伽1）$zqb6ag4aywb3ag8azwbzagsazwb4aguaeqbnaheadqb4aguadqa4ageadqbtadmamaa9aa=='></td><td ><a href='javascript:void(0)' onclick=openWin(this,'kc','0') value=254134>[PESS22055]体育自选技能（瑜伽1）</a></td><td align=right>1.00<br></td><td align=right>16.0<br></td><td align=center>公共基础/选修课<br></td><td align=left><input type=hidden name='chkSKBJ6' id='chkSKBJ6'><input type=text name='chkSKBJstr6' id='chkSKBJstr6' style='width:225px' disabled >&nbsp;&nbsp;<a href='javascript:void(0)' id='winSKBJ6' onclick=openWinDialog(this,6) value='2019|1|254134|0|0|2018|1806|1'>选择</a></td></tr><tr class=H><td align=center>8<input type=hidden name='kcxf7' id='kcxf7' value='1'></td><td align=center><input name=chkKC7 id=chkKC7 onclick=selectSKBJ('7',this) type=checkbox value='254126Z1806X06L03H01F1N2018C0U[PESS22047]体育自选项目(气排球1）$dgbxagiacqb3adcacwbwag4aeabhahuabgblagoababoag8aawbkaduaaabpagmadwa9aa=='></td><td ><a href='javascript:void(0)' onclick=openWin(this,'kc','0') value=254126>[PESS22047]体育自选项目(气排球1）</a></td><td align=right>1.00<br></td><td align=right>16.0<br></td><td align=center>公共基础/选修课<br></td><td align=left><input type=hidden name='chkSKBJ7' id='chkSKBJ7'><input type=text name='chkSKBJstr7' id='chkSKBJstr7' style='width:225px' disabled >&nbsp;&nbsp;<a href='javascript:void(0)' id='winSKBJ7' onclick=openWinDialog(this,7) value='2019|1|254126|0|0|2018|1806|1'>选择</a></td></tr><tr class=B><td align=center>9<input type=hidden name='kcxf8' id='kcxf8' value='1'></td><td align=center><input name=chkKC8 id=chkKC8 onclick=selectSKBJ('8',this) type=checkbox value='254140Z1806X06L03H01F1N2018C0U[PESS22061]体育自选项目（健美操1）$bgbvahiazab0agsaeqb0agyaywbyageazwbzag0aegboagyaawawahcakwbuadqabqa9aa=='></td><td ><a href='javascript:void(0)' onclick=openWin(this,'kc','0') value=254140>[PESS22061]体育自选项目（健美操1）</a></td><td align=right>1.00<br></td><td align=right>16.0<br></td><td align=center>公共基础/选修课<br></td><td align=left><input type=hidden name='chkSKBJ8' id='chkSKBJ8'><input type=text name='chkSKBJstr8' id='chkSKBJstr8' style='width:225px' disabled >&nbsp;&nbsp;<a href='javascript:void(0)' id='winSKBJ8' onclick=openWinDialog(this,8) value='2019|1|254140|0|0|2018|1806|1'>选择</a></td></tr><tr class=H><td align=center>10<input type=hidden name='kcxf9' id='kcxf9' value='1'></td><td align=center><input name=chkKC9 id=chkKC9 onclick=selectSKBJ('9',this) type=checkbox value='254165Z1806X06L03H01F1N2018C0U[PESS22086]体育自选项目（健身与塑形1）$baa1agmaagblahcazaa0ahoabqb4aggaaqa1agkanqb5adcazqblahcazabqagyacwa9aa=='></td><td ><a href='javascript:void(0)' onclick=openWin(this,'kc','0') value=254165>[PESS22086]体育自选项目（健身与塑形1）</a></td><td align=right>1.00<br></td><td align=right>16.0<br></td><td align=center>公共基础/选修课<br></td><td align=left><input type=hidden name='chkSKBJ9' id='chkSKBJ9'><input type=text name='chkSKBJstr9' id='chkSKBJstr9' style='width:225px' disabled >&nbsp;&nbsp;<a href='javascript:void(0)' id='winSKBJ9' onclick=openWinDialog(this,9) value='2019|1|254165|0|0|2018|1806|1'>选择</a></td></tr><tr class=B><td align=center>11<input type=hidden name='kcxf10' id='kcxf10' value='1'></td><td align=center><input name=chkKC10 id=chkKC10 onclick=selectSKBJ('10',this) type=checkbox value='254146Z1806X06L03H01F1N2018C0U[PESS22067]体育自选项目（篮球1）$lwbwacsaeabnaggaega1ahyababxahkaaab6ag8aeabzageaawa4ahqacqbwaggaeqa9aa=='></td><td ><a href='javascript:void(0)' onclick=openWin(this,'kc','0') value=254146>[PESS22067]体育自选项目（篮球1）</a></td><td align=right>1.00<br></td><td align=right>16.0<br></td><td align=center>公共基础/选修课<br></td><td align=left><input type=hidden name='chkSKBJ10' id='chkSKBJ10'><input type=text name='chkSKBJstr10' id='chkSKBJstr10' style='width:225px' disabled >&nbsp;&nbsp;<a href='javascript:void(0)' id='winSKBJ10' onclick=openWinDialog(this,10) value='2019|1|254146|0|0|2018|1806|1'>选择</a></td></tr><tr class=H><td align=center>12<input type=hidden name='kcxf11' id='kcxf11' value='1'></td><td align=center><input name=chkKC11 id=chkKC11 onclick=selectSKBJ('11',this) type=checkbox value='254129Z1806X06L03H01F1N2018C0U[PESS22050]体育自选项目（乒乓球1）$aqavadeabaa0agyalwawagkanqb0ahcadabyaguazab1agcazqa1ahaacwawag0aaqa9aa=='></td><td ><a href='javascript:void(0)' onclick=openWin(this,'kc','0') value=254129>[PESS22050]体育自选项目（乒乓球1）</a></td><td align=right>1.00<br></td><td align=right>16.0<br></td><td align=center>公共基础/选修课<br></td><td align=left><input type=hidden name='chkSKBJ11' id='chkSKBJ11'><input type=text name='chkSKBJstr11' id='chkSKBJstr11' style='width:225px' disabled >&nbsp;&nbsp;<a href='javascript:void(0)' id='winSKBJ11' onclick=openWinDialog(this,11) value='2019|1|254129|0|0|2018|1806|1'>选择</a></td></tr><tr class=B><td align=center>13<input type=hidden name='kcxf12' id='kcxf12' value='1'></td><td align=center><input name=chkKC12 id=chkKC12 onclick=selectSKBJ('12',this) type=checkbox value='254143Z1806X06L03H01F1N2018C0U[PESS22064]体育自选项目（散打1）$dwbragiaygbragyabgbpahyaygb1ag8aoqbkagwabga0ahmamwayag4aywbmahqazqa9aa=='></td><td ><a href='javascript:void(0)' onclick=openWin(this,'kc','0') value=254143>[PESS22064]体育自选项目（散打1）</a></td><td align=right>1.00<br></td><td align=right>16.0<br></td><td align=center>公共基础/选修课<br></td><td align=left><input type=hidden name='chkSKBJ12' id='chkSKBJ12'><input type=text name='chkSKBJstr12' id='chkSKBJstr12' style='width:225px' disabled >&nbsp;&nbsp;<a href='javascript:void(0)' id='winSKBJ12' onclick=openWinDialog(this,12) value='2019|1|254143|0|0|2018|1806|1'>选择</a></td></tr><tr class=H><td align=center>14<input type=hidden name='kcxf13' id='kcxf13' value='1'></td><td align=center><input name=chkKC13 id=chkKC13 onclick=selectSKBJ('13',this) type=checkbox value='254137Z1806X06L03H01F1N2018C0U[PESS22058]体育自选项目（太极养生1）$nwawagwaaabqadyaygbiadiazwbuagiazwbvahoadgbyagkabqa4ahiamab5adcanaa9aa=='></td><td ><a href='javascript:void(0)' onclick=openWin(this,'kc','0') value=254137>[PESS22058]体育自选项目（太极养生1）</a></td><td align=right>1.00<br></td><td align=right>16.0<br></td><td align=center>公共基础/选修课<br></td><td align=left><input type=hidden name='chkSKBJ13' id='chkSKBJ13'><input type=text name='chkSKBJstr13' id='chkSKBJstr13' style='width:225px' disabled >&nbsp;&nbsp;<a href='javascript:void(0)' id='winSKBJ13' onclick=openWinDialog(this,13) value='2019|1|254137|0|0|2018|1806|1'>选择</a></td></tr><tr class=B><td align=center>15<input type=hidden name='kcxf14' id='kcxf14' value='1'></td><td align=center><input name=chkKC14 id=chkKC14 onclick=selectSKBJ('14',this) type=checkbox value='254131Z1806X06L03H01F1N2018C0U[PESS22052]体育自选项目（体育舞蹈1）$baa4adiadwb6ahmaygbwag0alwbvagmaaqbmagiadgbnahaaeqbmagmaaqb0aguacwa9aa=='></td><td ><a href='javascript:void(0)' onclick=openWin(this,'kc','0') value=254131>[PESS22052]体育自选项目（体育舞蹈1）</a></td><td align=right>1.00<br></td><td align=right>16.0<br></td><td align=center>公共基础/选修课<br></td><td align=left><input type=hidden name='chkSKBJ14' id='chkSKBJ14'><input type=text name='chkSKBJstr14' id='chkSKBJstr14' style='width:225px' disabled >&nbsp;&nbsp;<a href='javascript:void(0)' id='winSKBJ14' onclick=openWinDialog(this,14) value='2019|1|254131|0|0|2018|1806|1'>选择</a></td></tr><tr class=H><td align=center>16<input type=hidden name='kcxf15' id='kcxf15' value='1'></td><td align=center><input name=chkKC15 id=chkKC15 onclick=selectSKBJ('15',this) type=checkbox value='254156Z1806X06L03H01F1N2018C0U[PESS22077]体育自选项目（网球1）$cqbwagoanqb1ahqabqb0ahgazwbqagsababjagsacaboahkazqbnadyaaqbjagcazwa9aa=='></td><td ><a href='javascript:void(0)' onclick=openWin(this,'kc','0') value=254156>[PESS22077]体育自选项目（网球1）</a></td><td align=right>1.00<br></td><td align=right>16.0<br></td><td align=center>公共基础/选修课<br></td><td align=left><input type=hidden name='chkSKBJ15' id='chkSKBJ15'><input type=text name='chkSKBJstr15' id='chkSKBJstr15' style='width:225px' disabled >&nbsp;&nbsp;<a href='javascript:void(0)' id='winSKBJ15' onclick=openWinDialog(this,15) value='2019|1|254156|0|0|2018|1806|1'>选择</a></td></tr><tr class=B><td align=center>17<input type=hidden name='kcxf16' id='kcxf16' value='1'></td><td align=center><input name=chkKC16 id=chkKC16 onclick=selectSKBJ('16',this) type=checkbox value='254162Z1806X06L03H01F1N2018C0U[PESS22083]体育自选项目（校园马拉松1）$ega2ahkaoabwadiazgayagmabqbvahgaegbxagwabgb0ahyacabwagcaaqb3agwamaa9aa=='></td><td ><a href='javascript:void(0)' onclick=openWin(this,'kc','0') value=254162>[PESS22083]体育自选项目（校园马拉松1）</a></td><td align=right>1.00<br></td><td align=right>16.0<br></td><td align=center>公共基础/选修课<br></td><td align=left><input type=hidden name='chkSKBJ16' id='chkSKBJ16'><input type=text name='chkSKBJstr16' id='chkSKBJstr16' style='width:225px' disabled >&nbsp;&nbsp;<a href='javascript:void(0)' id='winSKBJ16' onclick=openWinDialog(this,16) value='2019|1|254162|0|0|2018|1806|1'>选择</a></td></tr><tr class=H><td align=center>18<input type=hidden name='kcxf17' id='kcxf17' value='1'></td><td align=center><input name=chkKC17 id=chkKC17 type=checkbox value='254153Z1806X06L03H01F1N2018C0U[PESS22074]体育自选项目（羽毛球1）$nwbvadaabwbuahkabqb6ahoaeabyadgacgbpag8acqbhahmaeaa4ag0ababwahmadwa9aa==' checked disabled></td><td ><a href='javascript:void(0)' onclick=openWin(this,'kc','0') value=254153>[PESS22074]体育自选项目（羽毛球1）</a></td><td align=right>1.00<br></td><td align=right>16.0<br></td><td align=center>公共基础/选修课<br></td><td align=left><input type=hidden name='chkSKBJ17' id='chkSKBJ17' value='254153-023'><input type=text name='chkSKBJstr17' id='chkSKBJstr17' style='width:225px' value=[023]殷强 disabled >&nbsp;&nbsp;<a href='javascript:void(0)' id='winSKBJ17' onclick=openWinDialog(this,17) value='2019|1|254153|0|0|2018|1806|0'>查看</a></td></tr><tr class=B><td align=center>19<input type=hidden name='kcxf18' id='kcxf18' value='1'></td><td align=center><input name=chkKC18 id=chkKC18 onclick=selectSKBJ('18',this) type=checkbox value='254149Z1806X06L03H01F1N2018C0U[PESS22070]体育自选项目（足球1）$babkahyaawbxahqadab6ahgacgb0adkaywb1ahkazgb4ahmaeqb0adkaagbkaggaywa9aa=='></td><td ><a href='javascript:void(0)' onclick=openWin(this,'kc','0') value=254149>[PESS22070]体育自选项目（足球1）</a></td><td align=right>1.00<br></td><td align=right>16.0<br></td><td align=center>公共基础/选修课<br></td><td align=left><input type=hidden name='chkSKBJ18' id='chkSKBJ18'><input type=text name='chkSKBJstr18' id='chkSKBJstr18' style='width:225px' disabled >&nbsp;&nbsp;<a href='javascript:void(0)' id='winSKBJ18' onclick=openWinDialog(this,18) value='2019|1|254149|0|0|2018|1806|1'>选择</a></td></tr><tr class=H><td align=center>20<input type=hidden name='kcxf19' id='kcxf19' value='1'></td><td align=center><input name=chkKC19 id=chkKC19 onclick=selectSKBJ('19',this) type=checkbox value='254159Z1806X06L03H01F1N2018C0U[PESS22080]体育自选项目（跆拳道1）$cgbwagiakwbiag0abqbhagoaaabqahkaegb6ahcaeab4ahkaeab2agyacab6ahiadqa9aa=='></td><td ><a href='javascript:void(0)' onclick=openWin(this,'kc','0') value=254159>[PESS22080]体育自选项目（跆拳道1）</a></td><td align=right>1.00<br></td><td align=right>16.0<br></td><td align=center>公共基础/选修课<br></td><td align=left><input type=hidden name='chkSKBJ19' id='chkSKBJ19'><input type=text name='chkSKBJstr19' id='chkSKBJstr19' style='width:225px' disabled >&nbsp;&nbsp;<a href='javascript:void(0)' id='winSKBJ19' onclick=openWinDialog(this,19) value='2019|1|254159|0|0|2018|1806|1'>选择</a></td></tr><tr class=B><td align=center>21<input type=hidden name='kcxf20' id='kcxf20' value='2.5'></td><td align=center><input name=chkKC20 id=chkKC20 onclick=selectSKBJ('20',this) type=checkbox value='184008Z1806X06L03H01F2.5N2018C0U[CST21111]最优化技术$ywb2agoacwbhagoacgb6ahgaeqbxadgadgbpagcaoabragqayqbuagiazqbpadiabqa9aa=='></td><td ><a href='javascript:void(0)' onclick=openWin(this,'kc','0') value=184008>[CST21111]最优化技术</a></td><td align=right>2.50<br></td><td align=right>40.0<br></td><td align=center>公共基础/选修课<br></td><td align=left><input type=hidden name='chkSKBJ20' id='chkSKBJ20'><input type=text name='chkSKBJstr20' id='chkSKBJstr20' style='width:225px' disabled >&nbsp;&nbsp;<a href='javascript:void(0)' id='winSKBJ20' onclick=openWinDialog(this,20) value='2019|1|184008|0|0|2018|1806|1'>选择</a></td></tr><tr class=H><td align=center>22<input type=hidden name='kcxf21' id='kcxf21' value='2'></td><td align=center><input name=chkKC21 id=chkKC21 type=checkbox value='108222Z1806X08L03H01F2N2018C0U[MATH21011]数学实验$mabnahqacabpahuazabiahuacabpagyazwbpaggalwbrahuaeqbqagmazwbqahqaoaa9aa==' checked disabled></td><td ><a href='javascript:void(0)' onclick=openWin(this,'kc','0') value=108222>[MATH21011]数学实验</a></td><td align=right>2.00<br></td><td align=right>32.0<br></td><td align=center>实践环节/选修课<br></td><td align=left><input type=hidden name='chkSKBJ21' id='chkSKBJ21' value='108222-002'><input type=text name='chkSKBJstr21' id='chkSKBJstr21' style='width:225px' value=[002]龚劬 disabled >&nbsp;&nbsp;<a href='javascript:void(0)' id='winSKBJ21' onclick=openWinDialog(this,21) value='2019|1|108222|0|0|2018|1806|0'>查看</a></td></tr><tr class=B><td align=center>23<input type=hidden name='kcxf22' id='kcxf22' value='3'></td><td align=center><input name=chkKC22 id=chkKC22 type=checkbox value='188222Z1806X07L01H01F3N2018C0U[CST31103]Java程序开发$zaa4ahyaegavagyazwbqag8adqbhagmabqbjagkacwbvaduangbxag4acwa1adgaaqa9aa==' checked disabled></td><td ><a href='javascript:void(0)' onclick=openWin(this,'kc','0') value=188222>[CST31103]Java程序开发</a></td><td align=right>3.00<br></td><td align=right>48.0<br></td><td align=center>专业基础/必修<br></td><td align=left><input type=hidden name='chkSKBJ22' id='chkSKBJ22' value='188222-007'><input type=text name='chkSKBJstr22' id='chkSKBJstr22' style='width:225px' value=[007]曾令秋 disabled >&nbsp;&nbsp;<a href='javascript:void(0)' id='winSKBJ22' onclick=openWinDialog(this,22) value='2019|1|188222|0|0|2018|1806|0'>查看</a></td></tr><tr class=H><td align=center>24<input type=hidden name='kcxf23' id='kcxf23' value='4.5'></td><td align=center><input name=chkKC23 id=chkKC23 type=checkbox value='000397Z1806X07L01H01F4.5N2018C0U[CST31116]计算机组成原理$dqbsadiazgbuagcayqa5agcabqbyaheaygb5ag8aeaavadiangbiadmadqb2adcaoaa9aa==' checked disabled></td><td ><a href='javascript:void(0)' onclick=openWin(this,'kc','0') value=000397>[CST31116]计算机组成原理</a></td><td align=right>4.50<br></td><td align=right>72.0<br></td><td align=center>专业基础/必修<br></td><td align=left><input type=hidden name='chkSKBJ23' id='chkSKBJ23' value='000397-006'><input type=text name='chkSKBJstr23' id='chkSKBJstr23' style='width:225px' value=[006]钟将 disabled >&nbsp;&nbsp;<a href='javascript:void(0)' id='winSKBJ23' onclick=openWinDialog(this,23) value='2019|1|000397|0|0|2018|1806|0'>查看</a></td></tr><tr class=B><td align=center>25<input type=hidden name='kcxf24' id='kcxf24' value='2'></td><td align=center><input name=chkKC24 id=chkKC24 type=checkbox value='184006Z1806X07L01H01F2N2018C0U[CST21109]算法分析与设计$bqa2ageacqa3ag8azgbzahuaygbkac8aegbiahkacqb2agiabwbnageanwb2agoamaa9aa==' checked disabled></td><td ><a href='javascript:void(0)' onclick=openWin(this,'kc','0') value=184006>[CST21109]算法分析与设计</a></td><td align=right>2.00<br></td><td align=right>32.0<br></td><td align=center>专业基础/必修<br></td><td align=left><input type=hidden name='chkSKBJ24' id='chkSKBJ24' value='184006-001'><input type=text name='chkSKBJstr24' id='chkSKBJstr24' style='width:225px' value=[001]李佳 disabled >&nbsp;&nbsp;<a href='javascript:void(0)' id='winSKBJ24' onclick=openWinDialog(this,24) value='2019|1|184006|0|0|2018|1806|0'>查看</a></td></tr><tr class=H><td align=center>26<input type=hidden name='kcxf25' id='kcxf25' value='2'></td><td align=center><input name=chkKC25 id=chkKC25 type=checkbox value='184007Z1806X04L03H01F2N2018C0U[CST21110]Windows应用程序原理$yga0aggangarag4aawarahaaywawahkabgb4ageaaqbiadmaaqbjaguaagb1admamaa9aa==' checked disabled></td><td ><a href='javascript:void(0)' onclick=openWin(this,'kc','0') value=184007>[CST21110]Windows应用程序原理</a></td><td align=right>2.00<br></td><td align=right>32.0<br></td><td align=center>专业课程/选修课<br></td><td align=left><input type=hidden name='chkSKBJ25' id='chkSKBJ25' value='184007-001'><input type=text name='chkSKBJstr25' id='chkSKBJstr25' style='width:225px' value=[001]杨吉云 disabled >&nbsp;&nbsp;<a href='javascript:void(0)' id='winSKBJ25' onclick=openWinDialog(this,25) value='2019|1|184007|0|0|2018|1806|0'>查看</a></td></tr><tr class=B><td align=center>27<input type=hidden name='kcxf26' id='kcxf26' value='2'></td><td align=center><input name=chkKC26 id=chkKC26 onclick=selectSKBJ('26',this) type=checkbox value='188213Z1806X04L03H01F2N2018C0U[CST21301]数值计算$ngbwadyazgboahoabgbpahgazgb6ag0amwbhahmanwb5agsacgblagyacwboahyaawa9aa=='></td><td ><a href='javascript:void(0)' onclick=openWin(this,'kc','0') value=188213>[CST21301]数值计算</a></td><td align=right>2.00<br></td><td align=right>32.0<br></td><td align=center>专业课程/选修课<br></td><td align=left><input type=hidden name='chkSKBJ26' id='chkSKBJ26'><input type=text name='chkSKBJstr26' id='chkSKBJstr26' style='width:225px' disabled >&nbsp;&nbsp;<a href='javascript:void(0)' id='winSKBJ26' onclick=openWinDialog(this,26) value='2019|1|188213|0|0|2018|1806|1'>选择</a></td></tr><tr style='background-color:#f4fffb'><td colspan=8 >已选课程门数：11，总学分：25.51</td></tr><tr style='display:none'><td colspan=5 ><input type=submit name=Submit onclick='return go(this)' value=提交正选 class=but40><input name=mcount id=mcount type=hidden value='27'><input name=sel_lx id=sel_lx type=hidden value=0><input name='sel_xq' id='sel_xq' type=hidden value=%><input name=SelSpeciality type=hidden value=20181806><input name=kclb3 type=hidden value=%><input name=chk_kyme id=chk_kyme type=hidden value=0><input name=id type=hidden value=''></td></tr><script language=javascript>parent.document.all.submit.disabled=false;try{parent.document.getElementById('kcmc').style.display='';}catch(e){}</script></table>
</td></tr></table>
			<input type=hidden name="yxsjct" id="yxsjct" ><!--允许时间冲突-->
			<input type="hidden" name="txt_yzm" id="txt_yzm">
		</form>
	</body>
</HTML>
