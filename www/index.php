<html>

<?php include 'template.php' ?>

<div id="content" align="center">
    <h1>Add a new sales person</h1>


    <form action="addsalesperson.php" method="post">
        ID:
        <input type="text" name="snum">
        <br><br>
        Name:
        <input type="text" name="name">
        <br><br>
        City:
        <input type="text" name="city">
        <br><br>
        Commission:
        <input type="number" step="0.01" name="comm">
        <br><br>
        <input type="submit" value="Submit">
    </form>
</div>

</body>

</html>