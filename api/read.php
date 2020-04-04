<?php

 ini_set('display_error', 1);

 header('Access-Control-Allow-Origin: *');
 header('Content-Type: application/json; charset=UTF-8');

 // include database and object file
include_once '../config/database.php';
include_once '../objects/product.php';

// instantiate database and movie object
$database = new Database();
$db = $database->getConnection();
$product = new product($db);

if (isset($_GET['id'])) {
    $stmt = $product->getProductById($_GET['id']);
} else { 
    $stmt = $movie->getProducts();
}

if (isset($_GET['genre_name'])) {
    $stmt = $movie->getMovieByGenre($_GET['genre_name']);
} else {
    $stmt = $movie->getMovies();
}

$num = $stmt->rowCount();

if($num>0) {
    $results = array();

    while($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        $single_movie = $row;
        $results[] = $single_movie;
        
        
    }
    echo json_encode($results, JSON_PRETTY_PRINT);
 } else {
        echo json_encode(
            array(
                'message' => 'No Movie Found.'
            )
            );

    
}