<?php
    require_once '../load.php';
    confirm_logged_in();
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
</head>
<body>
    <h2>Welcome! <?php echo $_SESSION['user_name']; ?></h2>
    <a href="admin_add_product.php">Add Product</a>
    <a href="admin_check_product.php">Edit Product</a>
    <a href="admin_delete_product.php">Delete Product</a>
    <a href="admin_logout.php">Sign Out</a>
</body>
</html>