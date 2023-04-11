<?php
error_reporting(E_ALL & ~E_WARNING & ~E_NOTICE);
session_start();
include '../connection/config.php';
include '../repository/BookService.php';
$conn = getCon();
if(!empty($_POST["option"])) {

    if ($_POST["option"]=="All"){

        $books = new BookService();
        $result=$books->getBooksByIsbn();

        $arrAll = array();

        foreach ($result as $row){
            $objArray = array('bookId'=>$row[0],'isbn'=>$row[1],'name'=>$row[2],'edition'=>$row[3],'price'=>$row[4],'year'=>$row[5],
                'pub'=>$row[6],'imgUrl'=>$row[7],'author'=>$row[8]);
            array_push($arrAll,$objArray);
        }
        echo json_encode($arrAll);
    }
    else {
        $books = new BookService();
        $result = $books->getBooksByCategory();
        $arrAll = array();
        $count = $result->rowCount();
        $arr = array();
        if ($count > 0) {
            foreach ($result as $row) {
                $objArray = array('bookId' => $row[0], 'isbn' => $row[1], 'name' => $row[2], 'edition' => $row[3], 'price' => $row[4], 'year' => $row[5],
                    'pub' => $row[6], 'imgUrl' => $row[7], 'author' => $row[8]);
                array_push($arrAll, $objArray);
            }
            echo json_encode($arrAll);
         }else{

        }
    }
}

?>
