<?php
    require_once 'load.php';
    
    if(isset($_GET['filter'])) {
        $args = array(
            'tbl' => 'tbl_product',
            'tbl2' => 'tbl_category',
            'tbl3' => 'tbl_cat_pro',
            'col1' => 'product_id',
            'col2' => 'category_id',
            'col3' => 'category_name',
            'filter' => $_GET['filter'],
        );
    
        $getProduct = getItemsByFilter($args);
    
    } else {
        $product_table = 'tbl_product';
        $getProduct = getAll($product_table);
    }

    if(isset($_POST['submit'])) {
        $search = $_POST['search'];

        $search_result = searchKeyWord($search);
    }

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Landing Page</title>
</head>
<body>
    <h2>SportsChek!</h2>
    
    <form action="index.php" method="post">
        <input type="text" name="search" value="">
        <button type="submit" name="submit">Search</button>
    </form>
    <?php include 'templates/header.php';?>
    <?php while ($item = $getProduct->fetch(PDO::FETCH_ASSOC)): ?>    
        <div class="sports-item">
        <img src="images/<?php echo $item["product_img"]; ?>" alt="<?php echo $item['product_name']; ?>"/>
        <h2><?php echo $item['product_name']; ?></h2>
        <h4><?php echo $item['product_price']; ?></h4>
        <a href="details.php?id=<?php echo $item['product_id']; ?>">Read More</a>
        </div>
    <?php endwhile;?>
    <?php include 'templates/footer.php';?>
</html>