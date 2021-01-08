<?php include ('head.php');?>
<?php include ('connData.txt');?>
<?php
$sql = " SELECT DISTINCT
        `pe2`.`FirstName` AS `firstname`,
        `pe2`.`LastName` AS `lastname`,
        `pe2`.`PhoneNumber` AS `PhoneNumber`
    FROM
        ((((`person` `pe`
        JOIN `doctor` `d` ON ((`pe`.`PersonID` = `d`.`PersonID`)))
        JOIN `patientvisit` `pv` ON ((`d`.`DoctorID` = `pv`.`DoctorID`)))
        JOIN `patient` `pa` ON ((`pa`.`PatientID` = `pv`.`PatientID`)))
        JOIN `person` `pe2` ON ((`pe2`.`PersonID` = `pa`.`PersonID`)))
    WHERE
        ((`pe`.`FirstName` = 'Robert')
            AND (`pe`.`LastName` = 'Stevens'))
;";
$result = mysqli_query($conn,$sql);
print "<pre>";
print "<table border=1>";
print "<tr><td>First Name</td><td> Phone Number </td>";
while($row = mysqli_fetch_array($result, MYSQLI_BOTH))
{
print "\n";
print "<tr><td>$row[FirstName] </td><td> $row[PhoneNumber]  </td></tr>	";
}
print "</table>";
print "</pre>";
mysqli_free_result($result);
mysqli_close($conn);
?>