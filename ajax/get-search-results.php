<?php
error_reporting(E_ALL & ~E_WARNING & ~E_NOTICE);
session_start();
if (isset($_POST['query'])) {
    include '../connection/config.php';
    include '../repository/BookService.php';
    $bookService = new BookService();


        $result = $bookService->getSearchedBooks();
        $count = $result->rowCount();
        getBookCard($count, $result);

}

function getBookCard($count, $result)
{
    if ($count > 0) {
        echo'<div class="row" style="padding-left: 40px">';
        foreach ($result as $row) {
            echo '   <div class="card">
            <img src="'.$row[7].'" alt="Book" />
            <h3><b>'.$row[2].'</b></h3>
            <p><b>by '.$row[8].'</b></p>
            <p style="margin:0px">'.$row[1].'</p>
            <p style="margin:0px">'.$row[6].'</p>
            <p style="margin:0px">'.$row[5].'</p>
        </div>';
        }
        echo '</div>';
    } else {
        echo "<span  style='color:red; margin-left: auto; margin-right: auto; display: table; margin-top: 50px;' class='features CardBgCol' > No Available Books!</span>";
    }
}

?>


