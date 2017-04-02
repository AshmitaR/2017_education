<div id="body" style="background-color:AliceBlue">  
	<div class="row">
		<div class="col-sm-12">
			<?php
				//TODO: check whether routing is active
				if(isset($page) && apply_routing($page)){
					
					include $page;
				}	
			?>
		</div>
	</div>
</div>