<?php

include_once 'blade/view.user.blade.php';
include_once './common/class.common.php';

?>

<div class="panel panel-default">
    
    <div class="panel-heading">User Information</div>
    
    <div class="panel-body">

	<div id="form">
		<form method="post" class="form-horizontal">

			<div class="form-group">
              	<label class="control-label col-sm-2" for="txtUniversityID">University ID:</label>
              	<div class="col-sm-10">
              	<input type="text" name="txtUniversityID" placeholder="University Identity" value="<?php 
					if(isset($_GET['edit'])) echo $globalUser->getUniversityID();  ?>" />
			  	</div>
			</div>
			  
			<div class="form-group">
              	<label class="control-label col-sm-2" for="txtEmail">Email:</label>
              	<div class="col-sm-10">
			  	<input type="email" name="txtEmail" placeholder="Email Address" value="<?php 
					if(isset($_GET['edit'])) echo $globalUser->getEmail();  ?>" />

			  	</div>
			</div>
			
			<div class="form-group">
              	<label class="control-label col-sm-2" for="txtPassword">Password:</label>
              	<div class="col-sm-10">  		
				<input type="password" name="txtPassword" placeholder="Password" value="<?php 
					if(isset($_GET['edit'])) echo $globalUser->getPassword();  ?>" />
				</div>
			</div>

			<div class="form-group">
              	<label class="control-label col-sm-2" for="txtFirstName">First Name:</label>
              	<div class="col-sm-10">  		
				<input type="text" name="txtFirstName" placeholder="First Name" value="<?php 
					if(isset($_GET['edit'])) echo $globalUser->getFirstName();  ?>" />
				</div>
			</div>

			<div class="form-group">
              	<label class="control-label col-sm-2" for="txtLastName">First Name:</label>
              	<div class="col-sm-10">	
				<input type="text" name="txtLastName" placeholder="Last Name" value="<?php 
					if(isset($_GET['edit'])) echo $globalUser->getLastName();  ?>" />
				</div>
			</div>
			<div class="form-group">
              	<label class="control-label col-sm-2" for="assignedRoles">Assigned Roles:</label>
              	<div class="col-sm-10">		
						   
						    <?php
						    // this block of code prints the list box of roles with current assigned  roles

						    $var = '<select name="assignedRoles[]" id="select-from-roles" multiple>';
							$Result = $_RoleBAO->getAllRoles();
								//if DAO access is successful to load all the Roles then show them one by one
							if($Result->getIsSuccess()){

								$Roles = $Result->getResultObject();
							
						       for ($i=0; $i < sizeof($Roles); $i++) { 
						       		
						       		$Role = $Roles[$i];
						    
						    		$var = $var. '<option value="'.$Role->getID().'"';   			

						       		if(isset($_GET['edit']) && isRoleAvailable($Role,$globalUser->getRoles())) {
						          		$var = $var.' selected="selected"';
						          	} 

						          	$var = $var.'>'.$Role->getName().'</option>';
					
								}

								$var = $var.'</select>';
							}
							echo $var;
							?>	
				</div>
			</div>
			<div class="form-group">
              	<label class="control-label col-sm-2" for="assignedPositions">Assigned Positions:</label>
              	<div class="col-sm-10">		
			
						    <?php
						    // this block of code prints the list box of Positions with current assigned  Positions

						    $var = '<select name="assignedPositions[]" id="select-from-positions" multiple>';
							$Result = $_PositionBAO->getAllPositions();
								//if DAO access is successful to load all the Positions then show them one by one
							if($Result->getIsSuccess()){

								$Positions = $Result->getResultObject();
							
						       for ($i=0; $i < sizeof($Positions); $i++) { 
						       		
						       		$Position = $Positions[$i];
						    
						    		$var = $var. '<option value="'.$Position->getID().'"';   			

						       		if(isset($_GET['edit']) && isPositionAvailable($Position,$globalUser->getPositions())) {
						          		$var = $var.' selected="selected"';
						          	} 

						          	$var = $var.'>'.$Position->getName().'</option>';
					
								}

								$var = $var.'</select>';
							}
							echo $var;
							?>	
				</div>
			</div>
	        <div class="form-group">        
              <div class="col-sm-offset-2 col-sm-10">
    
						<?php
						if(isset($_GET['edit']))
						{
							?>
							<button type="submit" value="update" name="update">update</button>
							<?php
						}
						else
						{
							?>
							<button type="submit" value="save" name="save">save</button>
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
	
	
	$Result = $_UserBAO->getAllUsers();

	//if DAO access is successful to load all the users then show them one by one
	if($Result->getIsSuccess()){

		$UserList = $Result->getResultObject();
	?>
		<tr>
			<th>University ID</th>
			<th>Email</th>
			<th>Password</th>
			<th>First Name</th>
			<th>Last Name</th>
		</tr>
		<?php
		for($i = 0; $i < sizeof($UserList); $i++) {
			$User = $UserList[$i];
			?>
		    <tr>
			    <td><?php echo $User->getUniversityID(); ?></td>
			    <td><?php echo $User->getEmail(); ?></td>
			    <td><?php echo $User->getPassword(); ?></td>
			    <td><?php echo $User->getFirstName(); ?></td>
			    <td><?php echo $User->getLastName(); ?></td>
			    <td><a href="?edit=<?php echo $User->getID(); ?>" onclick="return confirm('sure to edit !'); " >edit</a></td>
			    <td><a href="?del=<?php echo $User->getID(); ?>" onclick="return confirm('sure to delete !'); " >delete</a></td>
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

