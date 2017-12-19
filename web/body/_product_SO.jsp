<!--main content start-->
<style>
    .font_color {

        color: #000000;

    }

    @media (min-width: 768px) {
        .modal-xl {
            width: 90%;
            max-width:1200px;
        }
    }

    .table td {
        text-align: center;   
    }


    .fullwidth{
        width: 100%;
    }
</style>

<section id="main-content">
    <section class="wrapper site-min-height">
        <!-- page start-->


        <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal-SO" class="modal fade">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <button aria-hidden="true" data-dismiss="modal" class="close" onclick="unhide()" id="closeModalButton_product" type="button">×</button>
                        <center><h4 class="modal-title">SO#<span id="set_so_id"></span> </h4><div id="div_create">Date created:<span  id="set_so_date_created"></span></div><div id="div_update">Last date updated: <span  id="set_so_date"></span></div></center>
                    </div>
                    <div class="modal-body">

                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <div class="col-md-4">
                                    <label>Customer name</label>
                                    <!--                                    <input class="form-control font_color" type="text" id="prod_name"/>-->
                                    <select class="form-control col-md-6 font_color" id="pricing_name">
                                        <option value="Select Customer">Select Customer</option>
                                    </select>

                                    <input id="transfer_here" class="form-control"  type="hidden">
                                </div>
                                <div class="col-md-2">
                                    <label>Type of Order</label>
                                    <select class="form-control font_color" id="so_order">
                                        <option>Deliver</option>
                                        <option>Pick-up</option>
                                    </select>
                                </div>

                                <div class="col-md-2">
                                    <label>Type of Payment</label>
                                    <select class="form-control font_color" id="so_pay">
                                        <option>Cash</option>
                                        <option>Credit</option>
                                    </select>
                                </div>

                                <div class="col-md-2">
                                    <label>SO Status</label>
                                    <select class="form-control font_color" id="so_status">
                                        <option>Unpaid</option>
                                        <option>Paid</option>
                                    </select>
                                </div>


                                <div class="col-md-2">
                                    <label>Current AR</label>
                                    <input type="text" class="form-control font_color" id="so_ar"/>
                                </div>

                            </div>
                            <div class="form-group">
                                <div class="col-md-4">
                                    <label>Store name</label>
                                    <!--                                    <input class="form-control font_color" type="text" id="prod_name"/>-->
                                    <select class="form-control font_color" id="so_store">
                                        <option>Select Store</option>
                                    </select>

                                </div>

                                <div class="col-md-3">
                                    <label>Location</label>
                                    <textarea type="text" class="form-control font_color" id="so_location" placeholder="Location" rows="2"></textarea>
                                </div>

                                <div class="col-md-3">
                                    <label>Remarks</label>
                                    <textarea type="text" class="form-control font_color" id="so_remarks" placeholder="Remarks" rows="2" value="No remarks yet"></textarea>
                                </div>

                                <div class="col-md-2">
                                    <label>QTY</label>
                                    <input type="text" class="form-control font_color" id="so_qty"/>
                                    <label>PRICE</label>
                                    <input type="text" class="form-control font_color" id="so_price"/>
                                </div>

                            </div>





                            <div class="test">

                                <table class="table table-bordered table-striped" id="example2">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Product</th>
                                            <th>Instock</th>
                                            <th>Commited</th>
                                            <th>Available</th>
                                            <th>Price</th>
                                            <th style="width:50px">QTY</th>
                                            <th>Total Price</th>
                                            <th>fk product id</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <!--                                        <tr>
                                                                                    <td>Trident</td>
                                                                                    <td>Product sample</td>
                                                                                    <td> 
                                                                                        <input class="form-control"  type="text">
                                        
                                                                                    </td>
                                                                                    <td>
                                                                                        <button type="button" class="btn btn-info btn-sm">Edit</button>
                                                                                        <button type="button" class="btn btn-danger btn-sm">Delete</button>
                                                                                    </td>
                                                                                </tr>-->


                                    </tbody>
                                    <!--                                    <tfoot>
                                                                            <tr>
                                                                                <th>ID</th>
                                                                                <th>Name</th>
                                                                                <th>Price</th>
                                                                                <th style="width: 138px">Action</th>
                                                                            </tr>
                                                                        </tfoot>-->
                                </table>
                            </div>

                            <!--                            <div class="form-group">
                                                            <div class="col-md-12">
                                                                <label>Size</label>
                                                                <input class="form-control font_color" type="text" id="prod_size"/>
                            
                                                            </div>
                            
                                                        </div>
                            
                                                        <div class="form-group">
                                                            <div class="col-md-12">
                                                                <label>Brand</label>
                                                                <input class="form-control font_color" type="text" id="prod_brand"/>
                            
                                                            </div>
                            
                                                        </div>
                            
                            
                                                        <div class="form-group">
                                                            <div class="col-md-12">
                                                                <label>Group</label>
                                                                <input class="form-control font_color" type="text" id="prod_group"/>
                            
                                                            </div>
                            
                                                        </div>
                            
                            
                                                        <div class="form-group">
                                                            <div class="col-md-12">
                                                                <label>Allow Sale</label>
                                                                <input class="form-control font_color" type="text" id="prod_allow_sale"/>
                            
                                                            </div>
                            
                                                        </div>
                            
                                                        <div class="form-group">
                                                            <div class="col-md-12">
                                                                <label>Tract Price</label>
                                                                <input class="form-control font_color" type="text" id="prod_tract_price"/>
                            
                                                            </div>
                            
                                                        </div>
                            -->

                        </form>


                    </div>
                    <div class="modal-footer no-border">
                        <button type="button" onclick="get_all_data_line_item()" id="btn_submit" class="btn btn-primary">Submit</button>
                    </div>
                </div>
            </div>
        </div>








        <div class="row">
            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading">
                        Sales Order
                    </header>

                    <div class="panel-body">
                        <div class="clearfix">
                            <div class="btn-group">
                                <button onclick=" clear_product_form()" class="btn btn-primary" data-target="#myModal-SO" data-toggle="modal" data-backdrop="static" >
                                    Create SO <i class="fa fa-plus"></i>
                                </button>
                            </div>
                        </div>
                        <div class="space15"></div>
                        <div class="adv-table">

                            <table class="display table table-bordered table-striped" id="example1">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Customer</th>
                                        <th>Store</th>
                                        <th>Order</th>
                                        <th>Payment</th>
                                        <th>Status</th>
                                        <th>AR</th>
                                        <th>Date</th>
                                        <th style="width: 168px">Action</th>
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
                                        <th>Customer</th>
                                        <th>Store</th>
                                        <th>Order</th>
                                        <th>Payment</th>
                                        <th>Status</th>
                                        <th>AR</th>
                                        <th>Date</th>
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


    function change_status(elem) {
        var id = $(elem).attr("id");
        var record = ($('#' + id + '').parent().siblings().eq(0).text());
        action = "update_final";
        global_update_id = record;

        if (confirm("Are you sure?") == true) {
            $.ajax({
                type: "get", // GET or POST
                url: 'update_data_table_SO_per_customer', // Path to file
                data: {
                    get_test: record,
                    get_action: action
                },
                beforeSend: function() {                                // Before Ajax 

                },
                complete: function() {
                    update_change_status(record);
                    //$success.show();
                },
                success: function(response) {
                    var item = "";
                    d_global_array = [];
                    console.log(response);
                    $.each(response, function(index, value) {

                        var fk_pr_id = value.so_product_id;
                        var pr_qty = value.so_per_qty_item;
                        var pk_po = value.so_pk;

                        console.log("response " + pk_po + " / " + fk_pr_id + " / " + pr_qty);

                        item = +pk_po + "/" + fk_pr_id + "/" + pr_qty;
                        d_global_array.push(item);

                    });
                    $("#transfer_here").val(d_global_array);
                    console.log("d_global_array " + d_global_array);


                },
                error: function(xhr) {

                }
            });


        } else {
            console.log("cancel");
        }
    }


    function clear_product_form() {

        get_date_today();
        action = "add";
        global_update_id = "1";
//        $("#pricing_name").val($("#target option:first").val());
        $('#pricing_name').val('Select Customer');
        $('#so_store').val('Select Store');
        $("textarea#so_location").val('');

        $('#so_order').val('Deliver');
        $('#so_pay').val('Cash');
        $('#so_status').val('Unpaid');

        $('#so_ar').val('');
        $('#so_qty').val('');
        $('#so_price').val('');


        $("#div_create").show();
        $("#div_update").hide();






        $('#example2').DataTable().clear().draw();
        $('#set_so_id').text("");
//        pre_load_data_product_mainte1();
//        $('#prod_name').val("");
//        $('#prod_size').val("");
//        $('#prod_brand').val("");
//        $('#prod_group').val("");
//        $('#prod_allow_sale').val("");
//        $('#prod_tract_price').val("");

        $('#pricing_name').attr("disabled", false);
        $('#btn_submit').attr("disabled", false);
    }


    function save() {

        alert("where are you from here");
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
        var name = $('#prod_name').val();
        var size = $('#prod_size').val();
        var brand = $('#prod_brand').val();
        var group = $('#prod_group').val();
        var sale = $('#prod_allow_sale').val();
        var price = $('#prod_tract_price').val();
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


            }
        });
    }


