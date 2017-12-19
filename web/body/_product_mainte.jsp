<!--main content start-->
<style>
    .font_color {

        color: #000000;

    }
</style>

<section id="main-content">
    <section class="wrapper site-min-height">
        <!-- page start-->


        <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal-1" class="modal fade" >
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button aria-hidden="true" data-dismiss="modal" class="close" id="closeModalButton" type="button">×</button>
                        <h4 class="modal-title">Create New</h4>
                    </div>
                    <div class="modal-body">

                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label for="aboutTitle" class="col-lg-2 col-sm-2 control-label">Title</label>
                                <div class="col-lg-10">
                                    <input type="text" id="title" class="form-control" id="aboutTitle" placeholder="Title">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="aboutArticle" class="col-lg-2 col-sm-2 control-label">Article</label>
                                <div class="col-lg-10">
                                    <textarea type="text" id="article" class="form-control" id="aboutArticle" placeholder="Article" rows="4"></textarea>
                                </div>
                            </div>

                        </form>
                    </div>
                    <div class="modal-footer no-border">
                        <button type="button" onclick="save_edit_about_content()" class="btn btn-primary fa fa-in">Submit</button>
                    </div>
                </div>
            </div>
        </div>



        <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal-SO" class="modal fade">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button aria-hidden="true" data-dismiss="modal" class="close" id="closeModalButton_product" type="button">×</button>
                        <center><h4 class="modal-title">Add Product</h4></center>
                    </div>
                    <div class="modal-body">

                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <div class="col-md-6">
                                    <div class="pull-left">
                                        <label for=">">Date:</label>
                                        <input type="date" readonly class="form-control font_color" id="mydate"/>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="pull-right">
                                        <label for="prod_allow_sale">Allow Sale</label>
                                        <select class="form-control font_color sm-input" id="prod_allow_sale">
                                            <option value="Yes">Yes</option>
                                            <option value="No">No</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-6">
                                    <label>Name</label>
                                    <input class="form-control font_color" type="text" id="prod_name" placeholder="Enter Product Name"/>

                                </div>
                                <div class="col-md-6">
                                    <label>Size</label>
                                    <input class="form-control font_color" type="text" id="prod_size" placeholder="Enter Product Size"/>

                                </div>

                            </div>

                            <!--                            <div class="form-group">
                            
                                                        </div>-->

                            <div class="form-group">
                                <div class="col-md-6">
                                    <label>Brand</label>
                                    <input class="form-control font_color" type="text" id="prod_brand" placeholder="Enter Product Brand"/>

                                </div>
                                <div class="col-md-6">
                                    <label>Group</label>
                                    <input class="form-control font_color" type="text" id="prod_group" placeholder="Enter Product Group"/>

                                </div>
                            </div>


                            <!--                            <div class="form-group">
                            
                            
                                                        </div>-->


                            <div class="form-group">
                                <div class="col-md-6">
                                    <!--                                    <label>Allow Sale</label>
                                                                        <input class="form-control font_color" type="text" id="prod_allow_sale"/>
                                                                        <select class="form-control col-md-6 font_color" id="prod_allow_sale">
                                                                            <option value="Select Customer">Select Customer</option>
                                                                        </select>-->
                                    <label>Inventory Stock</label>
                                    <input type="number" class="form-control font_color" placeholder="Enter Beggining amount" id="prod_inv_stocks"/>
                                </div>
                                <div class="col-md-6">
                                    <label>Tract Price</label>
                                    <input class="form-control font_color" type="number" id="prod_tract_price" placeholder="Enter Tract Price"/>

                                </div>
                            </div>

                            <!--                            <div class="form-group">
                            
                            
                                                        </div>-->


                        </form>


                    </div>
                    <div class="modal-footer no-border">
                        <button type="button" onclick="insert_product()" class="btn btn-primary">Submit</button>
                    </div>
                </div>
            </div>
        </div>







        <div class="row">
            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading">
                        Product Maintenance
                    </header>

                    <div class="panel-body">
                        <div class="clearfix">
                            <div class="btn-group">
                                <button onclick=" clear_product_form()" class="btn btn-primary" data-target="#myModal-SO" data-toggle="modal" data-backdrop="static" data-keyboard="true">
                                    Add New Product <i class="fa fa-plus"></i>
                                </button>
                            </div>
                        </div>
                        <div class="space15"></div>
                        <div class="adv-table">

                            <table class="display table table-bordered table-striped" id="example1">
                                <thead>
                                    <tr>
                                        <th>Product No</th>
                                        <th>Name</th>
                                        <th>Size</th>
                                        <th>Brand</th>
                                        <th>Group</th>
                                        <th>Allow Sale</th>
                                        <th>Tract price</th>
                                        <th>Inventory Stock</th>
                                        <th style="width: 90px">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <!--                                    <tr>
                                                                            <td>Trident</td>
                                                                            <td>Win 95+</td>
                                                                            <td>4</td>
                                                                            <td>X</td>
                                                                            <td>
                                                                                <button type="button" class="btn btn-info btn-sm">Edit</button>
                                                                                <button type="button" class="btn btn-danger btn-sm">Delete</button>
                                                                            </td>
                                                                        </tr>-->


                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>Product No</th>
                                        <th>Name</th>
                                        <th>Size</th>
                                        <th>Brand</th>
                                        <th>Group</th>
                                        <th>Allow Sale</th>
                                        <th>Tract price</th>
                                        <th>Inventory Stock</th>
                                        <th style="width: 90px">Action</th>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </section>
            </div>
        </div>


        <!-- page end-->
    </section>
