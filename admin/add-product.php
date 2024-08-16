<?php
// Uncomment to start the session if needed
// session_start();

// Uncomment to check for session variable if needed
// if (!isset($_SESSION["password"])) {
//     header("Location:index.php");
// }

include_once "include/header.php";
include "config.php";

if (isset($_POST['submit'])) {
    $product_name = $_POST['product_name'];
    $cat_id = $_POST['cat_id'];
    $sub_id = $_POST['sub_id'];
    $micro_id = $_POST['micro_id'];
    $inner_cat_id = $_POST['inner_cat_id'];
    $product_description = $_POST['product_description'];
    $price = $_POST['price'];
    $state_name = $_POST['state_name'];
    $company_name = $_POST['company_name'];
    $company_experience = $_POST['company_experience'];
    $iec = $_POST['iec'];
    $gst = $_POST['gst'];
    $website = $_POST['website'];
    $client_name = $_POST['client_name'];

    // Handle file uploads
    $product_image1 = $_FILES["product_image1"]["name"];
    $fld1 = "extra_image/" . $product_image1;
    move_uploaded_file($_FILES["product_image1"]['tmp_name'], $fld1);

    $company_logo = $_FILES["company_logo"]["name"];
    $fld2 = "extra_image/" . $company_logo;
    move_uploaded_file($_FILES["company_logo"]['tmp_name'], $fld2);

    // Prepare data for insertion
    $values = [];
    $names = $_POST['name'];
    $descriptions = $_POST['description'];

    foreach ($names as $index => $name) {
        $description = $descriptions[$index];
        // Sanitize data to prevent SQL injection
        $name = $con->real_escape_string($name);
        $description = $con->real_escape_string($description);

        $values[] = "('$name', '$description', '$product_name', '$price', '$product_description', '$cat_id', '$sub_id', '$micro_id', '$inner_cat_id', '$fld1', '$state_name', '$company_name', '$company_experience', '$iec', '$gst', '$website', '$fld2', '$client_name')";
    }

    if (!empty($values)) {
        $sql = "INSERT INTO `product` (`name`,`description`,`product_name`, `price`, `product_description`, `cat_id`, `sub_id`, `micro_id`, `inner_cat_id`, `product_image1`, `state_name`, `company_name`, `company_experience`, `iec`, `gst`, `website`, `company_logo`, `client_name`) VALUES " . implode(', ', $values);

        if ($con->query($sql) === TRUE) {
            echo "New records created successfully";
        } else {
            echo "Error: " . $con->error;
        }
    } else {
        echo "No data submitted.";
    }
}
?>

