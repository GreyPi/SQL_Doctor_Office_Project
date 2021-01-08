<?php include ('head.php');?>
<?php include ('connData.txt');?>
<?php
$sql = " SELECT
    p.FirstName,
    p.LastName,
    s.SpecialtyName
FROM
    Person AS p, 
    Doctor AS d,
    Specialty AS s,
    DoctorSpecialty AS ds
WHERE
    p.PersonID = d.PersonID 
    AND d.DoctorID = ds.DoctorID 
    AND ds.SpecialtyID = s.SpecialtyID;";
$result = mysqli_query($conn,$sql);
print "<pre>";
print "<table border=1>";
print "<tr><td>First Name</td><td> Last Name </td>";
while($row = mysqli_fetch_array($result, MYSQLI_BOTH))
{
print "\n";
print "<tr><td>$row[FirstName] </td><td> $row[LastName]  </td></tr>	";
}
print "</table>";
print "</pre>";
mysqli_free_result($result);
mysqli_close($conn);
?>