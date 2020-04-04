<?php
require_once '../load.php';
confirm_logged_in();

$category_table = 'tbl_category';
$categories = getAll($category_table);

if(isset($_POST['submit'])) {
  
    $product = array(
        'img' => $_FILES['img'],
        'name' => trim($_POST['name']),
        'rate' => trim($_POST['rate']),
        'price' => trim($_POST['price']),
        'description' => trim($_POST['description']),
        'color' => trim($_POST['color']),
        'category' => trim($_POST['catList']),
    );

    $result = addProduct($product);
    $message = $result;
}

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Movie</title>
</head>
<body>
    <h2>Add Product!</h2>
    <?php echo !empty($message)? $message:''; ?>
        <form action="admin_add_product.php" method="post" enctype="multipart/form-data">

            <label>Product Image:</label><br>
            <input type="file" name="img" value=""><br><br>

            <label>Product Name:</label><br>
            <input type="text" name="name" value=""><br><br>

            <label>Product Rate:</label><br>
            <input type="text" name="rate" value=""><br><br>

            <label>Product Price:</label><br>
            <input type="text" name="price" value=""><br><br>

            <label>Product Color:</label><br>
            <input type="text" name="color" value=""><br><br>

            <label>Product Description:</label><br>
            <textarea name="description"></textarea><br><br>


            <label>Product Category: </label><br>
            <select name="catList">
                <option>Select a category of the product! (make me easy to filter ^_^)</option>

                <?php while ($pCat = $categories->fetch(PDO::FETCH_ASSOC)): ?>
                    <option value="<?php echo $pCat['category_id']; ?>"><?php echo $pCat['category_name']; ?></option>
                <?php endwhile; ?>

            </select><br><br>

            <button type="submit" name="submit">Add Product</button>
        </form>
</body>
</html>