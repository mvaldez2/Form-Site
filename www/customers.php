<?php include 'template.php' ?>

<h1>Customers</h1>

<div id="content" align="center">
    <table border="1">
        <tr>
            <td>Name</td>
            <td>City</td>
            <td>Rating</td>
            <td>Sales Person</td>
        </tr>
        <?php
        $query = "select * from customers";
        $res = @mysqli_query($db_connect, $query);

        if ($res) {
            while ($row = mysqli_fetch_array($res)) { ?>
                <tr>
                    <td><?php echo $row['cname']; ?></td>
                    <td><?php echo $row['city']; ?></td>
                    <td><?php echo $row['rating']; ?></td>
                    <td><?php echo $row['sname']; ?></td>
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