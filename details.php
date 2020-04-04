<?php
    require_once 'load.php';

    if(isset($_GET['id'])) {
        $product_table = 'tbl_product';
        $id = $_GET['id'];
        $col = 'product_id';


        $getItem = getSingleItem($product_table, $col, $id);
    }

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <title>Details Page</title>
</head>
<body>
    <h1>Sportchek</h1>
    <?php include 'templates/header.php';?>
    <?php while($item = $getItem->fetch(PDO::FETCH_ASSOC)):?>
        <div class="sports-item">
        <img src="images/<?php echo $item["product_img"];?>" alt="<?php echo $item['product_img'];?>"/>
        <h2><?php echo $item['product_name']; ?></h2>
        <h3>Rate : <?php echo $item['product_rate']; ?></h3>
        <h4>Color & Material : <?php echo $item['product_color']; ?></h4>
        <h5>Price : <?php echo $item['product_price']; ?></h5>
        <p>Description : <?php echo $item['product_description'];?></p>
        <a href="index.php">Back!</a>
        </div>
    <?php endwhile;?>
    <?php include 'templates/footer.php';?>
</body>
</html>
