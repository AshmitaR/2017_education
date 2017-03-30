<?php

include_once 'blade/view.coursetype.blade.php';
include_once '/../../common/class.common.php';

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>Term CRUD Operations</title>
		<link rel="stylesheet" href="style.css" type="text/css" />
	</head>

<body>
<center>
	<div id="header">
		<label>By : Kazi Masudul Alam</a></label>
	</div>

	<div id="form">
		<form method="post">
			<table width="100%" border="1" cellpadding="15">
				<tr>
					<td><input type="text" name="txtName" placeholder="Course Type Name" value="" /></td>
				</tr>
				<tr>
					<table>
					<tr>
					<td>
						Sessional Type:
					</td>
					<td>
							<select name="sessionalType">
								  <option value="0">N/A</option>
								  <option value="1">Hardware Lab</option>
								  <option value="2">Software Lab</option>
							</select>
					</td>
					</tr>
					</table>
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

	<table width="100%" border="1" cellpadding="15" align="center">
		    <tr>
			    <td></td>
			    <td><a href="" onclick="return confirm('sure to edit !'); " >edit</a></td>
			    <td><a href="" onclick="return confirm('sure to delete !'); " >delete</a></td>
		    </tr>
	</table>
	</div>
</center>
</body>
</html>