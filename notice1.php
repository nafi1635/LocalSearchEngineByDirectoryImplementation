<html>
<body>
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
