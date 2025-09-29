<?php
header("Content-Type: application/json");
require "db.php";

$method = $_SERVER['REQUEST_METHOD'];

switch ($method) {
    case 'GET':
        if (isset($_GET['id'])) {
            $id = intval($_GET['id']);
            $result = $conn->query("SELECT * FROM products WHERE id=$id");
            echo json_encode($result->fetch_assoc());
        } else {
            $result = $conn->query("SELECT * FROM products");
            echo json_encode($result->fetch_all(MYSQLI_ASSOC));
        }
        break;

    case 'POST':
        $data = json_decode(file_get_contents("php://input"), true);
        $stmt = $conn->prepare("INSERT INTO products (name, price, description, category, image) VALUES (?, ?, ?, ?, ?)");
        $stmt->bind_param("sdsss", $data['name'], $data['price'], $data['description'], $data['category'], $data['image']);
        $stmt->execute();
        echo json_encode(["id" => $stmt->insert_id]);
        break;

    case 'PUT':
        if (isset($_GET['id'])) {
            $id = intval($_GET['id']);
            $data = json_decode(file_get_contents("php://input"), true);
            $stmt = $conn->prepare("UPDATE products SET name=?, price=?, description=?, category=?, image=? WHERE id=?");
            $stmt->bind_param("sdsssi", $data['name'], $data['price'], $data['description'], $data['category'], $data['image'], $id);
            $stmt->execute();
            echo json_encode(["updated" => $stmt->affected_rows]);
        }
        break;

    case 'DELETE':
        if (isset($_GET['id'])) {
            $id = intval($_GET['id']);
            $conn->query("DELETE FROM products WHERE id=$id");
            echo json_encode(["deleted" => $conn->affected_rows]);
        }
        break;
}
?>
