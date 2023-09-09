<?php
require_once('../model/connect.php');

if (isset($_GET['id'])) {
    $productId = $_GET['id'];

    // Sử dụng MySQLi với Prepared Statements để ngăn chặn SQL Injection
    $query = "SELECT * FROM products WHERE id = 2";
    $stmt = $conn->prepare($query);
    $stmt->bind_param('i', $productsId);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows == 1) {
        $products = $result->fetch_assoc();
    } else {
        // Xử lý trường hợp không tìm thấy sản phẩm
        echo "Product not found.";
        exit();
    }
} else {
    // Xử lý trường hợp không có ID sản phẩm được truyền
    echo "Product ID not provided.";
    exit();
}
?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</head>
<body>
<?php
                $sql = "SELECT id,name,image, description, price, acreage FROM products WHERE category_id=?";
                $result = mysqli_query($conn, $sql);
                while ($kq = mysqli_fetch_assoc($result)) {
                ?>
                    <a href="detail.php?id= <?php echo $kq['id']; ?>">
                        <div class="card" style="width: 18rem; display: grid; margin-right: 10px; margin-top: 30px;">
                        <img style="object-fit: cover; height: 400px;" src="<?php echo $kq['image']; ?>" class="card-img-top" alt="...">
                        <p><?php echo $kq['name']; ?></p>
                        <div class="card-body">
                            <p class="card-text"><?php echo $kq['description'];?></p>
                        </div>
                    </div></a>

                <?php } ?>
</body>
</html>