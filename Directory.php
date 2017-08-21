<html>
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
</style>
<body style="background-color: #FFFFE0">
<h2>SEArch<sub>/p!c</sub></h2>
<div id="header">
<form method="post" action="index.php">
<input type="text" name="n">
<input type="submit" name="sub" value="Search">
</form>
</div>
<ul>
<?php

if(isset($_POST['sub']))
{
	
	if (file_exists('.'))
	 {
		echo '<pre>';
		printDir('.');
		echo '<pre>';
	}	
   else 
	{
		die ('<h3>Directory does not exist.</h3>');
	}
	if (count($photosList)>0) 
	{
		 echo "<h4>$bgm Results here</h4>";
		for ($x=0; $x<count($photosList); $x++)
		 {
		?>
		<li>
		<img src="<?php echo $photosList[$x]; ?>" />
		<?php echo basename($photosList[$x]); ?><br/>
		<?php echo round(filesize($photosList[$x])/1024) . ' KB'; ?>
		</li>
		<?php
		}
	} 
  else 
  	{
		echo "<h3>No images found in directory....Try another one</h3>";
	}
}	
function printDir($dir)
{
	if (file_exists($dir)) 
	{
		$bgm=0;
	       $nme=$_POST['n'];
	      $len=strlen($nme);
	$photosDir = './directory_iter';
	$photosList = array();
		$dp = opendir($dir) or die ('ERROR: Cannot open directory');
		while ($file = readdir($dp)) 
		{
			$fileData = pathinfo($file);
			if ($file != '.' && $file != '..')
		 	{
		 		if ($fileData['extension']=='gif'||$fileData['extension']=='jpg'||$fileData['jpeg']=='gif'||$fileData['extension']=='png')
				{	
					$bn=($fileData['filename']);
					echo $bn."<br>";
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
				if (is_dir("$dir/$file")) 
				{
					printDir("$dir/$file");
				}
			
			}
		}
		closedir($dp);
	}
	else
	{
		die("NO dir");
	}
}

?>
</ul>
</body>
</html>
