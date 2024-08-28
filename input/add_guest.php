<?php
// Database connection parameters
$servername = "localhost";
$username = "your_username";
$password = "your_password";
$dbname = "hotel_yotei";

try {
    // Create connection
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // Set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    // Prepare SQL and bind parameters
    $stmt = $conn->prepare("INSERT INTO Guests (FirstName, LastName, PersonCount, CheckInDate, CheckOutDate)
    VALUES (:firstName, :lastName, :personCount, :checkInDate, :checkOutDate)");
    
    $stmt->bindParam(':firstName', $firstName);
    $stmt->bindParam(':lastName', $lastName);
    $stmt->bindParam(':personCount', $personCount);
    $stmt->bindParam(':checkInDate', $checkInDate);
    $stmt->bindParam(':checkOutDate', $checkOutDate);

    // Insert the values from the form
    $firstName = $_POST['firstName'];
    $lastName = $_POST['lastName'];
    $personCount = $_POST['personCount'];
    $checkInDate = $_POST['checkInDate'];
    $checkOutDate = $_POST['checkOutDate'];
    
    // Execute the query
    $stmt->execute();
    
    echo "New guest added successfully!";
} catch(PDOException $e) {
    echo "Error: " . $e->getMessage();
}

// Close the connection
$conn = null;
?>
