<?php
// session_start();

// if (!isset($_SESSION["password"])) {
//     header("Location:index.php");
// }
?>
<?php


include_once "include/header.php";
include "config.php";

?>
<!-- insert query -->

<?php
if (isset($_POST['submit'])) {
    $product_name = $_POST['product_name'];
    // $prodict_image1 = $_POST['prodict_image1'];
    // $product_image2 = $_POST['product_image2'];
    // $product_image3 = $_POST['product_image3'];
    $cat_id = $_POST['cat_id'];
   
    $product_description = $_POST['product_description'];
    $company_name = $_POST['company_name'];
    $price = $_POST['price'];
    $unit = $_POST['unit'];
    $user_email = $_POST['user_email'];
    $countries_name = $_POST['countries_name'];
    $state_name = $_POST['state_name'];
    $img1 = $_FILES["img1"]["name"];
    $fld1 = "logo/" . $img1;
    // $fld2 = "upload/" . $image;
    move_uploaded_file($_FILES["img1"]['tmp_name'], $fld1);
    $insert = "INSERT INTO `free-listing-product`(`product_name`,`product_description`,`cat_id`,`company_name`,`img1`,`unit`,`price`,`user_email`,`state_name`,`countries_name`) VALUES ('$product_name','$product_description','$cat_id','$company_name','$fld1','$unit','$price','$user_email','$state_name','$countries_name')";

    $query = mysqli_query($con, $insert);
}
?>








<!-- <style>
    input[type='file'] {
        opacity: 0
    }
</style> -->
<div class="right_col" role="main">
    <div class="container">
        
        <div class="row justify-content-center">
            <div class="col-10 bg-white p-4">
                <form action="" method="post" enctype="multipart/form-data" class="text-capitalize">
                    <h5>Add Your products </h5>
                    <img src="../image/logo.png" alt="">
                    <div class="row">
                        <div class="col-12 col-lg-6 my-2">
                            <label for="" class=" ">product name</label>
                            <input type="text" name="product_name" class="form-control" required>
                        </div>
                        <div class="col-12 col-lg-6 my-2">
                            <label for="" class=" ">company name</label>
                            <input type="text" name="company_name" class="form-control" required>
                        </div>
                        <div class="col-12 col-lg-6 my-2">
                            <label for=""> Product image </label>
                            <div class="row">
                                <div class="col-12">
                                    <div class="border">
                                        <input class="form-control" type="file" name="img1" id="formFile" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-lg-6 my-2">
                            <label for=""> Price </label>
                            <div class="row">
                                <div class="col-12">
                                    <div class="border">
                                        <input class="form-control" type="text" name="price" id="formFile" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-lg-6 my-2">
                            <label for=""> Unit </label>
                            <div class="row">
                                <div class="col-12">
                                    <div class="border">
                                        <input class="form-control" type="text" name="unit" id="formFile" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-lg-6 my-2 text-capitalize">
                            <label for=""> add Category</label>
                            <select name="cat_id" class="form-control" id="category-dropdown" required>
                                <option value="" >------ Select Category -----</option>
                                <?php
                                $sel = "SELECT * FROM `category`";
                                $query = mysqli_query($con, $sel);
                                while ($row = mysqli_fetch_array($query)) {
                                    // $cat_id = $row['cat_id'];
                                ?>
                                    <option value="<?php echo $row['cat_id'] ?>" class="text-capitalize"> <?php echo $row['cat_name']  ?> </option>
                                <?php } ?>
                            </select>
                        </div>



                        
                        <div class="col-12 col-lg-6 my-2">
                            <label for=""> User Email </label>
                            <input type="text" name="user_email" class="form-control" required>
                        </div>
                        <div class="col-12 col-lg-6 my-2 text-capitalize">
                            <label for=""> Add Countries</label>
                            <select name="countries_name" class="form-control" id="category-dropdown">
                                <option value="">------ Select Countries -----</option>
                                <?php
                                $sel = "SELECT * FROM `countries`";
                                $query = mysqli_query($con, $sel);
                                while ($row = mysqli_fetch_array($query)) {
                                    // $cat_id = $row['cat_id'];
                                ?>
                                    <option value="<?php echo $row['country_name'] ?>" class="text-capitalize"> <?php echo $row['country_name']  ?> </option>
                                <?php } ?>
                            </select>
                        </div>
                        <div class="col-12 col-lg-6 my-2 text-capitalize">
                            <label for=""> State Name</label>
                            <select name="state_name" class="form-control" id="category-dropdown">
                                <option value="">------ Select State Name -----</option>
                                <?php
                                $sel = "SELECT * FROM `states`";
                                $query = mysqli_query($con, $sel);
                                while ($row = mysqli_fetch_array($query)) {
                                    // $cat_id = $row['cat_id'];
                                ?>
                                    <option value="<?php echo $row['state_name'] ?>" class="text-capitalize"> <?php echo $row['state_name']  ?> </option>
                                <?php } ?>
                            </select>
                        </div>

                        <div class="col-12">
                            <hr>
                        </div>
                        <h5 class="mt-3">Product Details</h5>
                        <div class="col-12 my-2">
                            <label for="">Product Description</label>
                            <textarea name="product_description" rows="5" class="form-control" id=""></textarea>
                        </div>
                    </div>
                    <hr>
                    <!-- <div class="row my-4 border border-warning p-3 rounded">
                        <div class="col-12">
                            <h5>Company Details / optional details*</h5>
                            <div class="col-12 col-md-3 my-2">
                                <label for="">Company Name</label>
                                <input class="form-control   " name=" " type="text" id="formFile">
                            </div>
                            <div class="col-12 col-md-3 my-2">
                                <label for="">Company experience</label>
                                <input class="form-control   " name="company_experience" type="text" id="formFile">
                            </div>
                            <div class="col-12 col-md-3 my-2">
                                <label for="">Company Logo</label>
                                <div class="border">
                                    <input class="form-control   " name="company_experience" type="file" id="formFile">

                                </div>
                            </div>
                            <div class="col-12 col-md-3 my-2">
                                <label for="">Company Type</label>
                                <select name="" class="form-control" id="">
                                    <option value="">---- Select----</option>
                                </select>
                            </div>
                            <div class="col-12 col-md-12 my-2">
                                <label for="">Company decsription</label>
                               <textarea name="" class="form-control" id=""></textarea>
                            </div>
                        </div>
                    </div> -->
                    <input type="submit" name="submit" class="btn btn-danger  w-25">
                    <input type="reset" name="submit" class="btn btn-warning   ">
                </form>
            </div>
        </div>
    </div>
