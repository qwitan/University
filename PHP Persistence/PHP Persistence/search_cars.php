<?php
ini_set("display_errors", "On");

require_once("CarAR.php");
require_once("CarAR_IMP.php");

$CarAR_IMP = new CarAR_IMP();

$manufacturer = "";     //initialize the variables for search
$milage = "";
$reg_date = "";

if(isset($_POST["manufacturer"])){              //if a parameter was set in the form in index.php, assign it to a variable
    $manufacturer = $_POST["manufacturer"];
}
if(isset($_POST["milage"])){
    $milage = $_POST["milage"];
}
if(isset($_POST["reg_date"])){
    $reg_date = $_POST["reg_date"];
}
$Cars = $CarAR_IMP->searchCars($manufacturer, $milage, $reg_date);      //create array Cars, insert search results into it

?>

<html>
<head>
<title>Search Results</title>
<style>
table, th, td {
    border: 1px solid black;
}
</style>
</head>
<body>
<table>
<tr>
<th>ID Car</th>
<th>Manufacturer</th>
<th>Milage</th>
<th>Registration Date</th>
</tr>
<?php   //a new row for each entry in the array
foreach($Cars as $Car){
    echo "<tr>\n<td>".$Car->getIdCar()."</td>\n";
    echo "<td>".$CarAR_IMP->getManufacturer($Car)."</td>\n";
    echo "<td>".$Car->getMilage()."</td>\n";
    echo "<td>".$Car->getRegisterDate()."</td>\n";
}
?>
</table>
</body>
</html>
<a href="<?php echo $_SERVER["HTTP_REFERER"]; ?>">Back</a>
