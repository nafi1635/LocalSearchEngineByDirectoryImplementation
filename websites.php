<?php
$xml=simplexml_load_file("websites.xml") or die("Not able to load");
if(isset($_POST['sub']))
{
	$find=$_POST['find'];
	$parts = explode(' ', $find);
	for($i=0;$i<count($parts);$i++)
		echo "<br>".$parts[$i];
	$flag=0;
	foreach ($xml->url as $find) 
	{
		if($find->name==$find)
		{
			$flag=1;
			?>
			<a href="<?php echo "$find->title";?>"><h2><?php echo $find->name;?></h2></a>
			<?php
		}	

	}
	if(flag==0)
		echo "Not found";	
}
?>
<form action="websites.php" method="post">
<input type="text" name="find" >
<input type="submit" name="sub" value="search">

</form>