</div>


<script>
    $(document).ready(function() {
        $('#category-dropdown').on('change', function() {
            var cat_id = this.value;

            // alert(cat_id);

            $.ajax({
                url: "subcategory-by-category.php",
                type: "POST",
                data: {
                    cat_id: cat_id
                },
                cache: false,
                success: function(result) {
                    $("#sub-category-dropdown").html(result);
                    // alert(result);
                }
            });

        });
        // $('#sub-category-dropdown').on('change', function() {
        //     var sub_id = this.value;

        //     alert(sub_id);

        //     $.ajax({
        //         url: "subcategory-by-category.php",
        //         type: "POST",
        //         data: {
        //             sub_id: sub_id
        //         },
        //         cache: false,
        //         success: function(result) {
        //             $("#micro-category-dropdown").html(result);
        //             alert(result);
        //         }
        //     });

        // });
    });


    // $(document).ready(function() {
    //     $('#sub-category-dropdown').on('change', function() {
    //         var sub_id = this.value;

    //         // alert(sub_id);

    //         $.ajax({
    //             url: "subcategory-by-category.php",
    //             type: "POST",
    //             data: {
    //                 sub_id: sub_id
    //             },
    //             cache: false,
    //             success: function(result) {
    //                 $("#micro-category-dropdown").html(result);
    //                 // alert(result);
    //             }
    //         });

    //     });
    // });
</script>

<!-- /page content -->
<?php
include_once "include/footer.php";
?>

<!-- <div class="container">
    <div class="row">
        <div class="col-12 col-lg-3">
            <img src="" height="auto" width="100%" alt="">
            <h3>abc</h3>
        </div>
        <div class="col-12 col-lg-3">
            <img src="" height="auto" width="100%" alt="">
            <h3>abc</h3>
        </div>
        <div class="col-12 col-lg-3">
            <img src="" height="auto" width="100%" alt="">
            <h3>abc</h3>
        </div>
    </div>
</div> -->