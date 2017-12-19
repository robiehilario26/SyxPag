<!--main content start-->
<style>
    .font_color {

        color: #000000;

    }
</style>

<section id="main-content">
    <section class="wrapper site-min-height">
        <!-- page start-->


        <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal-1" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button aria-hidden="true" data-dismiss="modal" class="close" id="closeModalButton" type="button">×</button>
                        <h4 class="modal-title">Create New Vendor</h4>
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
                        <button type="button" onclick="save_edit_about_content()" class="btn btn-primary">Submit</button>
                    </div>
                </div>
            </div>
        </div>



        <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal-SO" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button aria-hidden="true" data-dismiss="modal" class="close" id="closeModalButton_product" type="button">×</button>
                        <center><h4 class="modal-title">Add New Vendor</h4></center>
                    </div>
                    <div class="modal-body">

                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <div class="col-md-6">
                                    <label>Vendor name</label>
                                    <input class="form-control font_color" type="hidden" id="v_pk"/>
                                    <input class="form-control font_color" type="text" id="v_name"/>

                                </div>


                                <div class="col-md-6">
                                    <label>Check name</label>
                                    <input class="form-control font_color" type="text" id="v_check_name"/>

                                </div>

                            </div>

                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Warehouse Location</label>
                                    <input class="form-control font_color" type="text" id="v_warehouse_location"/>

                                </div>

                            </div>


                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Office Address</label>
                                    <input class="form-control font_color" type="text" id="v_office_address"/>

                                </div>

                            </div>


                            <div class="form-group">
                                <div class="col-md-4">
                                    <label>Contact 1</label>
                                    <input class="form-control font_color" type="text" id="v_contact1"/>

                                </div>


                                <div class="col-md-4">
                                    <label>Contact 2</label>
                                    <input class="form-control font_color" type="text" id="v_contact2"/>

                                </div>


                                <div class="col-md-4">
                                    <label>Contact 3</label>
                                    <input class="form-control font_color" type="text" id="v_contact3"/>

                                </div>

                            </div>

                            <div class="form-group">
                                <div class="col-md-6">
                                    <label>Primary Contact</label>
                                    <input class="form-control font_color" type="text" id="v_primary_contact"/>

                                </div>

                                <div class="col-md-6">
                                    <label>Secondary Contact</label>
                                    <input class="form-control font_color" type="text" id="v_secondary_contact"/>

                                </div>

                            </div>



                            <div class="form-group">
                                <div class="col-md-6">
                                    <label>Vendor Class</label>
                                    <select class="form-control font_color" id="v_class">
                                        <option value="S1">S1</option>
                                        <option value="S2">S2</option>
                                        <option value="S3">S3</option>
                                        <option value="S4">S4</option>
                                    </select>

                                </div>


                                <div class="col-md-6">
                                    <label>Vendor Grouping</label>
                                    <select class="form-control font_color" id="v_grouping">
                                        <option value="G1">G1</option>
                                        <option value="G2">G2</option>
                                        <option value="G3">G3</option>
                                    </select>

                                </div>

                            </div>

                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>AP</label>
                                    <input class="form-control font_color" type="number" id="v_ap"/>

                                </div>

                            </div>


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
                        Vendor Maintenance
                    </header>

                    <div class="panel-body">
                        <div class="clearfix">
                            <div class="btn-group">
                                <button onclick=" clear_product_form()" class="btn btn-primary" data-target="#myModal-SO" data-toggle="modal">
                                    Add New Vendor <i class="fa fa-plus"></i>
                                </button>
                            </div>
                        </div>
                        <div class="space15"></div>
                        <div class="adv-table">

                            <table class="display table table-bordered table-striped" id="example1">
                                <thead> 
                                    <tr>
                                        <th>ID</th>
                                        <th>Vendor Name</th>
                                        <th>Check Name</th>
                                        <th>Warehouse Location</th>
                                        <th>Office Address</th>
                                        <th>Contact 1</th>
                                        <th>Contact 2</th>
                                        <th>Contact 3</th>
                                        <th>Primary Contact</th>
                                        <th>Secondary Contact</th>
                                        <th>Vendor Class</th>
                                        <th>Vendor Grouping</th>
                                        <th>AP</th>
                                        <th style="width: 138px">Action</th>
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
                                        <th>ID</th>
                                        <th>Vendor Name</th>
                                        <th>Check Name</th>
                                        <th>Warehouse Location</th>
                                        <th>Office Address</th>
                                        <th>Contact 1</th>
                                        <th>Contact 2</th>
                                        <th>Contact 3</th>
                                        <th>Primary Contact</th>
                                        <th>Secondary Contact</th>
                                        <th>Vendor Class</th>
                                        <th>Vendor Grouping</th>
                                        <th>AP</th>
                                        <th style="width: 138px">Action</th>
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

    function clear_the_form() {

        $('#title').val("");
        $('#article').val("");
    }


    function clear_product_form() {
        action = "add";
        global_update_id = "1";

        $('#v_name').val("");
        $('#v_check_name').val("");
        $('#v_warehouse_location').val("");
        $('#v_office_address').val("");
        $('#v_contact1').val("");
        $('#v_contact2').val("");
        $('#v_contact3').val("");
        $('#v_primary_contact').val("");
        $('#v_secondary_contact').val("");
        $('#v_class').val("");
        $('#v_grouping').val("");
        $('#v_ap').val("");

    }


    function save() {

        alert("where are you from here");
    }

    var global_update_id = "1";
    var action = "add";
    function save_edit_about_content() {

        var title = $('#c_store').val();
        var article = $('#c_owner').val();
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
        var myFilter;
        var filter = false;
        var name = $('#v_name').val();
        var check_name = $('#v_check_name').val();
        var warehouse_loc = $('#v_warehouse_location').val();
        var office_add = $('#v_office_address').val();
        var contact1 = $('#v_contact1').val();
        var contact2 = $('#v_contact2').val();
        var contact3 = $('#v_contact3').val();
        var primary_contact = $('#v_primary_contact').val();
        var secondary_contact = $('#v_secondary_contact').val();
        var vendor_class = $('#v_class').val();
        var vendor_group = $('#v_grouping').val();
        var ap = $('#v_ap').val();



        myFilter = (name == "" || check_name == "" || warehouse_loc == "" || office_add == "" || contact1 == "" || contact2 == "" || contact3 == "" || primary_contact == "" || secondary_contact == "" || vendor_class == null || vendor_group == null || ap == "") ? filter = false : filter = true;
        if (filter == true) {
            $.ajax({
                type: "post", // GET or POST
                url: 'Controller_vendor', // Path to file

                data: {
                    "get_global_id": global_update_id,
                    "get_action": action,
                    "v_vendor_name": name,
                    "v_chk_name": check_name,
                    "v_wrhs_location": warehouse_loc,
                    "v_office_add": office_add,
                    "v_contct1": contact1,
                    "v_contct2": contact2,
                    "v_contct3": contact3,
                    "v_primary": primary_contact,
                    "v_secondary": secondary_contact,
                    "v_class_": vendor_class,
                    "v_grouping_": vendor_group,
                    "v_ap_": ap




                },
                beforeSend: function() {


                },
                complete: function() {


                },
                success: function(response) {

                    document.getElementById('closeModalButton_product').click();
                    load_data_product_mainte();
//                action = "add";
                    clear_product_form();
                },
                error: function(xhr) {


                }
            });
        }
        else {
            alert("Filled up all fields");
        }
    }



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
                    "targets": [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13],
                    "defaultContent": ""
                }
            ]
                    // "deferLoading": 57
        });



    });

    function update_elem(elem) {

//        var id = $(elem).attr("id");
//        action = "edit";
//        var record = ($('#' + id + '').parent().siblings().eq(0).text());
//        var title = ($('#' + id + '').parent().siblings().eq(1).text());
//        var article = ($('#' + id + '').parent().siblings().eq(2).text());
//
//        global_update_id = record;
//        console.log(global_update_id);
//
//        $('#title').val(title);
//        $('#article').val(article);

        var id = $(elem).attr("id");
        action = "edit";
        var pk_id = ($('#' + id + '').parent().siblings().eq(0).text());
        var venoor_name = ($('#' + id + '').parent().siblings().eq(1).text());
        var chck_name = ($('#' + id + '').parent().siblings().eq(2).text());
        var warehouse_loc = ($('#' + id + '').parent().siblings().eq(3).text());
        var office_add = ($('#' + id + '').parent().siblings().eq(4).text());
        var contact1 = ($('#' + id + '').parent().siblings().eq(5).text());
        var contact2 = ($('#' + id + '').parent().siblings().eq(6).text());
        var contact3 = ($('#' + id + '').parent().siblings().eq(7).text());
        var primary = ($('#' + id + '').parent().siblings().eq(8).text());
        var secondary = ($('#' + id + '').parent().siblings().eq(9).text());
        var vendor_class = ($('#' + id + '').parent().siblings().eq(10).text());
        var vendor_grouping = ($('#' + id + '').parent().siblings().eq(11).text());
        var ap = ($('#' + id + '').parent().siblings().eq(12).text());


        global_update_id = pk_id;
        console.log(global_update_id);
        $('#v_pk').val(pk_id);
        $('#v_name').val(venoor_name);
        $('#v_check_name').val(chck_name);
        $('#v_warehouse_location').val(warehouse_loc);
        $('#v_office_address').val(office_add);
        $('#v_contact1').val(contact1);
        $('#v_contact2').val(contact2);
        $('#v_contact3').val(contact3);
        $('#v_primary_contact').val(primary);
        $('#v_secondary_contact').val(secondary);
        $('#v_class').val(vendor_class);
        $('#v_grouping').val(vendor_grouping);
        $('#v_ap').val(ap);






    }


    function delete_about(elem) {

//        alert("deleting the content");

        var id = $(elem).attr("id");
        var record = ($('#' + id + '').parent().siblings().eq(0).text());

        action = "delete";
        global_update_id = record;

//        save_edit_about_content();
//        alert(record);

        if (confirm("Are you sure?") == true) {
//            var name = "1";
//            var size = "1";
//            var brand = "1";
//            var group = "1";
//            var sale = "1";
//            var price = "1";
            $.ajax({
                type: "post", // GET or POST
                url: 'Controller_vendor', // Path to file

                data: {
                    "get_global_id": global_update_id,
                    "get_action": action
//                    "c_store": name,
//                    "c_owner": size,
//                    "c_contact": brand,
//                    "c_location": group,
//                    "c_sub_location": sale,
//                    "c_pricing_name": price




                },
                beforeSend: function() {


                },
                complete: function() {


                },
                success: function(response) {

                    document.getElementById('closeModalButton_product').click();
                    load_data_product_mainte();
//                    action = "add";
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
            url: 'Data_table_vendor', // Path to file


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
                        value.v_pk_vendor,
                        value.v_vendor_name,
                        value.v_check_name,
                        value.v_warehouse_loc,
                        value.v_office_add,
                        value.v_contact1,
                        value.v_contact2,
                        value.v_contact3,
                        value.v_primary_contact,
                        value.v_secondary_contact,
                        value.v_class,
                        value.v_grouping,
                        value.v_ap,
                        button

                    ]).draw();


                });
            },
            error: function(xhr) {

            }
        });
    }




</script>

<script>

    $(document).ready(function() {

        load_data_product_mainte();

    });

</script>