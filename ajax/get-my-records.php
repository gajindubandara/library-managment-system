<?php
error_reporting(E_ALL & ~E_WARNING & ~E_NOTICE);
session_start();
if (isset($_POST['query'])) {
    include '../connection/config.php';
    include '../repository/RecordService.php';
    $recordService = new RecordService();

    if ($_POST['query'] == null) {
        $id = $_SESSION["M_ID"];
        echo '<script>console.log(' . $id . ')</script>';
        $conn = getCon();
        $result = $recordService->getMyRecords($id);
        $count = $result->rowCount();
        getMyRecordsTable($count, $result);
    }
}

function getMyRecordsTable($count, $result)
{
    if ($count > 0) {
        echo '
            <div class="row justify-content-md-center">
                <div class="col-md-12"><form method="post">';
        echo '<table class="table" style="border:solid #dee2e6 1px;">';
        echo '<thead class="thead-dark">';
        echo '<tr>
                     <th scope="col">Record ID</th>
                     <th scope="col">Book ID</th>
                     <th scope="col">Borrowed Date</th>
                     <th scope="col">Due Date</th>
                     <th scope="col">Return Date</th>
                     <th scope="col">Penalty (Rs.)</th>
                     <th scope="col">Status</th>
                     

              </tr>';
        echo '</thead>';
        foreach ($result as $row) {

            echo '<tbody>';
            echo '<tr class="rw">';
            echo '<td style="vertical-align: middle;"> <input type="hidden"  value="' . $row["id"] . '">' . $row["id"] . '</td>';
            echo '<td style="vertical-align: middle;"> <input type="hidden"  value="' . $row["book_id"] . '">' . $row["book_id"] . '</td>';
            echo '<td style="vertical-align: middle;"> <input type="hidden" value="' . $row["borrow_date"] . '">' . $row["borrow_date"] . '</td>';
            echo '<td style="vertical-align: middle;"> <input type="hidden" value="' . $row["due_date"] . '">' . $row["due_date"] . '</td>';
            if ($row["return_date"] == null) {
                $rDate = "Not returned";
            } else {
                $rDate = $row["return_date"];
            }
            echo '<td style="vertical-align: middle;"> <input type="hidden" value="' . $rDate . '">' . $rDate . '</td>';

            $dueDate = $row["due_date"]; // Date string to check
            $returnDate = $row["return_date"];
            $dueTimestamp = strtotime($dueDate); // Convert date string to timestamp
            $currentTimestamp = time(); // Get current timestamp
            if ($row["return_date"] != null) {
                $returnTimestamp = strtotime($returnDate); // Convert date string to timestamp
            }

            if ($row["return_date"] == null) {
                if ($dueTimestamp < $currentTimestamp) {
                    $status = "Penalty added";
                    $secondsDiff = abs($currentTimestamp - $dueTimestamp); // Calculate difference in seconds
                    $penalty = floor($secondsDiff / (60 * 60 * 24)) * 100;
                } else {
                    $status = "Not returned yet";
                }
            } else {
                if ($returnDate < $dueDate) {
                    $status = "Returned";
                } else {
                    if ($row["penalty"] != null) {
                        $status = "Penalty paid & Returned ";
                    } else {
                        $status = "Penalty paid, Not Returned";
                    }
                }
            }

            if ($row["penalty"] != null) {
                $penalty = $row["penalty"];
            }
            echo '<td style="vertical-align: middle;"> <input type="hidden"  value="' . $penalty . '">' . $penalty . '</td>';
            echo '<td style="vertical-align: middle;"> <input type="hidden" value="' . $status . '">' . $status . '</td>';
            echo '</tr>';
            echo '</tr>';
            echo ' </tbody>';
        }
        echo '</table>';
        echo '</form></div> </div>';
    } else {
        echo "<span  style='color:red; margin-left: auto; margin-right: auto; display: table; margin-top: 50px;' class='features CardBgCol' > No available borrowing records</span>";
    }
}

?>


