<?php include ('head.php');?>
<?php include ('connData.txt');?>
<?php
$sql = " SELECT p.FirstName, p.LastName
FROM
Person AS p,
Doctor AS d,
PatientVisit AS pv,
PVisitPrescription AS pvd,
Prescription AS pr
WHERE
p.PersonID = d.PersonID 
AND d.DoctorID = pv.DoctorID 
AND pv.VisitID = pvd.VisitID 
AND pvd.PrescriptionID = pr.PrescriptionID 
AND pr.PrescriptionName = 'Vicodin';";
$result = mysqli_query($conn,$sql);
//$row = mysqli_fetch_row($result);
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