</section>
<!--main content end-->



<script>

//    function clear_the_form() {
//
//        $('#title').val("");
//        $('#article').val("");
//    }
//
//
//    function clear_product_form() {
//        action = "add";
//        global_update_id = "1";
//        $('#prod_name').val("");
//        $('#prod_size').val("");
//        $('#prod_brand').val("");
//        $('#prod_group').val("");
//        $('#prod_allow_sale').val("");
//        $('#prod_tract_price').val("");
//        $('#prod_inv_stock').val("");
//
//    }
//
//    var global_update_id = "1";
//    var action = "add";
//    function save_edit_about_content() {
//
//        var title = $('#prod_name').val();
//        var article = $('#prod_size').val();
//        $.ajax({
//            type: "post", // GET or POST
//            url: 'Controller_About', // Path to file
//
//            data: {
//                "title": title,
//                "article": article,
//                "action": action,
//                "id": global_update_id
//
//
//
//            },
//            beforeSend: function() {
//
//
//            },
//            complete: function() {
//
//
//            },
//            success: function(response) {
//
////                document.getElementById('closeModalButton').click();
////                load_data();
////                action = "add";
////                clear_the_form();
//            },
//            error: function(xhr) {
//
//
//            }
//        });
//    }
//
//
//
//
//    function insert_product() {
////        action = "add";
//
//        var myFilter;
//        var filter = false;
//        var name = $('#prod_name').val();
//        var size = $('#prod_size').val();
//        var brand = $('#prod_brand').val();
//        var group = $('#prod_group').val();
//        var sale = $('#prod_allow_sale').val();
//        var price = $('#prod_tract_price').val();
//        var stock = $('#prod_inv_stock').val();
//
//        myFilter = (name == "" || stock == "" || size == "" || brand == "" || group == "" || sale == null || price == "") ? filter = false : filter = true;
////        alert(sale);
//        if (filter == true) {
//            $.ajax({
//                type: "post", // GET or POST
//                url: 'Controller_product_mainte', // Path to file
//
//                data: {
//                    "get_global_id": global_update_id,
//                    "get_action": action,
//                    "prod_name": name,
//                    "prod_size": size,
//                    "prod_brand": brand,
//                    "prod_group": group,
//                    "prod_allow_sale": sale,
//                    "prod_tract_price": price
//
//
//
//
//                },
//                beforeSend: function() {
//
//
//                },
//                complete: function() {
//
//
//                },
//                success: function(response) {
//                    document.getElementById('closeModalButton_product').click();
//                    load_data_product_mainte();
//                    action = "add";
//                    clear_product_form();
//                },
//                error: function(xhr) {
//                    alert(xhr.toString())
//
//                }
//            });
//        }
//        else {
//            alert("Filled up all fields");
//        }
//    }