</script>

<script>
    $(document).ready(function() {
        $('#example2').dataTable({
            "bPaginate": false,
            "bLengthChange": true,
            "bFilter": false,
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
                    "targets": [0, 1, 2, 3, 4, 5, 6, 7, 8],
                    "defaultContent": ""
                }
            ],
            "lengthMenu": [[-1], ["All"]],
//            "scrollY": "300px"
            "sScrollXInner": "110%"
                    // "deferLoading": 57
        });
    });</script>


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
            "order": [[0, "desc"]],
            // "serverSide": true,
            // "ajax": "LoadEmpOverTime",
            "columnDefs": [
                {
                    //used to force the datable to accept null value
                    //the default content will be null
                    "targets": [0, 1, 2, 3, 4, 5, 6, 7, 8],
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

        $("#div_create").show();
        $("#div_update").show();

        var id = $(elem).attr("id");
        action = "edit";
        var pk_id = ($('#' + id + '').parent().siblings().eq(0).text());
        var name = ($('#' + id + '').parent().siblings().eq(1).text());
        var store = ($('#' + id + '').parent().siblings().eq(2).text());
        var order = ($('#' + id + '').parent().siblings().eq(3).text());
        var pay = ($('#' + id + '').parent().siblings().eq(4).text());
        var stat = ($('#' + id + '').parent().siblings().eq(5).text());
        var ar = ($('#' + id + '').parent().siblings().eq(6).text());

        $('#pricing_name').val(pk_id);
        $('#so_store').val(pk_id);
        $('#so_order').val(order);
        $('#so_pay').val(pay);
        $('#so_status').val(stat);
        $('#so_ar').val(ar);


        $('#set_so_id').text(pk_id);
        $('#pricing_name').attr("disabled", true);
        $('#btn_submit').attr("disabled", true);


//        global_update_id = pk_id;

//        var concat_id_and_name = pk_id + "/" + name;
//        $('#pricing_name').attr("disabled", true);
//        $("#pricing_name").val(concat_id_and_name);

//        load_data_product_mainte1(pk_id)
//        $('#pricing_name').val(name);
//        $('#prod_size').val(size);
//        $('#prod_brand').val(brand);
//        $('#prod_group').val(group);
//        $('#prod_allow_sale').val(sale);
//        $('#prod_tract_price').val(tract);
//        load_data_SO_per_customer(pk_id);
//        var x = "00025";
        edit_load_so_per_so(pk_id);
        load_sub_details_so(pk_id);

    }



    function edit_load_so_per_so(x) {
        action = "edit";
        console.log("success load load_data");
        $.ajax({
            type: "get", // GET or POST
            url: 'update_data_table_SO_per_customer', // Path to file
            data: {
                get_test: x,
                get_action: action
            },
            beforeSend: function() {                                // Before Ajax 

            },
            complete: function() {

                //$success.show();
            },
            success: function(response) {
// Show content
//                alert(response.toString());
                $('#example2').DataTable().clear().draw();
                var counting = 0;
                $.each(response, function(index, value) {

                    $('#set_so_date').text(value.time_stamp);
                    counting++;
                    var instock = value.inv_stock;
                    var committed = value.inv_so_not_F;
                    var available = value.inv_available;
                    var input_total_price = '<input id="my_price' + counting + '"  value=' + value.so_per_prc_item + ' class="form-control font_color" style="width:100%" value="0" type="text">';
                    var input_txt = '<input id="my_input' + counting + '"  onkeyup="set_total_qty_prc()" class="form-control font_color" style="width:100%" type="text" value=' + value.so_per_qty_item + '>';
                    var button = ' <button type="button"  id="my_update' + counting + '" onclick="update_elem(this)" class="btn btn-info btn-sm" data-target="#myModal-SO" data-toggle="modal">Edit</button> '
                            + ' <button type="button"   id="my_delete' + counting + '" onclick=" delete_about(this)" class="btn btn-danger btn-sm">Delete</button>';
                    $('#example2').DataTable().row.add([
                        value.so_pk,
                        value.so_product_name,
                        instock,
                        committed,
                        available,
                        value.so_price_per_item,
                        input_txt,
                        input_total_price


                    ]).draw();

                    if (value.so_final_status == "final") {
                        $('#btn_submit').prop("disabled", true);
                    }
                    else
                    {
                        $('#btn_submit').prop("disabled", false);
                    }

                    $('#my_price' + counting + '').attr('readonly', 'true'); // mark it as read only
                    $('#my_price' + counting + '').css('background-color', '#7FFF00'); // change the background color
                    $('td:nth-child(9),th:nth-child(9)').hide();
                });
            },
            error: function(xhr) {

            }
        });
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


            var get_total_qty = 0;
            var get_total_prc = 0;

            var get_customer_name = $("#pricing_name option:selected").text();
            var get_store_name = $("#so_store option:selected").text();


            $.ajax({
                type: "post", // GET or POST
                url: 'get_so_arraylist', // Path to file


                data: {
                    get_action: action,
                    get_fk_id: record,
                    get_pk_id: record,
                    get_sum_qty: get_total_qty,
                    get_sum_prc: get_total_prc,
                    get_store_name: get_store_name,
                    get_array_list: $("#transfer_here").val()

                },
                beforeSend: function() {
//                alert("before send " + pass_array);
                },
                complete: function() {


                },
                success: function(response) {
                    load_data_product_mainte();
                    d_global_array = [];
                    $("#transfer_here").val("");
                    document.getElementById('closeModalButton_product').click();
                },
                error: function(xhr) {

                }
            });
        } else {
            console.log("cancel");
        }



    }



    function load_data_product_mainte() {
        console.log("success load load_data");
        $.ajax({
            type: "get", // GET or POST
            url: 'Data_table_SO', // Path to file

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
                            + ' <button type="button" id="my_delete' + counting + '" onclick=" delete_about(this)" class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i></button> \n\
                                <button type="button" id="my_paid' + counting + '" onclick="update_paid_status(this)" class="btn btn-success btn-sm"><i class="fa fa-money"></i></button> \n\
                                <button type="button" id="my_final' + counting + '" onclick="change_status(this)" class="btn btn-success btn-sm"><i class="fa fa-thumbs-o-up"></i></button>';
                    $('#example1').DataTable().row.add([
                        value.so_fk,
                        value.so_customer,
                        value.so_store,
                        value.so_order,
                        value.so_payment,
                        value.so_status,
                        value.so_ar,
                        value.time_stamp,
                        button

                    ]).draw();

                    if (value.so_final_status == "final") {
                        $('#my_paid' + counting + '').prop("disabled", true);
                        $('#my_final' + counting + '').prop("disabled", true);
                        $('#my_delete' + counting + '').prop("disabled", true);
                        $('#my_update' + counting + '').removeClass('btn btn-info btn-sm').addClass('btn btn-success btn-sm');
                        $('#my_delete' + counting + '').removeClass('btn btn-danger btn-sm').addClass('btn btn-success btn-sm');

                    }


                    else if (value.so_status == "Unpaid") {
//                          alert("aw aw aw ");
                        $('#my_final' + counting + '').prop("disabled", true);
                        $('#my_delete' + counting + '').prop("disabled", false);
//                        $('#my_update' + counting + '').removeClass('btn btn-info btn-sm').addClass('btn btn-success btn-sm');
                        $('#my_final' + counting + '').removeClass('btn btn-danger btn-sm').addClass('btn btn-danger btn-sm');

                    }

                    else if (value.so_status == "Paid" && value.so_final_status == "not final") {
                        $('#my_paid' + counting + '').prop("disabled", true);
                        $('#my_final' + counting + '').prop("disabled", false);
                        $('#my_delete' + counting + '').prop("disabled", false);
//                        $('#my_update' + counting + '').removeClass('btn btn-info btn-sm').addClass('btn btn-success btn-sm');
                        $('#my_final' + counting + '').removeClass('btn btn-danger btn-sm').addClass('btn btn-success btn-sm');

                    }

//                    else
//                    {
//                        
//
//                        $('#my_final' + counting + '').prop("disabled", true);
//                        $('#my_update_span' + counting + '').text("Edit");
//                    }
                });
            },
            error: function(xhr) {

            }
        });
    }


    function test_drop() {
//        alert("aw aw aw");
        $.get('Dropdown_list_pricing', {
        }, function(jsonResponse) {
            var select = $('#pricing_name');
            // select.find('option').remove();
            $.each(jsonResponse, function(index, value) {
                $('<option>').val(value.price_fk_customer).text(value.price_fk_product_id).appendTo(select);
//                $('<option>').val(value.price_fk_customer + '/' + value.price_fk_product_id).text(value.price_fk_product_id).appendTo(select);
            });
        });
    }


    function load_data_product_mainte1(x) {
        action = "edit";
        console.log("success load load_data");
        $.ajax({
            type: "get", // GET or POST
            url: 'Load_Data_table_pricing_per_customer', // Path to file
            data: {
                get_test: x,
                get_action: action
            },
            beforeSend: function() {                                // Before Ajax 

            },
            complete: function() {

                //$success.show();
            },
            success: function(response) {
// Show content
//                alert(response.toString());
                $('#example2').DataTable().clear().draw();
                var counting = 0;
                $.each(response, function(index, value) {
                    counting++;
                    var instock = "not yet";
                    var committed = "not yet";
                    var available = "not yet";
                    var input_txt = '<input id="my_input' + counting + '"  class="form-control" style="width:100%" type="text" value=' + value.price_prc + '>';
                    var button = ' <button type="button"  id="my_update' + counting + '" onclick="update_elem(this)" class="btn btn-info btn-sm" data-target="#myModal-SO" data-toggle="modal">Edit</button> '
                            + ' <button type="button"   id="my_delete' + counting + '" onclick=" delete_about(this)" class="btn btn-danger btn-sm">Delete</button>';
                    $('#example2').DataTable().row.add([
                        value.price_id,
                        value.pr_name,
                        value.pr_tract,
                        instock,
                        committed,
                        available,
                        input_txt


                    ]).draw();
                });
            },
            error: function(xhr) {

            }
        });
    }




    function load_data_SO_per_customer(x) {
//        action = "edit";
        console.log("success load load_data");
        $.ajax({
            type: "get", // GET or POST
            url: 'Data_table_SO_per_customer', // Path to file
            data: {
                get_test: x,
                get_action: action
            },
            beforeSend: function() {                                // Before Ajax 

            },
            complete: function() {

                //$success.show();
            },
            success: function(response) {
// Show content
//                alert(response.toString());
                $('#example2').DataTable().clear().draw();
                var counting = 0;
                $.each(response, function(index, value) {
                    counting++;
                    var instock = value.inv_stock;
                    var committed = value.inv_so_not_F;
                    var available = value.inv_available;
                    var input_txt = '<input id="my_input' + counting + '"  class="form-control font_color" style="width:100%" value="0" type="number" min="0" onkeyup="set_total_qty_prc()">';
                    var input_total_price = '<input id="my_price' + counting + '"  class="form-control font_color" style="width:100%" value="0" type="text">';
                    var button = ' <button type="button"  id="my_update' + counting + '" onclick="update_elem(this)" class="btn btn-info btn-sm" data-target="#myModal-SO" data-toggle="modal">Edit</button> '
                            + ' <button type="button"   id="my_delete' + counting + '" onclick=" delete_about(this)" class="btn btn-danger btn-sm">Delete</button>';
                    $('#example2').DataTable().row.add([
                        value.price_id,
                        value.pr_name,
                        instock,
                        committed,
                        available,
                        value.price_prc,
                        input_txt,
                        input_total_price,
                        value.pr_id


                    ]).draw();
                    $('#my_price' + counting + '').attr('readonly', 'true'); // mark it as read only
                    $('#my_price' + counting + '').css('background-color', '#7FFF00'); // change the background color

                    $('td:nth-child(9),th:nth-child(9)').hide();

                });
            },
            error: function(xhr) {

            }
        });
    }


    function pre_load_data_product_mainte1() {
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
                $('#example2').DataTable().clear().draw();
                var counting = 0;
                $.each(response, function(index, value) {
                    counting++;
                    var input_txt = '<input id="my_input' + counting + '"  class="form-control"  value="0" type="text" style="width:100%">';
                    var button = ' <button type="button"  id="my_update' + counting + '" onclick="update_elem(this)" class="btn btn-info btn-sm" data-target="#myModal-SO" data-toggle="modal">Edit</button> '
                            + ' <button type="button"   id="my_delete' + counting + '" onclick=" delete_about(this)" class="btn btn-danger btn-sm">Delete</button>';
                    $('#example2').DataTable().row.add([
                        value.pr_id,
                        value.pr_name,
                        value.pr_tract,
                        input_txt


                    ]).draw();
                });
            },
            error: function(xhr) {

            }
        });
    }



    var d_global_array = [];
    action = "add";
    function get_all_data_line_item() {

        var table = $("#example2 tbody");
        var item;
        var get_input;
        var get_total_per_product;
        var prc;
        var qty;
        var get_type_order;
        var get_type_pay;
        var get_so_status;
        var get_ar;
        var get_total_qty = 0;
        var get_total_prc = 0;
        var set_fk = $("#pricing_name").val();
        var get_customer_name = $("#pricing_name option:selected").text();
        var get_store_name = $("#so_store option:selected").text();
        var get_date = $("#set_so_date_created").text();
        var get_remakrs = $("#so_remarks").val();
        if (get_remakrs == "") {
            get_remakrs = "No remarks yet";
        }
        table.find('tr').each(function(i) {
            get_type_order = $("#so_order").val();
            get_type_pay = $("#so_pay").val();
            get_so_status = $("#so_status").val();
            get_ar = $("#so_ar").val();
            get_input = $('#my_input' + (i + 1) + '').val();
            var $tds = $(this).find('td'),
                    Id = $tds.eq(0).text(),
                    productId = $tds.eq(1).text(),
                    instock = $tds.eq(2).text(),
                    commit = $tds.eq(3).text(),
                    avail = $tds.eq(4).text(),
                    price = $tds.eq(5).text(),
                    fk_product = $tds.eq(8).text();
//                    price = $tds.eq(3).text();
//                    total = $tds.eq(4).text();
            // do something with productId, product, Quantity
//            alert
//                    ('Row ' + (i + 1) + '-:\nId: ' + Id + " product id: " + productId
//                            + '\name: ' + get_input
//                            + '\nPrice: ' + price + " total: " + "total"
//                            );

            prc = parseFloat(price);
            qty = parseFloat(get_input);
            get_total_per_product = prc * qty;
            get_total_qty = qty + get_total_qty;
            get_total_prc = get_total_per_product + get_total_prc;
            item = Id + "/" + get_customer_name + "/" + get_type_order + "/" + get_type_pay + "/" + get_so_status + "/" + get_ar + "/" + productId + "/" + instock + "/" + commit + "/" + avail + "/" + price + "/" + get_input + "/" + get_total_per_product + "/" + fk_product + "/" + get_remakrs;
            d_global_array.push(item);
        });
        $("#so_qty").val(get_total_qty);
        $("#so_price").val(get_total_prc);
        $("#transfer_here").val(d_global_array);
        $.ajax({
            type: "post", // GET or POST
            url: 'get_so_arraylist', // Path to file


            data: {
                get_action: action,
                get_fk_id: set_fk,
                get_pk_id: get_customer_name,
                get_sum_qty: get_total_qty,
                get_sum_prc: get_total_prc,
                get_store_name: get_store_name,
                get_array_list: $("#transfer_here").val()

            },
            beforeSend: function() {
//                alert("before send " + pass_array);
            },
            complete: function() {


            },
            success: function(response) {
                load_data_product_mainte();
                d_global_array = [];
                $("#transfer_here").val("");
                document.getElementById('closeModalButton_product').click();
            },
            error: function(xhr) {

            }
        });
//        alert("get_total_qty " + get_total_qty);
//        alert("get_total_prc " + get_total_prc);
//        alert(d_global_array);
        d_global_array = [];
    }


    function drop_down_store() {
        $.get('Dropdown_list_store', {
        }, function(jsonResponse) {
            var select = $('#so_store');
            // select.find('option').remove()p
            $.each(jsonResponse, function(index, value) {
                $('<option>').val(value.c_id).text(value.c_store).appendTo(select);
            });
        });
    }


    function set_total_qty_prc() {

        var table = $("#example2 tbody");
        var get_input;
        var get_total_per_product;
        var prc;
        var qty;
        var get_total_qty = 0;
        var get_total_prc = 0;
        var x = 0;
        table.find('tr').each(function(i) {
            get_input = $('#my_input' + (i + 1) + '').val();
            var $tds = $(this).find('td'),
                    price = $tds.eq(5).text();
            prc = parseFloat(price);
            qty = parseFloat(get_input);
            get_total_per_product = prc * qty;
            get_total_qty = qty + get_total_qty;
            get_total_prc = get_total_per_product + get_total_prc;
//            alert(get_total_per_product + "/ " + i);

            x = parseInt(i) + parseInt(1);
            $('#my_price' + x + '').val(get_total_per_product);
        });
        $("#so_qty").val(get_total_qty);
        $("#so_price").val(get_total_prc);
    }




    function loadCustomer_location(x) {

        $.ajax({
            type: "GET", // GET or POST
            url: 'get_location_by_customer', // Path to file
            data: {
                get_customer: x
            },
            beforeSend: function() {
            },
            complete: function() {
            },
            success: function(responseText) {
                console.log(responseText);
                obj = JSON.parse(responseText);
                console.log(obj);
                var getLocation = obj.so_location;
                var getAr = obj.so_ar;
                $("textarea#so_location").val(getLocation);
                $("#so_ar").val(getAr);
            },
            error: function(xhr) {
                alert("an error occured");
            }
        });
    }




    function load_sub_details_so(x) {

        $.ajax({
            type: "GET", // GET or POST
            url: 'get_so_sub_details', // Path to file
            data: {
                get_customer: x
            },
            beforeSend: function() {
            },
            complete: function() {
            },
            success: function(responseText) {
                console.log(responseText);
                obj = JSON.parse(responseText);
                console.log(obj);
                var getso_fk = obj.so_fk;
                var getso_total_qty = obj.so_total_qty;
                var getso_total_prc = obj.so_total_prc;
                var getso_remarks = obj.so_remarks;
                $("#pricing_name").val(getso_fk);
                $("#so_store").val(getso_fk);
                $("#so_price").val(getso_total_prc);
                $("#so_qty").val(getso_total_qty);
                $("#so_remarks").val(getso_remarks);
                loadCustomer_location(getso_fk);
            },
            error: function(xhr) {
                alert("an error occured");
            }
        });
    }

    function unhide() {
        $('td:nth-child(9),th:nth-child(9)').show();

    }

    function update_change_status(x) {
        action = "update_final";

        $.ajax({
            type: "post", // GET or POST
            url: 'get_so_arraylist', // Path to file


            data: {
                get_action: action,
                get_pk_id: x,
                get_array_list: $("#transfer_here").val()

            },
            beforeSend: function() {
//                alert("before send " + pass_array);
//                $("#btn_submit").attr("disabled", true);
            },
            complete: function() {


            },
            success: function(response) {
                load_data_product_mainte();
                d_global_array = [];
                $("#transfer_here").val("");
//                document.getElementById('closeModalButton_product').click();
            },
            error: function(xhr) {
                console.log("error: " + xhr);
            }
        });
    }


    function update_paid_status(elem) {

        var id = $(elem).attr("id");
        var record = ($('#' + id + '').parent().siblings().eq(0).text());
        action = "paid";
//        alert(record);


        if (confirm("Are you sure?") == true) {

            $.ajax({
                type: "post", // GET or POST
                url: 'get_so_arraylist', // Path to file


                data: {
                    get_action: action,
                    get_pk_id: record,
                    get_array_list: $("#transfer_here").val()

                },
                beforeSend: function() {
                    //                alert("before send " + pass_array);
                    //                $("#btn_submit").attr("disabled", true);
                },
                complete: function() {


                },
                success: function(response) {
                    load_data_product_mainte();
                    d_global_array = [];
                    $("#transfer_here").val("");
                    //                document.getElementById('closeModalButton_product').click();
                },
                error: function(xhr) {
                    console.log("error: " + xhr);
                }
            });

        } else {
            console.log("cancel");
        }

    }


    function get_date_today() {

        var today = new Date();
        var dd = today.getDate();
        var mm = today.getMonth() + 1; //January is 0!
        var yyyy = today.getFullYear();

        if (dd < 10) {
            dd = '0' + dd
        }

        if (mm < 10) {
            mm = '0' + mm
        }

        today = mm + '/' + dd + '/' + yyyy;
        //        document.write(today); 
        $("#set_so_date_created").text(today);
    }



