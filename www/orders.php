<?php include 'template.php' ?>
<h1>Orders</h1>

<div id="content" align="center">
    <table border="1">
        <tr>
            <td>Order Number</td>
            <td>Amount</td>
            <td>Date</td>
            <td>Sales Person</td>
            <td>Customer</td>
        </tr>
        <?php
        
        $query = "select * from orders";
        $res = @mysqli_query($db_connect, $query);

        if ($res) {
            while ($row = mysqli_fetch_array($res)) { ?>
                <tr>
                    <td><?php echo $row['onum']; ?></td>
                    <td><?php echo $row['amot']; ?></td>
                    <td><?php echo $row['odate']; ?></td>
                    <td><?php echo $row['sname']; ?></td>
                    <td><?php echo $row['cname']; ?></td>
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

