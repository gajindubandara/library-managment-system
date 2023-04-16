<?php
session_start();
include 'connection/config.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>SACK-LMS</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="shortcut icon" type="image/jpg" href="Images/favicon.ico"/>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" />
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/style.css" />

</head>
<body id="body-pd">
<?php include("Includes/navbar.php") ?>

<!--Container Main start-->
<div class="main container">
    <div class="college-data">
        <img src="./Images/lib.png" style="width: 10%">
        <h1 style="padding-top: 14px;padding-left: 20px"><b> St. Anthony's College Kandy - Library Management System</b></h1>
    </div>

    <h3 style="margin-top: 60px; padding-left: 18%">Browse Books</h3>
        <div class="col-md-8 offset-md-2 mt-1">
            <div class="input-group mb-3">
                <input type="text" id="search" class="form-control" placeholder="Search books by name..." aria-label="Recipient's username">
                <div class="input-group-append">
                    <button class="btn btn-danger" id="searchBtn" onclick="clearInputField(),onSelect('All')" hidden ><i id="searchIcon" class="fa fa-close"></i></button>
                </div>
            </div>
            <button class="btn btn-success" id="categoryBtn" style="margin: auto" ><i id="catIcon" class="fa fa-arrow-down" style="margin-right: 5px"> </i> Filter by category</button>
        </div>

    <form action="" method="post" style="margin-top: 20px">
        <ul class="ks-cboxtags" style="display: none; transition: all 0.5s ease-in-out;" id="categories">
            <li><input type="checkbox" id="checkboxOne" value="All" onclick="onSelect('All')" name="All" checked><label for="checkboxOne">All</label></li>
            <li><input type="checkbox" id="checkboxTwo" value="Science" onclick="onSelect('Science')"><label for="checkboxTwo">Science</label></li>
            <li><input type="checkbox" id="checkboxThree" value="Mathematics" onclick="onSelect('Mathematics')"><label for="checkboxThree">Mathematics</label></li>
            <li><input type="checkbox" id="checkboxFour" value="Social Studies" onclick="onSelect('Social Studies')"><label for="checkboxFour">Social Studies</label></li>
            <li><input type="checkbox" id="checkboxEighteen" value="Religion and Theology" onclick="onSelect('Religion and Theology')"><label for="checkboxEighteen">Religion and Theology</label></li>
            <li><input type="checkbox" id="checkboxTen" value="English" onclick="onSelect('English')"><label for="checkboxTen">English</label></li>
            <li><input type="checkbox" id="checkboxFive" value="Language Arts" onclick="onSelect('Language Arts')"><label for="checkboxFive">Language Arts</label></li>
            <li><input type="checkbox" id="checkboxSix" value="Business and Careers" onclick="onSelect('Business and Careers')"><label for="checkboxSix">Business and Careers</label></li>
            <li><input type="checkbox" id="checkboxSeven" value="Health and Physical Education" onclick="onSelect('Health and Physical Education')"><label for="checkboxSeven">Health and Physical Education</label></li>
            <li><input type="checkbox" id="checkboxEight" value=" Technology and Engineering" onclick="onSelect('Technology and Engineering')"><label for="checkboxEight">Technology and Engineering</label></li>
            <li><input type="checkbox" id="checkboxNine" value="Arts and Humanities" onclick="onSelect('Arts and Humanities')"><label for="checkboxNine">Arts and Humanities</label></li>
            <li><input type="checkbox" id="checkboxEleven" value="World Languages" onclick="onSelect('World Languages')"><label for="checkboxEleven">World Languages</label></li>
            <li><input type="checkbox" id="checkboxTwelve" value="Civics and Government" onclick="onSelect('Civics and Government')"><label for="checkboxTwelve">Civics and Government</label></li>
            <li><input type="checkbox" id="checkboxThirteen" value="Media and Communications" onclick="onSelect('Media and Communications')"><label for="checkboxThirteen">Media and Communications</label></li>
            <li><input type="checkbox" id="checkboxFourteen" value="Psychology and Sociology" onclick="onSelect('Psychology and Sociology')"><label for="checkboxFourteen">Psychology and Sociology</label></li>
            <li><input type="checkbox" id="checkboxFifteen" value="Philosophy and Ethics" onclick="onSelect('Philosophy and Ethics')"><label for="checkboxFifteen">Philosophy and Ethics</label></li>
            <li><input type="checkbox" id="checkboxSixteen" value="Education and Teaching" onclick="onSelect('Education and Teaching')"><label for="checkboxSixteen">Education and Teaching</label></li>
            <li><input type="checkbox" id="checkboxSeventeen" value="Law and Legal Studies" onclick="onSelect('Law and Legal Studies')"><label for="checkboxSeventeen">Law and Legal Studies</label></li>
        </ul>
    </form>
    <div class="book-section-container" id="sectionBelow" style="transition: all 0.5s ease-out;" >
        <div class="book-section section-a">
            <div class="card-wrapper" id="result">
                <div id="bookCards"></div>
            </div>
            <div id="noData" class="noData">No Available Books!</div>
        </div>
    </div>

    <!--popup template for view book-->
    <div id="viewModal" class="modal fade">
        <div class="modal-dialog">
            <form method="post" id="viewForm">

                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    </div>
                    <div class="modal-body">
                        <div class="card mb-3" style="max-width: 540px;">
                            <div class="row no-gutters">
                                <div class="col-md-4">
                                    <img src="https://cdn.cp.adobe.io/content/2/rendition/9231d555-36b8-43cf-9270-e0adfb6a9564/artwork/ea997594-eee5-44dd-9a88-bc5fd31abb80/version/0/format/jpg/dimension/width/size/400" class="card-img" alt="..." style="margin: 20px 10px">
                                </div>
                                <div class="col-md-8">
                                    <div class="card-body" style="margin-left: 10px">
                                        <h5 class="card-title">Harry Potterr</h5>
                                        <p class="card-text"><small class="text-muted">By blah</small></p>
                                        <p class="card-text">Edition:</p>
                                        <p class="card-text">ISBN:</p>
                                        <p class="card-text">Publisher:</p>
                                        <p class="card-text">Year:</p>
                                        <p class="card-text">Category:</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <input type="hidden" name="bookid" id="bookid"/>
                        <input type="hidden" name="action" id="action" value=""/>

                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<!--Container Main end-->
