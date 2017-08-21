<html>
<head>
<style>
.box {
    display: block;
    position: relative;
    width: 300px;
    height: 200px;
    text-align: center;


}
.box span {
    position: absolute;
    left: 0;
    right: 0;
    
}
a {
    font-size: 250%;
    text-decoration:underline;
    color:#008B8B
}
p
{
	width:100%;
}
.text1
{
width:300px;
margin-left:30%"
}
</style>
</head>
<body>
<?php
session_start();
$nme=$_POST['n'];
if($nme=="itsmenafi")
{
	?>
	<a type="button" href="addlink.php">Add link</button>
	<br>
	<br><br><br><br>
	
  
	<?php
	
}
	$bgm=0;
	include('dbConfig.php');
	include('getdate.php');
	$len=strlen($nme);
	$s="select * from lins;";
	$r1=mysql_query($s);
	$ka=0;
	while($rw=mysql_fetch_assoc($r1))
	{
			$findd=0;
			$ind=$rw['id'];
			$kw=$rw['kw'];
			$w1=$rw['w1'];
			$w2=$rw['w2'];
			$bn=$kw;
			for($j=0;$j<strlen($bn)-$len+1;$j++)
		 		{
		 			$sw=0;
		 			$flag=0;
			 			for($k=$j;$k<$j+$len;$k++)
			 			{
							if($bn[$k]==$nme[$sw])
							{	
					 			$sw++;
					 		}	
					 		if($sw==$len)
					 		{
					 			$flag=1;	
					 			break;
					 			}
					 	}	
					 	if($flag==1)
					 		break;
						else
							{
								continue;
							}
							
					}
			if($flag!=1)
			{
				$bn=$w1;
				for($j=0;$j<strlen($bn)-$len+1;$j++)
		 		{
		 			$sw=0;
		 			$flag=0;
			 			for($k=$j;$k<$j+$len;$k++)
			 			{
							if($bn[$k]==$nme[$sw])
							{	
					 			$sw++;
					 		}	
					 		if($sw==$len)
					 		{
					 			$flag=1;	
					 			break;
					 			}
					 	}	
					 	if($flag==1)
					 		break;
						else
							{
								continue;
							}
							
					}
			}		
			if($flag!=1)
			{
					$bn=$w2;
			for($j=0;$j<strlen($bn)-$len+1;$j++)
		 		{
		 			$sw=0;
		 			$flag=0;
			 			for($k=$j;$k<$j+$len;$k++)
			 			{
							if($bn[$k]==$nme[$sw])
							{	
					 			$sw++;
					 		}	
					 		if($sw==$len)
					 		{
					 			$flag=1;	
					 			break;
					 			}
					 	}	
					 	if($flag==1)
					 		break;
						else
							{
								continue;
							}
							
					}
				}	
		       /* find($kw); 
		        if($findd!=1)
		        {
		       			 find($w1);
		       			 if($findd!=1)
		        			 find($w1);	
		        }*/	
		         if($flag==1)
		        	{
		        	$arr[$ka]=$ind;
		        	$ka=$ka+1;
		        	}
		       	
		 		
          }	

	if (count($arr)>0) 
	{
		echo "<div class='col-sm-9'>";
		echo "<div class='box'>";
		echo "<p>";
		 echo "<h4>$ka Results here</h4>";
		for ($x=0; $x<count($arr); $x++)
		 {
		 	 echo "<hr>";
			$id=$arr[$x];
			include('dbConfig.php');
			$q2="select * from lins where id=$id";
			$r5=mysql_query($q2);
			$res1=mysql_fetch_assoc($r5);
			$link=$res1['link'];
			$des=$res1['description'];
			echo "<a href='$link' style=''>$link</a><br>";
			echo "<h6  style='margin-left:20%;font-size: 150%'>$des</h6>";
			
			echo "<p>";
		}
		
		echo "</div></div>";
	}
?>

