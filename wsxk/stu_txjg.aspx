
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 
<html>
	<head>
		<title>选主修/辅修课程/环节结果</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../_style/styles_Qry.css" type=text/css rel=stylesheet >
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
		<script language="javascript">
			function ChkVal()
			{
				try{
					var strurl;
					var strid="TTT";
					var s = false;
					var N = window.frames["frmRpt"].document.getElementById("chkCount").value;
					var skbj_str;
					for (i=1;i<=N;i++){
						if( window.frames["frmRpt"].document.getElementById("chkDel"+(i-1)).checked && 
							window.frames["frmRpt"].document.getElementById("chkDel"+(i-1)).disabled == false )
						{
							skbj_str = window.frames["frmRpt"].document.getElementById("chkDel"+(i-1)).value;
							if(skbj_str!="")
							{
								var val_array=skbj_str.split(";");
								for(j=0;j < val_array.length;j++)
								{
									strid+=","+val_array[j];
								}
							}
							s=true;
						}
					}
					frmRpt.form1.id.value=strid;
					if (!s)return false;
					if (!confirm('是否退选记录？'))return false;
					window.frames["frmRpt"].document.forms["form1"].submit();
				}catch(e){}
			}
		</script>
	</head>
	
	<body  onselectstart=window.event.returnValue=false oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false 
	leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align=center>
			<tr>
				<td vAlign="top" align="center" height="26">
					<table WIDTH="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td vAlign="bottom" align="center"><b>选主修/辅修课程/环节结果</b></td>
						</tr>
						<tr>
							<td vAlign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td height="28">
					<table height="100%" cellSpacing="0" cellPadding="0" width="660" align="center" border="0">
						<tr>
							<td align="left"  width="85%" id="td_xktime" style='display:none;'>学年学期：2019-2020学年第二学期&nbsp;&nbsp;时间区段：2020-02-17 08:30--2020-03-01 20:30<br></td>
							<td align="right" width="15%" nowrap>&nbsp;
							
								<input class="button" type="button" name="submit" value="退选" onclick="return ChkVal()" disabled ></td>
							
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td valign="bottom" align="center" height="100%">
					<iframe name="frmRpt" src="stu_txjg_rpt.aspx" width="100%" height="98%" frameborder="0">
					</iframe>
				</td>
			</tr>
		</table>
	</body>
</html>

