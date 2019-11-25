<?php include 'template.php' ?>

<?php
$snum = $_POST["snum"];
$name = $_POST["name"];
$city =  $_POST["city"];
$comm = $_POST["comm"];
$query = "insert into salespeople (snum, sname, city, comm) VALUES (?, ?, ?, ?)";
$stmt = mysqli_prepare($db_connect, $query);

mysqli_stmt_bind_param($stmt, "issd", $snum, $name, $city, $comm);

mysqli_stmt_execute($stmt);


echo "<h1>$name was added as a sales person!</h1>"

?>
<div id="content" align="center">
    <table border="1">
        <tr>
            <td>Name</td>
            <td>City</td>
            <td>Commission</td>
        </tr>
        <?php


        $query = "select * from salespeople";

        $res = @mysqli_query($db_connect, $query);


        if ($res) {
            while ($row = mysqli_fetch_array($res)) { ?>
                <tr>
                    <td><?php echo $row['sname']; ?></td>
                    <td><?php echo $row['city']; ?></td>
                    <td><?php echo $row['comm']; ?></td>
                </tr>
            <?php
                }
                ?>
    </table>
</div>
<?php

} else {
    echo "error";
    echo mysqli_error($db_connect);
}
mysqli_close($db_connect);
?>
