<?php
    require_once '../load.php';
    confirm_logged_in();

    $products = getAllProducts();
    
    if(!$products) {
        $message = 'failed to bring product info';
    }

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Product</title>
</head>
<body>
    <h2>Choose What item you want to edit!</h2>
    <?php echo !empty($message)? $message: ''; ?>
    <?php if($products):?>
    <table>
        <thead>
            <tr>
                <td>Product ID</td>
                <td>Product Name</td>
                <td>Product Rate</td>
                <td>Product Description</td>
                <td>Product Price</td>
                <td>Edit</td>
            </tr>
        </thead>
        <?php while($product = $products->fetch(PDO::FETCH_ASSOC)):?>
        <tbody>
            <tr>
                <td><?php echo $product['product_id'];?></td>
                <td><?php echo $product['product_name'];?></td>
                <td><?php echo $product['product_rate'];?></td>
                <td class="des"><?php echo $product['product_description'];?></td>
                <td><?php echo $product['product_price'];?></td>
                <td><a href="admin_edit_product.php?id=<?php echo $product['product_id'];?>">Edit</a></td>
            </tr>
        <?php endwhile;?>
        </tbody>
    </table>
        <?php endif;?>
</body>
</html>