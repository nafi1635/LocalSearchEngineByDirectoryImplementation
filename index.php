<html>
<head>
  <link rel="stylesheet" href="resource/bootstrap.min.css">
  <link rel="stylesheet" href="resource/font-awesome.min.css" />
   <link rel="stylesheet" href="resource/own.css" />
<script src="resource/jquery.min.js"></script>
   <script src="resource/jquery.js"></script>
  <script src="resource/bootstrap.min.js"></script>
<script>
function open(this)
{
	window.open(this);
}
</script>
<head>

<body style="background-color: #FFFFE0">
<h2>bUScar</h2>
<br>
<?php
include('FileUpload.php');
?>
<?php
if(isset($_POST['sub']))
{
	include('dbConfig.php');
	include('getdate.php');
	$nme=$_POST['n'];
	if($nme!='')
	{
	$s="insert into search values('','$nme','$current_date')";
	$q=mysql_query($s);
	}
}
?>
<form method="post" action="copy.php">
<div class="form-group col-sm-2" style="margin:50px 50px 0px 20%">
  <input type="text" class="form-control" id="usr" name="n" style="height:50px;">
</div>
<br><br>
<input type="submit" class="btn btn-success b" name="sub" value="Search" style="">
<div class="col-sm-11" id="hi" style="padding-left:10%">
	<br><br>
	<div class="col-md-14" style="padding-left:10%">
            <div class="panel with-nav-tabs panel-default">
                <div class="panel-heading">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#tab1default" data-toggle="tab">Web</a></li>                         
                             <li><a href="#tab2default" data-toggle="tab">Books</a></li>
                              <li><a href="#tab3default" data-toggle="tab">Images</a></li>
                               <li><a href="#tab4default" data-toggle="tab">other sources</a></li>
                        </ul>
                </div>
             </div> 

</form>
<hr>
</div>
<ul>
                <div class="panel-body">
                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="tab1default">                    
                          <?php   if(isset($_POST['sub']))
                          {
		         	include('url.php');
                         	}
                         	?>
            <div>
	</div>
   </div>
                        <div class="tab-pane fade" id="tab2default">
                       
         <?php
        include('books1.php');
         ?>
    	</div>
        	  <div class="tab-pane fade" id="tab3default">
        	  <br><br>
                         <?php if($files==1)
		            {
		            	echo "<div class='alert alert-success'>
    <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
    <strong>Success!</strong>Your photo uploaded succesfully.
  </div>";
		            }	
		            ?>
          <?php   if(isset($_POST['sub']))
{
 		
	echo "<form action='' method='post' enctype='multipart/form-data' style='padding-left:80%'>
            
				<b>Upload:</b><br>
				<input type='file' name='this' id='this' style='padding:5px 5px;background:#5F9EA0'>

				<input type='submit' value='Save' name='fileup' style='padding:10px 10px;background:#5F9EA0'>
		</form>";
		echo "<br>";
	 include('image.php');
		
}
?>
    	</div>
    	 <div class="tab-pane fade" id="tab4default">
			<br><br><br>
			
			<a class="btn btn-success" style="background:#0084b4" href="https://twitter.com/<?php echo $nme;?>" >Twitter</a>
			<a class="btn btn-success"  href="https://www.google.co.in/?gws_rd=ssl#safe=active&q=<?php echo $nme;?>" >g00gle</a>
			<a class="btn btn-success" style="background:violet" href="https://in.search.yahoo.com/search;_ylc=X3oDMTFiN25laTRvBF9TAzIwMjM1MzgwNzUEaXRjAzEEc2VjA3NyY2hfcWEEc2xrA3NyY2h3ZWI-?p=<?php echo $nme;?>&fr=yfp-t-704&fp=1&toggle=1&cop=mss&ei=UTF-8" >Yahoo</a>
			<a class="btn btn-success" style="background:red" href="https://www.youtube.com/results?search_query=<?php echo $nme;?>" >Youtube</a>
			
    	<a class="btn btn-success" style="background:#0084b4" href="https://twitter.com/<?php echo $nme;?>" >Twitter</a>
    	<a class="btn btn-success" style="background:blue" href="https://en.wikipedia.org/w/index.php?search=<?php echo $nme;?>&title=Special%3ASearch&profile=default&fulltext=1" >Wikipedia</a>
    	<a class="btn btn-success" style="background:orange" href="http://dictionary.cambridge.org/dictionary/english/<?php echo $nme;?>">cambridge</a>
    	</div>
    	</div>
    	
    	
                    </div>
                    
                </div>
            </div>
        </div>
	</div>
</div>

</ul>
</body>
</html>
