<?php include 'template.php' ?>


<h1>Sales People</h1>

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