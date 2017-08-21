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
height:300px;
width:300px;
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
input[type=submit].b
 {
    width:150px;
    background-color: orange;
    color: blue;
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
input[type=submit].b:hover {
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
	
	color:9966FF;
	border-color:FFCC66;
}
input[type=button].a:hover
{
	padding:12px 36px;
}
a
{
padding:5px 20px;
font-size:22px;
text-decoration:none;
margin:10px 20px;

}
input[type=submit].c
{
     background:none!important;
     border:none; 
     padding:10px 20px;
     /*border is optional*/
     border-bottom:1px solid #444; 
     cursor: pointer;
     margin:10px 20px;
     font-size:25px;
   font-style:verdana;
  
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

<form method="post" action="index.php">
<input type="text" name="n">
<input type="submit" class="b" name="sub" value="Search">
<br>
<br>
<input type="submit" class="c" value="Images" name="Images">
<input type="submit" class="c" value="Books" name="Books">
<input type="submit" class="c" value="Notice" name="Notice">
<input type="submit" class="c" value="Code" name="Programs">
<input type="submit" class="c" value="Knw" name="Pdfs">
<br>
<hr>
</form>

</div>
<ul>
<?php
session_start();
$nme=$_POST['n'];
$_SESSION['name']=$nme;

function show($photosDir,$nme)
 	{
	$bgm=0;
	
	$len=strlen($nme);
	
	$bookDir = './books';
	
//	$photosExt = array('gif', 'jpg', 'jpeg', 'tif', 'tiff', 'bmp', 'png');
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
							//	if (in_array($fileData['extension'], $photosExt))
						//	 {
									$photosList[] = "$photosDir/$file";
							//	}
								
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
		die ('<h3><br>Directory does not exist.</h3>');
		}
	if (count($photosList)>0) 
	{
	 echo "<h4><br><br><br>$bgm Results here</h4>";
	for ($x=0; $x<count($photosList); $x++) {
	?>
	
	<li>
	<img  src="<?php echo $photosList[$x]; ?>"  onclick="window.open('/searchENGine/<?php echo $photosDir;?>/<?php echo basename($photosList[$x]); ?>','_blank')"/>
	<?php echo basename($photosList[$x]); ?><br/>
	<?php echo round(filesize($photosList[$x])/1024) . ' KB'; ?>
	</li>
	<?php
	}
	} else {
	echo "<br><br><h3>No images found in directory....Try another one</h3>";
	}
}
if(isset($_POST['sub'])||isset($_POST['Images']))
{
	
	$photosDir = './bunch_image';
	$nmee=$_SESSION['name'];
	/*if(isset($_POST['Books'])&&isset($_POST['sub']))
	{
	$photosDir = './books';
	}*/
	show($photosDir,$nmee);

}

?>
</ul>
</body>
</html>