</script>
<script>
    $(document).ready(function() {
        $('#example1').dataTable({
            "bPaginate": true,
            "bLengthChange": true,
            "bFilter": true,
            "bSort": true,
            "bInfo": true,
            "bAutoWidth": false,
            // "order": [[4, "date_modified"]],
            "order": [[0, "asc"]],
            // "serverSide": true,
            // "ajax": "LoadEmpOverTime",
            "columnDefs": [
                {
                    //used to force the datable to accept null value
                    //the default content will be null
                    "targets": [0, 1, 2, 3, 4, 5, 6, 7],
                    "defaultContent": ""
                }
            ]
                    // "deferLoading": 57
        });



    });

//    function update_elem(elem) {
//
//
//
//        var id = $(elem).attr("id");
//        action = "edit";
//        var pk_id = ($('#' + id + '').parent().siblings().eq(0).text());
//        var name = ($('#' + id + '').parent().siblings().eq(1).text());
//        var size = ($('#' + id + '').parent().siblings().eq(2).text());
//        var brand = ($('#' + id + '').parent().siblings().eq(3).text());
//        var group = ($('#' + id + '').parent().siblings().eq(4).text());
//        var sale = ($('#' + id + '').parent().siblings().eq(5).text());
//        var tract = ($('#' + id + '').parent().siblings().eq(6).text());
//
//        global_update_id = pk_id;
//        console.log(global_update_id);
//
//        $('#prod_name').val(name);
//        $('#prod_size').val(size);
//        $('#prod_brand').val(brand);
//        $('#prod_group').val(group);
//        $('#prod_allow_sale').val(sale);
//        $('#prod_tract_price').val(tract);
//
//
//
//    }
//
//
//    function delete_about(elem) {
//
////        alert("deleting the content");
//
//        var id = $(elem).attr("id");
//        var record = ($('#' + id + '').parent().siblings().eq(0).text());
//
//        action = "delete";
//        global_update_id = record;
//
//
//        if (confirm("Are you sure?") == true) {
//
//            $.ajax({
//                type: "post", // GET or POST
//                url: 'Controller_product_mainte', // Path to file
//
//                data: {
//                    "get_global_id": global_update_id,
//                    "get_action": action
////                    "prod_name": name,
////                    "prod_size": size,
////                    "prod_brand": brand,
////                    "prod_group": group,
////                    "prod_allow_sale": sale,
////                    "prod_tract_price": price
//
//
//
//
//                },
//                beforeSend: function() {
//
//
//                },
//                complete: function() {
//
//
//                },
//                success: function(response) {
//
//                    document.getElementById('closeModalButton_product').click();
//                    load_data_product_mainte();
//                    action = "add";
//                    clear_product_form();
//                },
//                error: function(xhr) {
//
//
//                }
//            });
//        } else {
//            console.log("cancel");
//
//        }
//
//
//
//
//    }
//
//
//    function load_data() {
//        console.log("success load load_data");
//        $.ajax({
//            type: "get", // GET or POST
//            url: 'Data_table_about', // Path to file
//
//
//            beforeSend: function() {                                // Before Ajax 
//
//            },
//            complete: function() {
//
//                //$success.show();
//            },
//            success: function(response) {
//// Show content
//                alert(response.toString());
//                $('#example1').DataTable().clear().draw();
//                var counting = 0;
//
//                $.each(response, function(index, value) {
//                    counting++;
//
//                    var button = ' <button type="button"  id="my_update' + counting + '" onclick="update_elem(this)" class="btn btn-info btn-sm" data-target="#myModal-1" data-toggle="modal">Edit</button> '
//                            + ' <button type="button"   id="my_delete' + counting + '" onclick=" delete_about(this)" class="btn btn-danger btn-sm">Delete</button>';
//
//                    $('#example1').DataTable().row.add([
//                        value.id,
//                        value.title,
//                        value.article,
//                        value.date_modified,
//                        button
//
//                    ]).draw();
//
//
//                });
//            },
//            error: function(xhr) {
//
//            }
//        });
//    }



