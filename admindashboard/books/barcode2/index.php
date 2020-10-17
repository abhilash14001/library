

<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <link href="css/maxcdn.css" rel="stylesheet" id="bootstrap-css">
    <script src="JS/maxcdn.js">
    </script>
    <script src="JsBarcode.all.min.js">
    </script>
    <title> Barcodes Generator
    </title>
	
  </head>
  <body>
    <br>
    
    
    <br>
    <div class="cotainer">
      <div class="row justify-content-center">
        <div class="col-md-8">
		
          <div class="card">
        <center><h1>Print Barcodes</h1></center> 

            <div class="card-body">
              <?php
			  if(isset($_GET['barcode']))
			  {
				include "../../include/config.php";
				$barc =  $_GET['barcode'];
				$barc = explode(",", $barc);
				
				
				
				
				
			
				
              
              ?>
			  <div class = "container">
              <div class="row">
	
                   <?php 
                      //get back rows of results
					  foreach($barc as $bc) {
				$query = "select bookid from lmsbook where booktitle = '$bc'";
				
				$barcc = mysqli_query($con, $query);
				
					  
                  while($bar = mysqli_fetch_assoc($barcc)){
				$bar = $bar['bookid'];
				$arrayBarcodes[]=$bar; 
				
                    ?>
					<div class="col-md-3">
            <div class="thumbnail">
					
				<svg id='<?php echo "barcode".$bar;  ?>'>
                     
			</div>
			</div>	
			  <?php }} } ?>
                  
				  
                </div>
				  
              </div>
			  
            </div>
			</div>
			
          </div>
		
    </div>
    
    <!--Add new product Modal -->
    <div class="modal fade" id="barcodeModal" role="dialog" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;
              </span>
            </button>
          </div>
          <div class="modal-body">
            <form action="php/insert.php" method="post">
              <div class="form-group">
                <label for="recipient-name" class="col-form-label" required>Product name:
                </label>
                <input type="text" class="form-control" id="name" name="name" maxlength="20" required>
              </div>
              <hr>
              <button type="submit" class="btn btn-primary">Generate barcode
              </button>
            </form>
          </div>
        </div>
      </div>
    </div>
    <!--End add new product Modal -->
  </body>
</html>

<!--Bootstrap JS -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<script type="text/javascript">
  //convert json to JS array data.
  function arrayjsonbarcode(j) {
    json = JSON.parse(j);
    arr = [];
    for (var x in json) {
      arr.push(json[x]);
    }
    return arr;
  }

  //convert PHP array to json data.
  jsonvalue = '<?php echo json_encode($arrayBarcodes) ?>';
  values = arrayjsonbarcode(jsonvalue);

  //generate barcodes using values data.
  for (var i = 0; i < values.length; i++) {
    JsBarcode("#barcode" + values[i], values[i].toString(), {
      format: "codabar",
      lineColor: "#000",
      width: 1,
      height: 30,
      displayValue: true
      }
    );
  }
</script>