<?php
session_start();
if(isset($_POST['query'])) {
    if($_POST['query'] == null) {
        include '../connection/config.php';
        $conn = getCon();
        $query = "SELECT `id`, `book_id`, `borrower_id`, `borrow_date`, `due_date`, `return_date`, `penalty` FROM `records` WHERE return_date IS NOT NULL ORDER BY due_date ASC ";
        $result = $conn->query($query);
        $count = $result->rowCount();

        if ($count > 0) {
            echo '
            <div class="row justify-content-md-center">
                <div class="col-md-12"><form method="post">';
            echo '<table class="table" style="border:solid #dee2e6 1px;">';
            echo '<thead class="thead-dark">';
            echo '<tr>
                     <th scope="col">Record ID</th>
                     <th scope="col">Member ID</th>
                     <th scope="col">Book ISBN</th>
                     <th scope="col">Borrowed Date</th>
                     <th scope="col">Due Date</th>
                     <th scope="col">Return Date</th>
                     <th scope="col">Penalty</th>
              </tr>';
            echo '</thead>';
            foreach ($result as $row) {

                echo '<tbody>';
                echo '<tr class="rw">';
                echo '<td style="vertical-align: middle;"> <input type="hidden"  value="' . $row[0] . '">' . $row[0] . '</td>';
                echo '<td style="vertical-align: middle;"> <input type="hidden"  value="' . $row[2] . '">' . $row[2] . '</td>';
                echo '<td style="vertical-align: middle;"> <input type="hidden" value="' . $row[1] . '">' . $row[1] . '</td>';
                echo '<td style="vertical-align: middle;"> <input type="hidden" value="' . $row[3] . '">' . $row[3] . '</td>';
                echo '<td style="vertical-align: middle;"> <input type="hidden"  value="' . $row[4] . '">' . $row[4] . '</td>';
                echo '<td style="vertical-align: middle;"> <input type="hidden"  value="' . $row[5] . '">' . $row[5] . '</td>';
                if($row[6]==null){
                    $penalty="None";
                }else{$penalty=$row[6];}
                echo '<td style="vertical-align: middle;"> <input type="hidden"  value="' . $penalty. '">' . $penalty . '</td>';
                echo '</tr>';
                echo '</tr>';
                echo ' </tbody>';
            }
            echo '</table>';
            echo '</form></div> </div>';
        }
        else {
            echo "<span  style='color:red; margin-left: auto; margin-right: auto; display: table; margin-top: 50px;' class='features CardBgCol' > No available records</span>";
        }
    }
    else {
        include '../connection/config.php';
        $conn = getCon();
        $query = "SELECT `id`, `book_id`, `borrower_id`, `borrow_date`, `due_date`, `return_date`, `penalty` FROM `records` WHERE return_date IS NOT NULL AND borrower_id LIKE '{$_POST['query']}%' LIMIT 100";
        $result = $conn->query($query);
        $count = $result->rowCount();

        if ($count > 0) {
            echo '
            <div class="row justify-content-md-center">
                <div class="col-md-12"><form method="post">';
            echo '<table class="table" style="border:solid #dee2e6 1px;">';
            echo '<thead class="thead-dark">';
            echo '<tr>
                     <th scope="col">Record ID</th>
                     <th scope="col">Member ID</th>
                     <th scope="col">Book ISBN</th>
                     <th scope="col">Borrowed Date</th>
                     <th scope="col">Due Date</th>
                     <th scope="col">Return Date</th>
                     <th scope="col">Penalty</th>
              </tr>';
            echo '</thead>';
            foreach ($result as $row) {

                echo '<tbody>';
                echo '<tr class="rw">';
                echo '<td style="vertical-align: middle;"> <input type="hidden"  value="' . $row[0] . '">' . $row[0] . '</td>';
                echo '<td style="vertical-align: middle;"> <input type="hidden"  value="' . $row[2] . '">' . $row[2] . '</td>';
                echo '<td style="vertical-align: middle;"> <input type="hidden" value="' . $row[1] . '">' . $row[1] . '</td>';
                echo '<td style="vertical-align: middle;"> <input type="hidden" value="' . $row[3] . '">' . $row[3] . '</td>';
                echo '<td style="vertical-align: middle;"> <input type="hidden"  value="' . $row[4] . '">' . $row[4] . '</td>';
                echo '<td style="vertical-align: middle;"> <input type="hidden"  value="' . $row[5] . '">' . $row[5] . '</td>';
                if($row[6]==null){
                    $penalty="None";
                }else{$penalty=$row[6];}
                echo '<td style="vertical-align: middle;"> <input type="hidden"  value="' . $penalty. '">' . $penalty . '</td>';
                echo '</tr>';
                echo '</tr>';
                echo ' </tbody>';
            }
            echo '</table>';
            echo '</form></div> </div>';
        }
        else {
            echo "<span  style='color:red; margin-left: auto; margin-right: auto; display: table; margin-top: 50px;' class='features CardBgCol' > No available records for this member ID</span>";
        }
    }
}

?>


