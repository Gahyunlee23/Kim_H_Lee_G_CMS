<?php
    require_once '../load.php';
    
    $id = $_GET['id'];
    $current_product = getSingleProduct($id);
    
    if(!$current_product) {
        $message = 'Failed to load product info';
    } 

    if(isset($_POST['submit'])) {  
        $id = $_POST['id'];
        $img = $_POST['img'];
        $name = $_POST['name'];
        $color = $_POST['color'];
        $rate = $_POST['rate'];
        $description = $_POST['description'];
        $price = $_POST['price'];
    
        $message = editProduct($id, $img, $name, $color, $rate, $description, $price);
    }
    

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Products</title>
</head>
<body>
<h2>Edit product</h2>
    <?php echo !empty($message)? $message:''; ?>
    <form action="admin_edit_product.php" method="post">
        <?php if($current_product): ?>

        <?php while($pro_info = $current_product->fetch(PDO::FETCH_ASSOC)): ?> 
        <label>Product ID</label>
        <input type="text" name="id" value="<?php echo $pro_info['product_id'];?>"><br><br>

        <label>Product Image</label>
        <input type="text" name="img" value="<?php echo $pro_info['product_img'];?>"><br><br>

        <label>Product Name</label>
        <input type="text" name="name" value="<?php echo $pro_info['product_name'];?>"><br><br>

        <label>Product Color</label>
        <input type="text" name="color" value="<?php echo $pro_info['product_color'];?>"><br><br>

        <label>Product Rate</label>
        <input type="text" name="rate" value="<?php echo $pro_info['product_rate'];?>"><br><br>
        
        <label>Product Price</label>
        <input type="text" name="price" value="<?php echo $pro_info['product_price'];?>"><br><br>

        <label>Product Descirption</label><br>
        <textarea type="text" name="description" rows="5" col="60"><?php echo $pro_info['product_description'];?></textarea><br><br>

        <button type="submit" name="submit">Edit Account</button>


        <?php endwhile;?>
        <?php endif;?>
    </form>
    
</body>
</html>