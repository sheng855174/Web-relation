<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:G7="http://g7.xml.csie.mcu.edu.tw">
	<xsl:template match="G7:studentList">
		<html>
			<title>G7_XML</title>
			<head>
				<META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
				<script language="JavaScript">
		      function Delete( )
		       {
		       str = document.getElementById('StudentID').value;
		      window.alert("確定要刪除"+str +"的資料?");
		      if (window.confirm("確定?"))
		          {
		             frm = document.getElementById('FrmDelete');
		             frm.submit();
		          };
		      }
		    </script>
				<style>
				
					body {
						margin: 0px;
					}
					.header{
						height: 130px;
						background-image:url(header.jpg); 
						background-repeat:cover;
						background-size: 100% 130px; 
					}
					.btn {
						height:  30px; 
					}
					.content {
						padding: 30px; 
						font-size: 14px; 
						line-height: 2em;
					}
					.footer {
						font-size: 12px;
						line-height: 1.5em;
						color: #FFF;
						background-image: url(images/footer.jpg); 
						background-repeat: no-repeat;
						padding: 20px;
					}
					.table1{ 
						  width:700;
						  background:#00F;
						  border:2px solid #ddd;
						  border-collapse:collapse;
						  font-family:DFKai-sb;
					}
					.table1 tr th{ 
						  background:#FDE9D9; 
						  border:1px solid #ccc;
						  border-collapse:collapse;
					} 
					.table1 tr td{
						 background:#FFFFE0;
						 border:1px solid #ccc; 
						 border-collapse:collapse;
					}
				ul.pagination {
				display: inline-block;
				padding: 0;
				margin: 0;
				}	

				ul.pagination li {display: inline;}

				ul.pagination li a {
				color: black;
				float: left;
				padding: 8px 16px;
				text-decoration: none;
				font-size: 22px;
				}
				ul.pagination li a.active {
				background-color: #4CAF50;
				color: white;
				}

			ul.pagination li a:hover:not(.active) {background-color: #ddd;}
			/* span:target */
#tab-1:target,
#tab-2:target,
#tab-3:target,
#tab-4:target{
  border: solid 1px red;
}
   
/*頁籤變換*/
#tab-1:target ~ #tab > ul li a[href$="#tab-1"],
#tab-2:target ~ #tab > ul li a[href$="#tab-2"],
#tab-3:target ~ #tab > ul li a[href$="#tab-3"],
#tab-4:target ~ #tab > ul li a[href$="#tab-4"] {
  border: solid 1px red;
}
 
