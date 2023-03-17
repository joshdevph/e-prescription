<!DOCTYPE HTML>
<html>
<head>
    <title>PDO - Create a Record - PHP CRUD Tutorial</title>
    <!-- Latest compiled and minified Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
</head>
<body>
    <!-- container -->
    <div class="container">
        <div class="page-header">
            <h1>Create Product</h1>
            <form action="controller/save_product.php" method="post">
	<table class='table table-hover table-responsive table-bordered'>
		<tr>
			<td>Name</td>
			<td><input type='text' name='name' class='form-control' /></td>
		</tr>
		<tr>
			<td>Description</td>
			<td><textarea name='description' class='form-control'></textarea></td>
		</tr>
		<tr>
			<td>Price</td>
			<td><input type='text' name='price' class='form-control' /></td>
		</tr>
		<tr>
			<td></td>
			<td>
				<input type='submit' value='Save' class='btn btn-primary' />
				<a href='product_table.php' class='btn btn-danger'>Back to read products</a>
			</td>
		</tr>
	</table>
</form>
        </div>
    <!-- html form to create product will be here -->
    </div> <!-- end .container -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<!-- Latest compiled and minified Bootstrap JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>