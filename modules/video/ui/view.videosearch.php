<?php
//session_start();
include_once 'blade/view.videosearch.blade.php';
include_once './common/class.common.php';
//include_once 'blade/view.video.blade.php';


?>
	<div id="form2">
		<form method="post">
				<table width="100%" border="1" cellpadding="15">
				
				<tr>
					<td style="width:80%"><input style="width:98%" type="text"  name="txtsearch" placeholder="Search video"></input></td>
					<td>
						<input  type="submit" id="savebutton" style="width:100px" name="search" value="Search">
					</td>
				</tr>

				</table>
				
		</form>
		<br><br>
		<form method="post" style="background-color:#040725">
	<table width="100%" border="1" cellpadding="15" align="center" >
	<?php
	
	$tag = null;
				
	if(isset($_GET["tag"]))
	{
		$tag = $_GET["tag"];
	}

	
	$Result = $_VideoBAO->searchVideo($tag);

	//if DAO access is successful to load all the Terms then show them one by one
	if($Result->getIsSuccess()){

		$VideoList = $Result->getResultObject();
	?>
		<?php
		for($i = 0; $i < sizeof($VideoList); $i++) {
			$Video = $VideoList[$i];
			?>
		    <tr>
			    <td style="color:white;font-size:20px;width:80%"><?php echo $Video->getTitle(); ?></td>
			    
			    <td><a href="video_comment.php?view=<?php echo $Video->getID(); ?>" onclick="return ; " >view</a></td>
			    
		    </tr>
	    <?php

		}

	}
	else{

		echo $Result->getResultObject(); //giving failure message
	}

	?>
	</table>
	</form>

	</div>