</script>

<script>

    $(document).ready(function() {

        test_drop();
        drop_down_store();

        $('#pricing_name').change(function(event) {
            var customer_name = $("select#pricing_name").val();
            //            var str = customer_name;
            //            var t = str.split("/");
            $('#so_store').val(customer_name);
            loadCustomer_location(customer_name);
            if (action == "add") {
                load_data_SO_per_customer(customer_name);
            }

//            alert(action);

        });
        $('#so_store').change(function(event) {
            var get_val = $("select#so_store").val();
            $('#pricing_name').val(get_val);
            load_data_SO_per_customer(get_val);
        });
        load_data_product_mainte();
        $('#myModal-SO').on('hidden.bs.modal', function() {
            unhide();
        });
        $('#so_qty').attr('readonly', 'true'); // mark it as read only
        $('#so_qty').css('background-color', '#ffffff'); // change the background color
        $('#so_price').attr('readonly', 'true'); // mark it as read only
        $('#so_price').css('background-color', '#ffffff'); // change the background color
        $('#so_location').attr('readonly', 'true'); // mark it as read only
        $('#so_location').css('background-color', '#ffffff'); // change the background color
        $('#so_ar').attr('readonly', 'true'); // mark it as read only
        $('#so_ar').css('background-color', '#ffffff'); // change the background color
//        pre_load_data_product_mainte1();

    });

</script>