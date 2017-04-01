<?php

include_once 'blade/view.user.blade.php';
include_once './common/class.common.php';

?>

<center>

	<div id="form">
		<form method="post">
			<table class="table table-bordered">
				<tr>
					<td><input type="text" name="txtUniversityID" placeholder="University Identity" value="<?php 
					if(isset($_GET['edit'])) echo $globalUser->getUniversityID();  ?>" /></td>
				</tr>
				<tr>
					<td><input type="text" name="txtEmail" placeholder="Email Address" value="<?php 
					if(isset($_GET['edit'])) echo $globalUser->getEmail();  ?>" /></td>
				</tr>
				<tr>
					<td><input type="password" name="txtPassword" placeholder="Password" value="<?php 
					if(isset($_GET['edit'])) echo $globalUser->getPassword();  ?>" /></td>
				</tr>
				<tr>
					<td><input type="text" name="txtFirstName" placeholder="First Name" value="<?php 
					if(isset($_GET['edit'])) echo $globalUser->getFirstName();  ?>" /></td>
				</tr>
				<tr>
					<td><input type="text" name="txtLastName" placeholder="Last Name" value="<?php 
					if(isset($_GET['edit'])) echo $globalUser->getLastName();  ?>" /></td>
				</tr>
				<tr>
					<td>
							<label>Assigned Roles:: </label>
						    

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
					</td>
				</tr>
				<tr>
					<td>
							<label>Assigned Positions:: </label>
						    

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
					</td>
				</tr>	

				<tr>
					<td>
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
					</td>
				</tr>
			</table>
		</form>

<br />

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
</center>
