<html>
<head>
<link rel="stylesheet" href="resource/bootstrap.min.css">
  <link rel="stylesheet" href="resource/font-awesome.min.css" />
   <link rel="stylesheet" href="resource/own.css" />
<script src="resource/jquery.min.js"></script>
   <script src="resource/jquery.js"></script>
  <script src="resource/bootstrap.min.js"></script>
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
$err='';
$success1=0;
include('getdate.php');
if(isset($_POST['updatelink']))
{
	$link=$_POST['link'];
	$w1=$_POST['w1'];
	$w2=$_POST['w2'];
	$kw=$_POST['kw'];
	$des=$_POST['des'];
	$pwd=$_POST['pwd'];
	if($pwd=="1")
	{
		include('dbConfig.php');
		$s1="insert into lins values('','$link','$w1','$w2','$kw','$des','$current_time','0')";
		$r1=mysql_query($s1);
		if($r1)
		{
			echo "<div class='alert alert-success'>
    <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
    <strong>Success!</strong>Thank you so much..Your link added successfully
  </div>";
		}
		else
		{
			echo "<div class='alert alert-success'>
    <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
    <strong>Not updated!</strong>Your link not added into site.
  </div>";
		}	
	}
	else
	{
		echo "<div class='alert alert-warning '>
    <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
    <strong>warning!</strong>Password incorrect!..try to know by owner.
  </div>";
		
	}
}

?>
<br>
<h2>Add your link</h2>
<a href="copy.php" class="btn-sm btn-success" style="padding:15px 15px;color:black;font-size:20px;text-decoration:overline;"  >Home</a>
  <div class="col-md-9">
      <form role="form" action="" method="post">
		   
		      <label for="usr">Link:</label>
		      <br>
		      <input type="text" class="form-control" id="usr" name="link" style="width:40%;margin-left:45%;height:50px;" required>
		   
		     <div class="form-group">
		      <label for="usr">Keyword:</label>
		      <input type="text" class="form-control" id="usr" name="kw" style="width:40%;margin-left:45%;height:50px;" required>
		    </div>
		     <div class="form-group">
		      <label for="usr">About 1:</label>
		      <input type="text" class="form-control" id="usr" name="w1" style="width:40%;margin-left:45%;height:50px;" required>
		    </div>
		    <div class="form-group">
		      <label for="usr">About 2:</label>
		      <input type="text" class="form-control" id="usr" name="w2" style="width:40%;margin-left:45%;height:50px;" required>
		    </div>
		    <div class="form-group">
			      <label for="comment">Decription:</label>
			      <textarea class="form-control" rows="5" id="comment" name="des" style="width:40%;margin-left:45%"></textarea>
			    </div>
		    <div class="form-group">
		      <label for="pwd">Password:</label>
		      <input type="password" class="form-control" id="pwd" name="pwd" style="width:40%;margin-left:45%;height:50px;" required>
		    </div>
		    <input type="submit" name="updatelink" value="Update" class="btn-sm btn-success">
		    
	  </form>
	  </div>
  </div>