<div class="right_col" role="main">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-10 bg-white p-4">
                <form action=" " id="servicesForm" method="post" enctype="multipart/form-data" class="text-capitalize">
                    <h5>Add Products</h5>
                    <div class="row">
                        <div class="col-12 col-lg-6 my-2">
                            <label for="product_name">Product Name</label>
                            <input type="text" name="product_name" class="form-control" id="product_name">
                        </div>
                        <div class="col-12 col-lg-6 my-2">
                            <label for="product_image1">Product Image (Min 1 Image)</label>
                            <div class="row">
                                <div class="col-12">
                                    <div class="border">
                                        <input class="form-control" name="product_image1" type="file" id="product_image1">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 my-2">
                            <label for="price">Product Price</label>
                            <input type="text" class="form-control" name="price" id="price">
                        </div>
                        <div class="col-12 col-lg-6 my-2">
                            <label for="cat_id">Add Category</label>
                            <select name="cat_id" class="form-control" id="category-dropdown">
                                <option value="">------ Select Category -----</option>
                                <?php
                                $sel = "SELECT * FROM `category`";
                                $query = mysqli_query($con, $sel);
                                while ($row = mysqli_fetch_array($query)) {
                                    echo "<option value='{$row['cat_id']}' class='text-capitalize'>{$row['cat_name']}</option>";
                                }
                                ?>
                            </select>
                        </div>
                        <div class="col-12 col-lg-6 my-2">
                            <label for="sub_id">Add Sub Category</label>
                            <select name="sub_id" class="form-control" id="sub-category-dropdown">
                                <option value="">------ Select Sub Category -----</option>
                                <?php
                                $sel = "SELECT * FROM `sub_cat`";
                                $query = mysqli_query($con, $sel);
                                while ($row = mysqli_fetch_array($query)) {
                                    echo "<option value='{$row['sub_id']}' class='text-capitalize'>{$row['sub_cat_name']}</option>";
                                }
                                ?>
                            </select>
                        </div>
                        <div class="col-12 col-lg-6 my-2">
                            <label for="inner_cat_id">Add Inner Category</label>
                            <select name="inner_cat_id" class="form-control" id="inner-category-dropdown">
                                <option value="">------ Select Inner Category -----</option>
                                <?php
                                $sel = "SELECT * FROM `inner_cat`";
                                $query = mysqli_query($con, $sel);
                                while ($row = mysqli_fetch_array($query)) {
                                    echo "<option value='{$row['inner_cat_id']}' class='text-capitalize'>{$row['inner_cat_name']}</option>";
                                }
                                ?>
                            </select>
                        </div>
                        <div class="col-12 col-lg-6 my-2">
                            <label for="micro_id">Add Micro Category</label>
                            <select name="micro_id" class="form-control" id="micro-category-dropdown">
                                <option value="">------ Select Micro Category -----</option>
                                <?php
                                $sel = "SELECT * FROM `micro`";
                                $query = mysqli_query($con, $sel);
                                while ($row = mysqli_fetch_array($query)) {
                                    echo "<option value='{$row['micro_id']}' class='text-capitalize'>{$row['micro_name']}</option>";
                                }
                                ?>
                            </select>
                        </div>
                        <div class="col-12 col-lg-6 my-2">
                            <label for="state_name">Add States</label>
                            <select name="state_name" class="form-control" id="state-dropdown">
                                <option value="">------ Select State -----</option>
                                <?php
                                $sel = "SELECT * FROM `states`";
                                $query = mysqli_query($con, $sel);
                                while ($row = mysqli_fetch_array($query)) {
                                    echo "<option value='{$row['state_name']}' class='text-capitalize'>{$row['state_name']}</option>";
                                }
                                ?>
                            </select>
                        </div>
                        <div class="col-12 col-lg-6 my-2">
                            <label for="country_name">Country Name</label>
                            <select name="country_name" class="form-control" id="country-dropdown">
                                <option value="">------ Select Country -----</option>
                                <?php
                                $sel = "SELECT * FROM `countries`";
                                $query = mysqli_query($con, $sel);
                                while ($row = mysqli_fetch_array($query)) {
                                    echo "<option value='{$row['country_name']}' class='text-capitalize'>{$row['country_name']}</option>";
                                }
                                ?>
                            </select>
                        </div>
                        <div class="col-12">
                            <hr>
                        </div>
                        <h5 class="mt-3">Product Details</h5>
                        <div class="col-12 my-2">
                            <label for="product_description">Product Description</label>
                            <textarea name="product_description" rows="5" class="form-control" id="product_description"></textarea>
                        </div>
                        <div class="col-12">
                            <div class="col-lg-6 my-4">
                                <div id="servicesContainer">
                                    <div class="service-row">
                                        <label for="">Product Fields</label>
                                        <input type="text" name="name[]" class="form-control" placeholder="Fields" required>
                                        <label for="" class="mt-3">Product Description</label>
                                        <input type="text" name="description[]" class="form-control" placeholder="Product Description" required>
                                        <span class="remove-service btn btn-sm btn-danger">Remove</span>
                                    </div>
                                </div>
                                <button type="button" class="add-service btn btn-sm btn-primary">Add Another Product Field</button>
                            </div>
                        </div>
                        <hr>
                        <div class="col-12">
                            <h5 class="mt-3">Company Details</h5>
                        </div>
                        <div class="col-12 col-lg-6 my-2">
                            <label for="company_name">Company Name</label>
                            <input type="text" name="company_name" class="form-control" id="company_name">
                        </div>
                        <div class="col-12 col-lg-6 my-2">
                            <label for="company_logo">Company Logo</label>
                            <div class="border">
                                <input class="form-control" name="company_logo" type="file" id="company_logo">
                            </div>
                        </div>
                        <div class="col-12 col-lg-6 my-2">
                            <label for="company_experience">Company Experience</label>
                            <input type="text" name="company_experience" class="form-control" id="company_experience">
                        </div>
                        <div class="col-12 col-lg-6 my-2">
                            <label for="iec">IEC</label>
                            <input type="text" name="iec" class="form-control" id="iec">
                        </div>
                        <div class="col-12 col-lg-6 my-2">
                            <label for="gst">GST</label>
                            <input type="text" name="gst" class="form-control" id="gst">
                        </div>
                        <div class="col-12 col-lg-6 my-2">
                            <label for="website">Company Website</label>
                            <input type="text" name="website" class="form-control" id="website">
                        </div>
                        <div class="col-12 col-lg-6 my-2">
                            <label for="client_name">Client Name</label>
                            <input type="text" name="client_name" class="form-control" id="client_name">
                        </div>
                        <div class="col-12 my-2 text-right">
                            <button type="submit" name="submit" class="btn btn-success">Submit</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script>
        $(document).ready(function() {
            // Add new service input fields
            $('.add-service').click(function() {
                $('#servicesContainer').append(
                    '<div class="service-row">' +
                    '<input type="text" name="name[]" placeholder="Service Name" required>' +
                    '<input type="text" name="description[]" placeholder="Service Description" required>' +
                    '<span class="remove-service">Remove</span>' +
                    '</div>'
                );
            });

            // Remove service input fields
            $('#servicesContainer').on('click', '.remove-service', function() {
                $(this).parent().remove();
            });
        });
    </script>
<?php
include_once "include/footer.php";
?>
