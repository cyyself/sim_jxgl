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

</td></tr></table>
			<input type=hidden name="yxsjct" id="yxsjct" ><!--允许时间冲突-->
			<input type="hidden" name="txt_yzm" id="txt_yzm">
		</form>
	</body>
</HTML>
