<?php
class Product {
    private $conn;

    public $product_table = 'tbl_product';
    public $category_table = 'tbl_category';
    public $product_category_linking_table = 'tbl_cat_pro';

    public function __construct($db) {
        $this->conn = $db;
    }

    public function getItemByCategory($category_name) {
        $query = 'SELECT
        p.*, GROUP_CONCAT(c.category_name) AS category_name
    FROM
        '.$this->product_table.' p
    LEFT JOIN '.$this->product_category_linking_table.' link ON
        link.product_id = p.ID
    LEFT JOIN '.$this->category_table.' c ON
        c.category_id = link.category_id
    WHERE 
        c.category_name = "'.$category_name.'"
    GROUP BY 
        p.product_id';

        $stmt = $this->conn->prepare($query);

        $stmt->execute();

        return $stmt;

    }

    function getItemById($id) {
        $this->id = $id;

        $query = 'SELECT * FROM '.$this->product_table.' WHERE product_id = '.$id;

        $stmt = $this->conn->prepare($query);

        $stmt->execute();

        return $stmt;
    }

    public function getProducts() {
        $query = 'SELECT
        p.*, GROUP_CONCAT(c.category_name) AS category_name
    FROM
        '.$this->product_table.' p
    LEFT JOIN '.$this->product_category_linking_table.' link ON
        link.product_is = p.ID
    LEFT JOIN '.$this->category_table.' c ON
        c.category_id = link.category_id
    GROUP BY 
        p.product_id';

        $stmt = $this->conn->prepare($query);

        $stmt->execute();

        return $stmt;
    }

}