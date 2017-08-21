<html>
<head>
<script>
function open(this)
{
	window.open(this);
}
</script>
<head>
<style type="text/css">
ul {
list-style-type: none;
}
li {
float: left;
padding: 10px;
margin: 10px;
font: bold 10px Verdana, sans-serif;
}
img {
display: block;
border: 1px solid #333300;
margin-bottom: 5px;
height:150px;
width:150px;
border-radius:10px;

}
img:hover {
    border: 1px solid #FFD700;

}
input[type=text]
{
    width: 600px;
    padding: 12px 20px;
    border-color:3333CC;
    border-radius: 5px;
}
input[type=text]:hover
{
    width: 600px;
    padding: 14px 22px;
    border-color:#7B68EE;
     border-radius: 5px;
}
input[type=submit] {
    width:150px;
    background-color: orange;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}
input[type=submit].a
{
	width:50px;
	height:50px;
	color:blue;
}
input[type=submit]:hover {
    background-color: #DAA520
}
#header
{
	width:100%;
	height:100px;
	background-color: #FFFFE0;
	margin:0px 0px;
}
form
{
	text-align:center;
	margin:-100px ;
}
h2
{
	color:#8B008B;
	margin:50px 100px;
}
h4
{
	color:blue;
	margin:0px 240px;
}
input[type=button].a
{
	margin:10px 35px;
	padding:10px 35px;
	background-color:#F0F0F0 ;
	color:9966FF;
	border-color:FFCC66;
}
input[type=button].a:hover
{
	padding:12px 36px;
}
a
{
padding:10px 25px;
font-size:28px;
text-decoration:none;

}
hr
{
	display:block;
	opacity:0.3;
	color:green;
}
</style>
<body style="background-color: #FFFFE0">
<h2>SEArch<sub>/p!c</sub></h2>
<div id="header">

<form method="post" action="notice.php">
<input type="text" name="n">
<input type="submit" name="sub" value="Search">
<br>
<br>
<a href="index.php">Images</a>
<a href="books.php">Books</a>
<a href="notice.php">Notice</a>
<a href="code.php">Programs</a>
<a href="others.php">others</a>
<br>
<hr>
</form>

</div>
<ul>
<?php
if(isset($_POST['sub']))
{
	$bgm=0;
	$nme=$_POST['n'];
	$len=strlen($nme);
	$photosDir = './hub';
	$photosExt = array('pdf', 'xls');
	$photosList = array();
	if (file_exists($photosDir))
	 {
		$dp = opendir($photosDir) or die ('ERROR: Cannot open directory');
		while ($file = readdir($dp))
		 {
			if ($file!= '.' && $file != '..')
			{
				$fileData = pathinfo($file);
				$bn=($fileData['filename']);
		 		//echo "$bn==>".strlen($bn);
		 		for($j=0;$j<strlen($bn)-$len+1;$j++)
		 		{
		 			//echo $j;
		 			$sw=0;
		 			$flag=0;
			 			for($k=$j;$k<$j+$len;$k++)
			 			{
							if($bn[$k]==$nme[$sw])
							{	
								//echo "suc";
					 			$sw++;
					 		}	
					 		if($sw==$len)
					 			$flag=1;	
					 	}	
							if($flag==1)
							{
								$bgm++;
								if (in_array($fileData['extension'], $photosExt))
								 {
									$photosList[] = "$photosDir/$file";
								}
								break;
								
							}	
							else
								{
									continue;
								}
							echo "<br>";	
						}	
						
					}	
				}		
		
	
	closedir($dp);
	}
	 else 
		{
		die ('<br><h3>Directory does not exist.</h3>');
		}
	if (count($photosList)>0) 
	{
	 echo "<h4><br><br> ".count($photosList)."Results here</h4>";
	for ($x=0; $x<count($photosList); $x++) {
	?>
	
	<li>
	<a href="./hub/<?php echo basename($photosList[$x]);?>"> <img src="pdf.jpeg"/></a>
	<?php echo basename($photosList[$x]); ?><br/>
	<?php echo round(filesize($photosList[$x])/1024) . ' KB'; ?>
	</li>
	<?php
	}
	} else {
	echo "<h3>No images found in directory....Try another one</h3>";
	}
}
?>
</ul>
</body>
</html>
