<?php
  $id = $_GET['id_category'];
  //Create a connection to the database
  $mysqli = new mysqli("localhost", "root", "12345", "eclinicnew");

  if($mysqli->connect_error) 
     die('Connect Error (' . mysqli_connect_errno() . ') '. mysqli_connect_error());

  //The default result to be output to the browser
  $result = '{"success":false}';
 
  //Select everything from the table containing the marker informaton
  $query = "SELECT * FROM data_clinic, data_category WHERE data_clinic.category=data_category.id_category AND data_clinic.category='$id'";
 
  //Run the query
  $dbresult = $mysqli->query($query);

  //Build an array of markers from the result set
  $markers = array();
 
  while($row = $dbresult->fetch_array(MYSQLI_ASSOC)){
 
    $markers[] = array(
      'id' => $row['id'],
      'name' => $row['name'],
      'lat' => $row['lat'],
      'lng' => $row['long'],
      'name_category' => $row['name_category'],
      'name_category_id' => $row['name_category_id'],
      'address' => $row['address']
    );
  }
 
  //If the query was executed successfully, create a JSON string containing the marker information
  if($dbresult){
    $result = '{"success":true, "markers":' . json_encode($markers) . '}';        
  }
  else
  {
    $result = "{'success':false}";
  }
 
  //Set these headers to avoid any issues with cross origin resource sharing issues
  header('Access-Control-Allow-Origin: *');
  header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
  header('Access-Control-Allow-Headers: Content-Type,x-prototype-version,x-requested-with');
 
  //Output the result to the browser so that our Ionic application can see the data
  echo json_encode($markers);
 
?>
