
<!DOCTYPE HTML>
<html>
<head>
	<title>PHP EXAM</title>
	<!-- Latest compiled and minified Bootstrap CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
	<!-- custom css -->
	<style>
	.m-r-1em{ margin-right:1em; }
	.m-b-1em{ margin-bottom:1em; }
	.m-l-1em{ margin-left:1em; }
	.mt0{ margin-top:0; }
	.mb{ margin-bottom:100; }
	</style>
</head>
<body>
    <!-- container -->
    <div class="container">
        <div class="page-header">
            <h1>Read Products</h1>
			<a href='create.php' class='btn btn-success btn-sm '>Add Product</a>
            <?php
                include 'controller/get_all_product.php'
            ?>
        </div>
        <!-- PHP code to read records will be here -->
    </div> <!-- end .container -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<!-- Latest compiled and minified Bootstrap JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- confirm delete record will be here -->
</body>
</html>
<script type='text/javascript'>
// confirm record deletion
function delete_product( id ){
	var answer = confirm('Are you sure?');
	if (answer){
		// if user clicked ok,
		// pass the id to delete_product.php and execute the delete query
		window.location = 'controller/delete_product.php?id=' + id;
	}
}

function update_product( id ){
	window.location = 'controller/delete_product.php?id=' + id;
}
</script>