
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>ѡ����/���޿γ�/����</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../include/scr/ind_HTML_hr.js"></script>
		<script language="JavaScript" type="text/JavaScript">
               
			function getInnerText(el){
				if(el.innerText || el.innerText=="")return el.innerText;//IE�»�ȡ
				if(el.textContent || el.textContent=="")return el.textContent;//FF�»�ȡ
				if(el.hasChildNodes())return el.childNodes[0].value; //��ȡ�ӽ��Ԫ��ֵ
			}
			function filtrateData()
			{
				try
				{
				var theObj = frmRpt.document.getElementById("oTable");
				var count = theObj.rows.length;
				var kclbstr = "";
				var kclb = new Array();
				var sSel = "",kclbmc = "";
				
				try
				{
					for(var i = 1; i < count-1; i ++)
					{
						//kclbmc = theObj.rows[i].cells[4].innerText;
						kclbmc = getInnerText(theObj.rows[i].cells[5]);
						
						if(kclbstr.indexOf(kclbmc) < 0)
						{
							if(kclbstr == "")
							{
								kclbstr = kclbmc;
							}
							else
							{
								kclbstr +="@"+kclbmc;
							}
						}					
					}
				}
				catch(e){}

				if(kclbstr != "")
				{
					kclb = kclbstr.split('@');
					
					sSel = "<select name=kclbmc onchange=filtrateKclb(this) style=width:150px>"
					sSel += "<option value=Nothing></option>";
					for(var i = 0; i < kclb.length; i ++)
					{
						sSel += "<option value="+kclb[i]+">"+kclb[i]+"</option>";
					}
					sSel += "</select>";
					
					document.getElementById("kclbstr").innerHTML=sSel;
				}
				}
				catch(e)
				{
					alert("û�����ݣ�");
				}
			}
			
			function filtrateKclb(Obj)
			{
				var kclbmc = Obj.value;
				var theObj = frmRpt.document.getElementById("oTable");
				var count = theObj.rows.length;
				var k = 1;
				
				if(kclbmc != "" && kclbmc != "Nothing")
				{
					for(var i = 1; i < count-1; i ++)
					{
						if(getInnerText(theObj.rows[i].cells[5]) != kclbmc)
						{
							theObj.rows[i].style.display = "none";						
						}
						else
						{
							theObj.rows[i].style.display = "";	
							theObj.rows[i].style.backgroundColor = k%2==0?"#f4fef9":"#ffffff";
							k ++;
						}
					}								
				}
				else if(kclbmc == "Nothing")
				{
					for(var i = 1; i < count-1; i ++)
					{
						theObj.rows[i].style.display = "";	
						theObj.rows[i].style.backgroundColor = k%2==0?"#f4fef9":"#ffffff";
						k ++;					
					}			
				}
			}
			
			//���������¼����б�������
			function showListWSXK(thisID,vT)
			{
                               var vID=thisID.value;
				if(vID != "2")
				{
					vURL='../WSXK/Private/List_WSXK_NJZY.aspx?id='+vID+'&xklb='+vT+'&xn=2019&xq=1';
					window.WSXK_NJZY.document.location.href=vURL;
				}
				else
				{
					theZY.innerHTML = "";
				}
	                          
				//�����ѧ��ר����ʱ���ͻ�ж�
				if(vID == 1)  //��ר/����
                         		 try{ document.getElementById("theCheck").style.display="block";}catch(e){}
				else
				       
                                         try{ document.getElementById("theCheck").style.display="none";}catch(e){}
				
				try
				{					
					if(document.all.fData.disabled==false)
					{
						document.getElementById("fData").disabled = true;
						document.getElementById("kclbstr").innerHTML = "";
					}
				}catch(e){}
			}
			
                       
			
			function setValue_CT(obj)
			{
				var winobj=window.frames["frmRpt"].document;
				if(obj.checked)
					try{winobj.getElementById("yxsjct").value = "1";}catch(e){}
				else
					try{winobj.getElementById("yxsjct").value = "0";}catch(e){}
			}
		</script>
	</HEAD>
	<body  onselectstart=window.event.returnValue=false oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false 
	 leftMargin="0" topMargin="0" marginheight="0" marginwidth="0">
		<form name="form1" action="stu_btx_rpt.php" method="post" target="frmRpt">
			<table height="100%" cellSpacing="0" cellPadding="0" width="100%" border="0">
				<tr>
					<td vAlign="top" align="center">
						<table height="26" cellSpacing="0" cellPadding="0" width="660" align="center" border="0">
							<tr>
								<td vAlign="bottom" align="center"><b>ѡ����/���޿γ�/����</b></td>
							</tr>
							<tr>
								<td vAlign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script></td>
							</tr>
						</table>
					</td>
				</tr>
				
				<tr>
					<td align="center" height="56">
					<iframe name=WSXK_NJZY src='' frameborder=0 style='display:none;'></iframe>
						<table height="100%" cellSpacing="0" cellPadding="0" width="660" align="center" border="0">
							<tr>
								<td align="left" width="60" nowrap>�γ̷�Χ</td>
								<td align="left" width="150" ><select name='sel_lx' style='width:150px' onchange=showListWSXK(this,'2')><option value='0' selected>����(���꼶/רҵ)</option><option value='3'>����(�ɿ��꼶/רҵ)</option><option value='1'>����</option><option value='5'>����(�ɿ��꼶)</option></select><script language=javascript>document.all.sel_lx.onchange();</script></td>
								<td align="left" width="240px" id="theZY"><select name=SelSpeciality style='height:20px;width:240'></select></td>
								<td align="left" width="110px"><div id="theCheck"><input type='checkbox' id='__thecheck' name='__thecheck' value='1' onclick='setValue_CT(this)' style='margin-bottom:-1px;'><label for='__thecheck'>����ʱ���ͻ</label></div></td>
								<td align="right" width="90"><input class="button" type="submit" value="����" name="Submit" onclick="document.all.fData.disabled=false">
								<input class="button" type="button" name="submit" value="�ύ" onclick="frmRpt.document.all.Submit.onclick()"  ></td>
							</tr>
							<tr>
								<td align=left>
								<input name=fData type=button value="������" class="but40" onclick="filtrateData()" disabled>
								</td>
								<td><div id=kclbstr></div></td>
								<td colspan=2></td>
							</tr>
						</table>
					</td>
				</tr>
				
				<tr>
					<td height="28">
						<table height="100%" cellSpacing="0" cellPadding="0" width="660" align="center" border="0">
							<tr>
								<td align="left" id="td_xktime" style='display:none;'>ѧ��ѧ�ڣ�2019-2020ѧ��ڶ�ѧ��&nbsp;&nbsp;ʱ�����Σ�2020-02-17 08:30--2020-03-01 20:30||<font color="red"><b>ѡ��ʱ��������ѡ��֪ͨΪ׼��</b></font><br></td>
							</tr>
							<!-- <tr><td align="left"><img id="img" src="../images/weixiao.gif" /><label style="color:green;"><b>�ֻ���α���ֽ�������ּǡ��鿼�ԡ���ɼ����������<a href='http://www.palmcampus.com/' target=_blank'>�������У԰��</a></b></label></td></tr>-->
						</table>
					</td>
				</tr>
				<tr>
					<td vAlign="bottom" align="center" height="90%">
						<iframe id="frmRpt" name="frmRpt" src="stu_btx_rpt.php" frameBorder="0" width="100%" height="98%">
						</iframe>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>