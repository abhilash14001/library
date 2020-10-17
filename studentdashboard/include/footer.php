
<div class="footer">
 <p class="footer-text"> <b><?php echo $college_details; ?></b></p>
  
</div>
    <script src="<?php echo STUDENT_DASHBOARD_URL;?>vendors/jquery/dist/jquery.min.js"></script>
    <script src="<?php echo STUDENT_DASHBOARD_URL;?>vendors/popper.js/dist/umd/popper.min.js"></script>
    <script src="<?php echo STUDENT_DASHBOARD_URL;?>vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="<?php echo STUDENT_DASHBOARD_URL;?>assets/js/main.js"></script>


    <script src="<?php echo STUDENT_DASHBOARD_URL;?>vendors/chart.js/dist/Chart.bundle.min.js"></script>
    <script src="<?php echo STUDENT_DASHBOARD_URL;?>assets/js/dashboard.js"></script>
    <script src="<?php echo STUDENT_DASHBOARD_URL;?>assets/js/widgets.js"></script>
    <script src="<?php echo STUDENT_DASHBOARD_URL;?>vendors/jqvmap/dist/jquery.vmap.min.js"></script>
    <script src="<?php echo STUDENT_DASHBOARD_URL;?>vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
    <script src="<?php echo STUDENT_DASHBOARD_URL;?>vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
    <script>
        (function($) {
            "use strict";

                    jQuery('#vmap').vectorMap({
                map: 'world_en',
                backgroundColor: null,
                color: '#ffffff',
                hoverOpacity: 0.7,
                selectedColor: '#1de9b6',
                enableZoom: true,
                showTooltip: true,
                values: sample_data,
                scaleColors: ['#1de9b6', '#03a9f5'],
                
                normalizeFunction: 'polynomial'
            });
        })(jQuery);
    </script>
<script src = "<?php echo STUDENT_DASHBOARD_URL;?>datatable/jquery.min.js"></script>
<script src = "<?php echo STUDENT_DASHBOARD_URL;?>datatable/datatable.min.js"></script> 
<script>		
$(document).ready(function() {
$('#bootstrap-data-table-export').DataTable(

{
	
	 "scrollY": 500,
    
"dom": '<"toolbar">lBfrtip'

});

$("div.toolbar");

  
} );

$(document).ready(function() {
$('#bootstrap-data-table-exports').DataTable(

{
	
	 "scrollY": 500,
    
"dom": '<"toolbar">lBfrtip',
"columnDefs": [
    { "searchable": false, "targets": [0, 1, 3, 4, 6, 7, 8, 9, 10] }
  ]

});

$("div.toolbar");

 
} );


</script>
<script>
		$('.imagemodal').click(function(){
		var id = $(this).attr("id");
			
			$.ajax({
				
				url:'imagefetch.php',
				method: 'POST',
				
				data:{id:id},
				success:function(data)
				{
						
						console.log(id);
					$('.imagebody').html(data);
								
				}
				
				});
			
			}); 
			</script>
</body>

</html>