<script src="js/navbar.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<!--<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>-->

<!-- Optional JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/noUiSlider/14.0.3/nouislider.min.js"></script>

<!--Mustache.js-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/mustache.js/2.3.0/mustache.min.js"></script>

<!--book card template    -->
<script type="text/html" id="templateBookCards">
    <div class="row" style="padding-left: 40px">
        {{#data}}
        <div class="card">
            <img src="{{imgUrl}}" alt="Book" />
            <h3><b>{{name}}</b></h3>
            <p><b>by {{author}}</b></p>
            <p style="margin:0px">{{isbn}}</p>
            <p style="margin:0px">{{pub}}</p>
            <p style="margin:0px">{{year}}</p>
        </div>
        {{/data}}
    </div>
</script>
<script>
    // show hide category section
    const categoryIcon =document.getElementById("catIcon");
    const toggleBtn = document.getElementById("categoryBtn");
    const section = document.getElementById("categories");
    const sectionBelow = document.getElementById("sectionBelow");

    toggleBtn.addEventListener("click", () => {
        if (section.style.display === "none") {
            categoryIcon.className = "fa fa-arrow-up";
            section.style.display = "block";
            setTimeout(() => {
                section.style.opacity = 1;
                section.style.transform = "translateY(0)";
                sectionBelow.style.transform="translateY(-20px)"
                // sectionBelow.style.marginTop = section.offsetHeight + "px";
            }, 50);
        } else {
            categoryIcon.className = "fa fa-arrow-down";
            section.style.opacity = 0;
            section.style.transform = "translateY(-20px)";
            sectionBelow.style.transform="translateY(0)"
            sectionBelow.style.marginTop = "0";
            setTimeout(() => {
                section.style.display = "none";
            }, 500);
        }
    });


    $(document).ready(function(){
        // set clicked checkbox active
        $('input:checkbox').click(function() {
            $('input:checkbox').not(this).prop('checked', false);
        });

        //search bar function
        $("#search").keyup(function () {
            // $("#searchIcon").removeClass("fa-search").addClass("fa-close");
            $("#searchBtn").prop('hidden',false);
            $("#checkboxOne").prop("checked", false);

            var query = $(this).val();
            if (query != "") {
                $.ajax({
                    url: 'ajax/get-search-results.php',
                    method: 'POST',
                    data: {
                        query: query
                    },
                    success: function (data) {
                        $('#bookCards').html(data);
                        $('#bookCards').css('display', 'block');
                        $('#viewTable').css('display', 'block');

                    }
                });

            } else {
                $('#bookCards').css('display', 'none');
            }
        });
    });

    //hide no data tag
    $(function () {
        $('#noData').hide();
        onSelect("All");
    });

    //clearing search bar
    function clearInputField() {
        $("#search").val("")
        $("#searchBtn").prop('hidden',true);
        // $("#searchIcon").removeClass("fa-close").addClass("fa-search");
        $("#checkboxOne").prop("checked", true);

    }

    //getting data and display
    function onSelect(field){
        clearInputField();
        console.log(field);
        $.ajax({
            url: "ajax/get-book-by-category.php",
            data: 'option=' + field,
            type: "POST",
            // data: "query=",
            success: function (data) {
                // console.log(data);
                let obj ;
                try{
                    obj = JSON.parse(data);
                    $("#noData").hide();
                }catch(err){
                    console.log("null")
                    $("#noData").show();
                }
                let res = [];
                for(let i in obj)
                    res.push(obj[i]);
                console.log(res);

                let content = Mustache.render(
                    $('#templateBookCards').html(), { 'data': res });
                $('#bookCards').html(content);
            }
        });
    }
</script>
<?php include 'Includes/footer.php' ?>
</body>
</html>
