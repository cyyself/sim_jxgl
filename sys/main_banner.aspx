
<HTML>
	<HEAD>
		<title></title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<bgsound src='' loop="infinite" id="bgmid" tag=''>
		<bgsound src='' loop="0" id="bgwav" tag=''>
		
	</HEAD>
	<body topmargin="0" leftmargin="0" oncontextmenu="window.event.returnValue=false" onselectstart="window.event.returnValue=false"
		ondragstart="window.event.returnValue=false" onsource="window.event.returnValue=false">
		<div style="Z-INDEX: -1; LEFT: 0px; VISIBILITY: hidden; WIDTH: 100px; POSITION: absolute; TOP: 0px; HEIGHT: 7px">
		</div>
		<table width="100%" height="82" border="0" cellspacing="0" cellpadding="0">
			<!-- BANNER区 -->
			<tr>
				<td width="290px" nowrap background="../images/banner.gif">
					<br>
				</td>
				<td width="25%" background="../images/banner_centerl.gif"><br/></td>
				<td width="460px" nowrap valign="middle" background="../images/banner_center.gif">	
					<br/>
				</td>
				<td width="25%" background="../images/banner_centerr.gif"><br/></td>
				<td width="250px" nowrap align="right" valign="middle"  background="../images/banner_right.gif">
					<table border="0" cellpadding="0" cellspacing="0" height="100%" width="200">
						<tr>
							<td align="right" valign="bottom"><br>
							</td>
						</tr>
						<tr>
							<td align="right" valign="bottom">
								<!--统计在线人数-->
								<span id="onTimeNum" style='FONT-SIZE:9pt;COLOR:white'>在线人数：
									2&nbsp;</span>
							</td>
						</tr>
						<tr>
							<td align="right" valign_="bottom" nowrap>
								<span style='FONT-SIZE:9pt;COLOR:white'>
									
								</span>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<iframe name=frm style="display:none" frameborder=0></iframe>
		<script language="javascript">
			//服务端变量 
			var js_ServerTheCustomer='重庆大学';

			//客户端变量
			var js_ClientIP='';
			var js_ClientPCInfo='';

			//当前用户变量
			var js_UserID='';
			var js_UserName='';
			var js_UserRight='';
			var js_UserLVID='';
			var js_UserGroup='';
			var js_UserDepart='';
			var js_UserLogTime='';

			//当前系统变量
			var js_SysTREE_Multi=true;
			var js_SysMsg_POP_DELAY='5';
			var js_SysDEBUG_DOOR='1';
			var js_SysPageSize_Door='';
			var js_SysTREE_Single='';

			var js_Sys_vkxrq='2017-9-4 0:00:00';
			
		
			window.setTimeout("StartLoadMenu()",300);
			function StartLoadMenu()
			{
				try
				{
					var iev;
					var ie = new Array();
					ie[0]="MSIE 7";
					ie[1]="MSIE 6";
					for(var i = 0; i < ie.length; i ++)
					{
						iev = window.navigator.userAgent.indexOf(ie[i]);
						if(iev > 0)
						{
							break;
						}
					}

					//if(iev>0)	
						window.top.frames.frmbody.location='../sys/menu.aspx';
					//else 
					//	window.top.frames.frmbody.location='../sys/menu_ie5.aspx';
				}catch(e){window.setTimeout("StartLoadMenu()",300);}
			}
		</script>
	</body>
</HTML>