//
//    function load_data_product_mainte() {
//        console.log("success load load_data");
//        $.ajax({
//            type: "get", // GET or POST
//            url: 'Data_table_product_maintenance', // Path to file
//
//
//            beforeSend: function() {                                // Before Ajax 
//
//            },
//            complete: function() {
//
//                //$success.show();
//            },
//            success: function(response) {
//// Show content
////                alert(response.toString());
//                $('#example1').DataTable().clear().draw();
//                var counting = 0;
//
//                $.each(response, function(index, value) {
//                    counting++;
//
//                    var button = ' <button type="button"  id="my_update' + counting + '" onclick="update_elem(this)" class="btn btn-info btn-sm" data-target="#myModal-SO" data-toggle="modal">Edit</button> '
//                            + ' <button type="button"   id="my_delete' + counting + '" onclick=" delete_about(this)" class="btn btn-danger btn-sm">Delete</button>';
//
//                    $('#example1').DataTable().row.add([
//                        value.pr_id,
//                        value.pr_name,
//                        value.pr_size,
//                        value.pr_brand,
//                        value.pr_group,
//                        value.pr_allow,
//                        value.pr_tract,
//                        button
//
//                    ]).draw();
//
//
//                });
//            },
//            error: function(xhr) {
//
//            }
//        });
//    }


//    Date.prototype.toDateInputValue = (function() {
//        var local = new Date(this);
//        local.setMinutes(this.getMinutes() - this.getTimezoneOffset());
//        return local.toJSON().slice(0, 10);
//    });

</script>
<!--<script src="../js/method_productMaintenance.js" type="text/javascript"></script>-->

