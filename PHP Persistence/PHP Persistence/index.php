<html>
<head>
<title>Car Search</title>		<!-- Create a form, pass info from it to search_cars.php -->
</head>
<body>
<form action="search_cars.php" method="POST">
<table style="color:blue;font-color:green">
<tr>
<td><b>Car Manufacturer:</b></td>
<td><input type="text" name="manufacturer"></td>
</tr>
<tr>
<td><b>Milage:</b></td>
<td><input type="text" name="milage"></td>
</tr>
<tr>
<td><b>Registered date:</b></td>
<td><input type="text" name="reg_date"></td>
</tr>
<td></td>
<td align="right"><input type="submit" value="Find"></td>
</tr>
</table>
</form>
</body>
</html>