/*頁籤內容顯示*/
#tab-1:target ~ #tab > div.tab-content-1,
#tab-2:target ~ #tab > div.tab-content-2,
#tab-3:target ~ #tab > div.tab-content-3,
#tab-4:target ~ #tab > div.tab-content-4 {
  border: solid 1px red;
}
#tab{
    width: 4000px;
    background: #A500CC;
    border: solid 1px #1caa5d;
  }
  /* 頁籤ul */
  #tab>ul{
    overflow: hidden;
    margin: 0;
    padding: 10px 20px 0 20px;
  }
  #tab>ul>li{
    list-style-type: none;
 
  }
  #tab>ul>li>a{
    text-decoration: none;
    font-size: 13px;
    color: #333;
    float: left;
    padding: 10px;
    margin-left: 5px;
  }
 
  /*頁籤div內容*/
  #tab>div {
    clear:both;
    padding:0 15px;
    height:0;
    overflow:hidden;
    visibility:hidden;
    -webkit-transition:all .4s ease-in-out;
    -moz-transition:all .4s ease-in-out;
    -ms-transition:all .4s ease-in-out;
    -o-transition:all .4s ease-in-out;
    transition:all .4s ease-in-out;
  }
 
  /* span:target */
  #tab-1:target,
  #tab-2:target,
  #tab-3:target,
  #tab-4:target{
    border: solid 1px red;
  }
   
  /*第一筆的底色*/
  span:target ~ #tab > ul li:first-child a {
     background:#A500CC;
  }
  span:target ~ #tab > div:first-of-type {
    visibility:hidden;
    height:0;
    padding:0 15px;
  }
   
  span ~ #tab > ul li:first-child a,
  #tab-1:target ~ #tab > ul li a[href$="#tab-1"],
  #tab-2:target ~ #tab > ul li a[href$="#tab-2"],
  #tab-3:target ~ #tab > ul li a[href$="#tab-3"],
  #tab-4:target ~ #tab > ul li a[href$="#tab-4"] {
    background: #fff;
  }
  
  span ~ #tab > div:first-of-type,
  #tab-1:target ~ #tab > div.tab-content-1,
  #tab-2:target ~ #tab > div.tab-content-2,
  #tab-3:target ~ #tab > div.tab-content-3,
  #tab-4:target ~ #tab > div.tab-content-4 {
    visibility:visible;
    height:400px;
    background: #fff;
  }
			

				</style>
			</head>
			<body>
				<div class="wrapper">
					<div class="header"/>
					<div class="btn">
					</div>
					<div class="content">
						<span id="tab-1">1</span>
						<span id="tab-2">2</span>
						<span id="tab-3">3</span>
						<span id="tab-4">4</span>*/
 
				<div id="tab">
							<!-- 頁籤按鈕 -->
							<ul>
								<li>
									<a href="#tab-1">總覽</a>
								</li>
								<li>
									<a href="#tab-2">新增</a>
								</li>
								<li>
									<a href="#tab-3">刪除</a>
								</li>
								<li>
									<a href="#tab-4">搜尋</a>
								</li>
							</ul>
							<!-- 頁籤的內容區塊 -->
							<div class="tab-content-1">
								<p>
									<h2>學生清單</h2>
									<table class="table1">
										<tr>
											<td>學號</td>
											<td>姓名</td>
											<td>科系</td>
											<td>性別</td>
											<td>生日</td>
											<td>血型</td>
											<td>專長</td>
										</tr>
										<xsl:apply-templates select="G7:student">
											<xsl:sort select="."/>
										</xsl:apply-templates>
									</table>
								</p>
							</div>
							<div class="tab-content-2">
								<p>
									<br>
										<input type="text" value="請輸入學號" style="width:160px;height:30px;font-size:12px;" id="StudentNumber"/>
									</br>
									<input type="text" value="請輸入姓" style="width:160px;height:30px;font-size:12px;" id="FirstName"/>
									<input type="text" value="請輸入名" style="width:160px;height:30px;font-size:12px;" id="LasttName"/>
									<br>
										<input type="text" value="請輸入生日" style="width:160px;height:30px;font-size:12px;" id="Birthday"/>
									</br>
									<input type="text" value="請輸入性別" style="width:160px;height:30px;font-size:12px;" id="Sex"/>
									<input type="text" value="請輸入血型" style="width:160px;height:30px;font-size:12px;" id="Blood"/>
									<input type="text" value="請輸入個性" style="width:160px;height:30px;font-size:12px;" id="Personility"/>
									<input type="submit" value="新增資料" style="width:80px;height:30px;font-size:12px;"/>
								</p>
							</div>
							<div class="tab-content-3">
								<p>
								<form  action="Delete" method="POST">
									<input type="text" value="請輸入欲刪除者學號" style="width:160px;height:30px;font-size:12px;" id="D"/>
									<input type="submit" value="刪除資料" style="width:80px;height:30px;font-size:12px;" onclick="Delete( )"/>
								</form>
								</p>
							</div>
							<div class="tab-content-4">
								<form  action="Search" method="POST">
									<input type="text" value="請輸入欲搜尋者學號" style="width:160px;height:30px;font-size:12px;" name="StudentID"  id="StudentID"/>
									<input type="submit" value="搜尋資料" style="width:80px;height:30px;font-size:12px;"/>
								</form>
							</div>
						</div>
					</div>
					<div class="footer"/>
				</div>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="G7:student">
		<tr>
			<td>
				<xsl:apply-templates select="@id"/>
			</td>
			<td>
				<xsl:apply-templates select="G7:name"/>
			</td>
			<td>
				<xsl:apply-templates select="G7:department"/>
			</td>
			<td>
				<xsl:apply-templates select="@sex"/>
			</td>
			<td>
				<xsl:apply-templates select="G7:birthday"/>
			</td>
			<td>
				<xsl:apply-templates select="@blood"/>
			</td>
			<td>
				<xsl:apply-templates select="G7:expertise"/>
			</td>
		</tr>
	</xsl:template>
	<xsl:template match="G7:name">
		<xsl:value-of select="."/>
	</xsl:template>
	<xsl:template match="G7:name">
		<xsl:apply-templates select="G7:firstname"/>
		<xsl:apply-templates select="G7:lastname"/>
	</xsl:template>
	<xsl:template match="G7:firstname">
		<xsl:value-of select="."/>
	</xsl:template>
	<xsl:template match="G7:lastname">
		<xsl:value-of select="."/>
	</xsl:template>
	<xsl:template match="G7:department">
		<xsl:value-of select="."/>
		<xsl:value-of select="@grade"/>年級
	</xsl:template>
	<xsl:template match="G7:birthday">
		<xsl:value-of select="@year"/>
		/
		<xsl:value-of select="@month"/>
		/
		<xsl:value-of select="@day"/>
	</xsl:template>
</xsl:stylesheet>
