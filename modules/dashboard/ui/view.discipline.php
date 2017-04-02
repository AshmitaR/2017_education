<?php

include_once 'blade/view.discipline.blade.php';
include_once './common/class.common.php';

?>

<div class="panel panel-default">
    
    <div class="panel-heading">Discipline Information</div>
    
    <div class="panel-body">

	<div id="form">
		<form method="post" class="form-horizontal">
				
				<div class="form-group">
              	<label class="control-label col-sm-2" for="txtName">Discipline Name:</label>
              	<div class="col-sm-10">
					<input type="text" name="txtName" placeholder="Discipline Name" value="<?php 
					if(isset($_GET['edit'])) echo $getROW->getName();  ?>" />
				</div>
				</div>
		        <div class="form-group">        
	              <div class="col-sm-offset-2 col-sm-10">
						<?php
						if(isset($_GET['edit']))
						{
							?>
							<button type="submit" name="update">update</button>
							<?php
						}
						else
						{
							?>
							<button type="submit" name="save">save</button>
							<?php
						}
						?>
					</div>
				</div>	

		</form>

	</div>
	</div>

	<div class="panel-body">

	<table class="table table-bordered">
	<?php
	
	
	$Result = $_DisciplineBAO->getAllDisciplines();

	//if DAO access is successful to load all the Disciplines then show them one by one
	if($Result->getIsSuccess()){

		$DisciplineList = $Result->getResultObject();
	?>
		<tr>
			<td>Discipline Name</td>
		</tr>
		<?php
		for($i = 0; $i < sizeof($DisciplineList); $i++) {
			$Discipline = $DisciplineList[$i];
			?>
		    <tr>
			    <td><?php echo $Discipline->getName(); ?></td>
			    <td><a href="?edit=<?php echo $Discipline->getID(); ?>" onclick="return confirm('sure to edit !'); " >edit</a></td>
			    <td><a href="?del=<?php echo $Discipline->getID(); ?>" onclick="return confirm('sure to delete !'); " >delete</a></td>
		    </tr>
	    <?php

		}

	}
	else{

		echo $Result->getResultObject(); //giving failure message
	}

	?>
	</table>
	</div>
</div>
