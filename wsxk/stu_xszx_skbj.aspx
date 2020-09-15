

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>青果软件</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<LINK href="../_Style/styles_Qry.css" type="text/css" rel="stylesheet">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language=javascript>
		    function openWin(theID)
		    {    		
			    var theURL,w,h,Tform;
			    w=450,h=380;
			    eval("Tform='width="+w+",height="+h+"'");
				    theURL = '../JXZY/INFO_Teacher.aspx?id='+theID.getAttribute("value");
			    pop=window.open(theURL,'winKPT',Tform);	
		    }
		    
		    function selectRadio(obj)
		    {
				var flag = "true",skbz="";
				var divCol = document.getElementsByTagName("input");
				var hidSKFS = document.getElementById("hid_skfs").value;
				try
				{
					skbz=obj.getAttribute("skbz");//obj.value.split('B')[1];
				}
				catch(e){}
				
				if( hidSKFS != "")
				{
					var arr = hidSKFS.split("@");
					
					for (var i = 0; i < divCol.length; i++){
					    if(divCol[i].type == "radio"){
						  if(skbz!="" && divCol[i].getAttribute("skbz")==skbz)
						  {
						      divCol[i].checked=true;
						  }
						  else if(divCol[i].value.split('@')[1] == obj.value.split('@')[1] || divCol[i].getAttribute("skbz")!="") 
						  { 
						      divCol[i].checked=false;
						  }
						 
						}
					}
					obj.checked=true;
					/*
					for(var j=0;j<arr.length;j++)
					{
					    //try{eval("window.document.all.rad_"+arr[j]+skbz+".checked=false;");}catch(e){}
					    if(skbz!="")
						{
						    try{eval("window.document.all.rad_"+arr[j]+skbz+".checked=true;");}catch(e){}
						}
						obj.checked=true;
					}
					*/
					for(var j = 0; j < arr.length; j++)
					{
						var tflag = "false";
						for (var i = 0; i < divCol.length; i++){
							if( divCol[i].type == "radio" && divCol[i].checked )
							{
								var tstr = divCol[i].value;
								var skfs = tstr.split('@')[1];
								
								if( arr[j] == skfs )
								{
									tflag = "true";
									break;
								}
							}
						}
						
						if( tflag == "false")
						{
							flag = "false";
							break;
						}
					}
				}
				
				if( flag == "true" )
				{
					document.getElementById("sure").disabled = false;
				}else{
					document.getElementById("sure").disabled = true;
				}
		    } 
			
			
			function ChkValue()
			{
				var flag = "true";
				var retstr = "";
				var jsskbj_str = "";
				var jsskbj_val = "";
				
				var divCol = document.getElementsByTagName("input");
				var hidSKFS = document.getElementById("hid_skfs").value;
				if( hidSKFS != "")
				{
					var arr = hidSKFS.split("@");
					for(j = 0; j < arr.length; j++)
					{
						var tflag = "false";
						for (i = 0; i < divCol.length; i++){
							if( divCol[i].type == "radio" && divCol[i].checked )
							{
								var tstr = divCol[i].value;
								tstr=tstr.replace("@"+skfs,"");
								var skfs = tstr.split('@')[1];
								
								if( arr[j] == skfs )
								{
									tflag = "true";
									
									if( jsskbj_str == "" )
										jsskbj_str = tstr.split('@')[0];
									else
										jsskbj_str = jsskbj_str + ";" + tstr.split('@')[0];
										
									if( jsskbj_val == "" )
										jsskbj_val = tstr.split('@')[2];
									else
										jsskbj_val = jsskbj_val + ";" + tstr.split('@')[2];
										
									break;
								}
							}
						}
						
						if( tflag == "false")
						{
							flag = "false";
							break;
						}
					}
					
					if( flag == "true"){
						try{
							retstr = jsskbj_str+ "@" +jsskbj_val;
							//window.returnValue = retstr;
							myReturnValue(retstr);
							setTimeout(this.close(),1000);
						}catch(e){}
					}else{
						alert("请选择授课方式/上课班级！");
						return;
					}
				}
			
			}
			function myReturnValue(str) {
				if (navigator.userAgent.indexOf("Chrome") > 0) {
				    window.opener.returnCallBackValue354865588.call(window.opener, str);
				}
				else {
				   window.returnValue = str;
				}
			}
		</script>
		<style>
			TD{font-family: "宋体"; font-size: 12px;border-color_:#008080;
				border-left:medium none; border-right_: 1px solid; 
				border-top:medium none; border-bottom_:1px solid; 
				padding-left:3px;padding-right:3px;word-wrap: break-word; word-break: break-all; 
			}
		</style>
	</HEAD>
	<body onselectstart=window.event.returnValue=false oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false 
	 leftMargin="0" topMargin="0" marginheight="0" marginwidth="0">
	<form name="FormAdd" method=post >
		<table width="99%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
			<tr style="height:28">
				<td width="80%" >注：每种授课方式分别可以选择一个上课班级，且每种授课方式必须选择一个上课班级才能提交。</td>
				<td width="20%" align="right" style="height:28">
					<input class="button" type="button" name="submit" id=sure value="确定" onclick="ChkValue()" disabled>					
					<input class="button" type="button" name="submit" value="关闭" onclick="window.close()"></td>
			</tr>
			<tr>
				<td colspan="2" >
					<div style="OVERFLOW:auto;WIDTH:100%;HEIGHT:100%">
						<table id="pageRpt" cellpadding="0" cellspacing="0" border="0" width="100%"><tr><td>
	理论<br><TABLE WIDTH=100% BORDER=1 align=center valign=top CELLPADDING=0 CELLSPACING=0 bordercolorlight=#89bfa7 bordercolordark=#FFFFFF><tr class=T><td align=center width='15%' rowspan=2 >上课班组</td><td align=center width='8%' rowspan=2 >任课教师</td><td align=center width='5%' rowspan=2 >上课<br>班号</td><td align=center width='12%' rowspan=2 >上课班级名称<br></td><td align=center width='15%' colspan=3 rowspan=1  >人数</td><td align=center width='23%' rowspan=2 >上课时间</td><td align=center width='12%' rowspan=2 >上课地点</td><td align=center width='5%' rowspan=2 >上课<br>校区</td><td align=center width='5%'  rowspan=2 >选定</td></tr><tr class=T><td align=center width='5%' >限选</td><td align=center width='5%' >已选</td><td align=center width='5%' >可选</td></tr><tr class=B ><td rowspan = '2' ><br></td><td rowspan = '2' ><a href='#' id=showD onclick=openWin(this)  value='2jtbn52gt29c1o6u9300004m&param2=5bdd782dd0e389bba6838f6ad0ea93bb'>周尚波</a><br></td><td rowspan = '2' align=center >001<br></td><td rowspan = '2' ><br></td><td rowspan = '2' align=right >90<br></td><td rowspan = '2' align=right >27<br></td><td rowspan = '2' align=right >63<br></td><td style='height:20' >1-2周&nbsp;二(9-10节)<br></td><td >D1435<br></td><td >D区<br></td><td rowspan = '2' align=center ><input type=radio name='rad_0' skbz='' id='rad_0' align=center value='[001]周尚波@0@E0T0005059K188213-001B' onclick=selectRadio(this)  /></td></tr><tr class=B ><td style='height:20' >1-7,9-10,12-16周&nbsp;五(7-8节)<br></td><td >D1435<br></td><td >D区<br></td></tr><input type=hidden name='hid_skfs' id='hid_skfs' value='0'></table><script language=javascript>parent.document.all.submit.disabled=false;</script>
</td></tr></table>
					</div>
				</td>
			</tr>
		</table>
	</form>
	</body>
</HTML>