<script>
    function clear_the_form() {

        $('#title').val("");
        $('#article').val("");
    }


    function clear_product_form() {
        action = "add";
        global_update_id = "1";
        $('#prod_name').val("");
        $('#prod_size').val("");
        $('#prod_brand').val("");
        $('#prod_group').val("");
        $('#prod_allow_sale').val("");
        $('#prod_tract_price').val("");
        $('#prod_inv_stocks').val("")   ;
         $('#prod_inv_stocks').prop("disabled", false);

    }

    var global_update_id = "1";
    var action = "add";
    function save_edit_about_content() {

        var title = $('#prod_name').val();
        var article = $('#prod_size').val();
        $.ajax({
            type: "post", // GET or POST
            url: 'Controller_About', // Path to file

            data: {
                "title": title,
                "article": article,
                "action": action,
                "id": global_update_id



            },
            beforeSend: function() {


            },
            complete: function() {


            },
            success: function(response) {

//                document.getElementById('closeModalButton').click();
//                load_data();
//                action = "add";
//                clear_the_form();
            },
            error: function(xhr) {


            }
        });
    }




    function insert_product() {
//        action = "add";

        var myFilter;
        var filter = false;
        var name = $('#prod_name').val();
        var size = $('#prod_size').val();
        var brand = $('#prod_brand').val();
        var group = $('#prod_group').val();
        var sale = $('#prod_allow_sale').val();
        var price = $('#prod_tract_price').val();
        var stock = $('#prod_inv_stocks').val();

        myFilter = (name == "" || stock == "" || size == "" || brand == "" || group == "" || sale == null || price == "") ? filter = false : filter = true;
//        alert(sale);
        if (filter == true) {
            $.ajax({
                type: "post", // GET or POST
                url: 'Controller_product_mainte', // Path to file

                data: {
                    "get_global_id": global_update_id,
                    "get_action": action,
                    "prod_name": name,
                    "prod_size": size,
                    "prod_brand": brand,
                    "prod_group": group,
                    "prod_allow_sale": sale,
                    "prod_inventory_stock": stock,
                    "prod_tract_price": price




                },
                beforeSend: function() {


                },
                complete: function() {


                },
                success: function(response) {
                    document.getElementById('closeModalButton_product').click();
                    load_data_product_mainte();
                    action = "add";
                    clear_product_form();
                },
                error: function(xhr) {
                    alert(xhr.toString())

                }
            });
        }
        else {
            alert("Filled up all fields in Product");
        }
    }


    function update_elem(elem) {



        var id = $(elem).attr("id");
        action = "edit";
        var pk_id = ($('#' + id + '').parent().siblings().eq(0).text());
        var name = ($('#' + id + '').parent().siblings().eq(1).text());
        var size = ($('#' + id + '').parent().siblings().eq(2).text());
        var brand = ($('#' + id + '').parent().siblings().eq(3).text());
        var group = ($('#' + id + '').parent().siblings().eq(4).text());
        var sale = ($('#' + id + '').parent().siblings().eq(5).text());
        var tract = ($('#' + id + '').parent().siblings().eq(6).text());
        var stock = ($('#' + id + '').parent().siblings().eq(7).text());

        global_update_id = pk_id;
        console.log(global_update_id);

        $('#prod_name').val(name);
        $('#prod_size').val(size);
        $('#prod_brand').val(brand);
        $('#prod_group').val(group);
        $('#prod_allow_sale').val(sale);
        $('#prod_tract_price').val(tract);
        $('#prod_inv_stocks').val(stock);
        $('#prod_inv_stocks').prop("disabled", true);




    }


    function delete_about(elem) {

//        alert("deleting the content");

        var id = $(elem).attr("id");
        var record = ($('#' + id + '').parent().siblings().eq(0).text());

        action = "delete";
        global_update_id = record;


        if (confirm("Are you sure?") == true) {

            $.ajax({
                type: "post", // GET or POST
                url: 'Controller_product_mainte', // Path to file

                data: {
                    "get_global_id": global_update_id,
                    "get_action": action
//                    "prod_name": name,
//                    "prod_size": size,
//                    "prod_brand": brand,
//                    "prod_group": group,
//                    "prod_allow_sale": sale,
//                    "prod_tract_price": price




                },
                beforeSend: function() {


                },
                complete: function() {


                },
                success: function(response) {

                    document.getElementById('closeModalButton_product').click();
                    load_data_product_mainte();
                    action = "add";
                    clear_product_form();
                },
                error: function(xhr) {


                }
            });
        } else {
            console.log("cancel");

        }




    }


    function load_data() {
        console.log("success load load_data");
        $.ajax({
            type: "get", // GET or POST
            url: 'Data_table_about', // Path to file


            beforeSend: function() {                                // Before Ajax 

            },
            complete: function() {

                //$success.show();
            },
            success: function(response) {
// Show content
                alert(response.toString());
                $('#example1').DataTable().clear().draw();
                var counting = 0;

                $.each(response, function(index, value) {
                    counting++;

                    var button = ' <button type="button"  id="my_update' + counting + '" onclick="update_elem(this)" class="btn btn-info btn-sm" data-target="#myModal-1" data-toggle="modal"><i class="fa fa-list"></i></button> '
                            + ' <button type="button"   id="my_delete' + counting + '" onclick=" delete_about(this)" class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i></button>';

                    $('#example1').DataTable().row.add([
                        value.id,
                        value.title,
                        value.article,
                        value.date_modified,
                        button

                    ]).draw();


                });
            },
            error: function(xhr) {

            }
        });
    }
    function load_data_product_mainte() {
        console.log("success load load_data");
        $.ajax({
            type: "get", // GET or POST
            url: 'Data_table_product_maintenance', // Path to file


            beforeSend: function() {                                // Before Ajax 

            },
            complete: function() {

                //$success.show();
            },
            success: function(response) {
// Show content
//                alert(response.toString());
                $('#example1').DataTable().clear().draw();
                var counting = 0;

                $.each(response, function(index, value) {
                    counting++;

                    var button = ' <button type="button"  id="my_update' + counting + '" onclick="update_elem(this)" class="btn btn-info btn-sm" data-target="#myModal-SO" data-toggle="modal"><i class="fa fa-list"></i></button> '
                            + ' <button type="button"   id="my_delete' + counting + '" onclick=" delete_about(this)" class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i></button>';

                    $('#example1').DataTable().row.add([
                        value.pr_id,
                        value.pr_name,
                        value.pr_size,
                        value.pr_brand,
                        value.pr_group,
                        value.pr_allow,
                        value.pr_tract,
                        value.pr_inventory,
                        button

                    ]).draw();


                });
            },
            error: function(xhr) {

            }
        });
    }

    Date.prototype.toDateInputValue = (function() {
        var local = new Date(this);
        local.setMinutes(this.getMinutes() - this.getTimezoneOffset());
        return local.toJSON().slice(0, 10);
    });
</script>
<script>

    $(document).ready(function() {

        load_data_product_mainte();
//        load_data_product_mainte_js_product();

        $('#mydate').val(new Date().toDateInputValue());

    });

</script>