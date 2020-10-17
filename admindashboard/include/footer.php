
<div class="footer">
 <p class="footer-text"> <b><?php echo $college_details; ?></b></p>
  
</div>
    <script src="<?php echo ADMIN_DASHBOARD_URL;?>/vendors/jquery/dist/jquery.min.js"></script>
    <script src="<?php echo ADMIN_DASHBOARD_URL;?>/vendors/popper.js/dist/umd/popper.min.js"></script>
    <script src="<?php echo ADMIN_DASHBOARD_URL;?>/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="<?php echo ADMIN_DASHBOARD_URL;?>/assets/js/main.js"></script>


    <script src="<?php echo ADMIN_DASHBOARD_URL;?>/vendors/chart.js/dist/Chart.bundle.min.js"></script>
    <script src="<?php echo ADMIN_DASHBOARD_URL;?>/assets/js/dashboard.js"></script>
    <script src="<?php echo ADMIN_DASHBOARD_URL;?>/assets/js/widgets.js"></script>
    <script src="<?php echo ADMIN_DASHBOARD_URL;?>/vendors/jqvmap/dist/jquery.vmap.min.js"></script>
    <script src="<?php echo ADMIN_DASHBOARD_URL;?>/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
    <script src="<?php echo ADMIN_DASHBOARD_URL;?>/vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
	
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
	

<script src = "<?php echo ADMIN_DASHBOARD_URL;?>datatable/jquery.min.js"></script>
<script src = "<?php echo ADMIN_DASHBOARD_URL;?>datatable/datatable.min.js"></script> 
	<script>		
$(document).ready(function() {
$('#bootstrap-data-table-export').DataTable(

{
	 "scrollY": 500,
    
"dom": '<"toolbar">lBfrtip'

});

$("div.toolbar");

});



</script>
<script type="text/javascript">

$(".remove").click(function(){

var ids = $(this).attr("id");
var image = $(this).attr("bimage");
if(confirm('Are you sure to remove this record ?'))
{
$.ajax({
url: 'deletebooks.php',
type: 'POST',
data: {ids:ids, image:image},
error: function(data) {
alert('Something is wrong');

},

success: function(data) {
window.location ="createbooks.php";

}

});

}

});



</script>
<script>
$(document).ready(function(){
 
 $('#fa-trash').click(function(){
  
  if(confirm("Are you sure you want to delete this?"))
  {
   var id = [];
   var image = [];
   
   $('input[type="checkbox"]:checked').each(function(i){
    id[i] = $(this).val();
	
   });
   
   if(id.length === 0) //tell you if the array is empty
   {
    alert("Please Select atleast one checkbox");
   }
   else
   {
    $.ajax({
     url:'deletebooks.php',
     method:'POST',
     data:{id:id},
     success:function()
     {
     window.location = "createbooks.php";
     }
     
    });
   }
   
  }
  else
  {
   return false;
  }
 });
 
});
$(document).ready(function(){
 
 $('#fa-barcode').click(function(){
   var barcode = [];
   
   $('#allchecks:checked').each(function(i){
    barcode[i] = $(this).val();
   });
   $.ajax({
     url:'barcode2/index.php',
     method:'GET',
     data:{barcode:barcode},
	 success:function()
	 {
	window.location = "barcode2/index.php?barcode="+barcode;
	 }
     
 });
 });
  });
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