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

    body.modal-open {
        overflow: hidden;
        position: fixed;
    }


    .inventory_related thead {
        display: none;
    }

    /*    .table td {
            text-align: center;   
        }*/

    /*    .scrollStyle
        {
            overflow-x:auto;
        }*/



    .dataTables_wrapper {
        overflow: auto;
    }
</style>

<section id="main-content">
    <section class="wrapper site-min-height">
        <!-- page start-->


        <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal-1" class="modal fade">
            <div class="modal-dialog modal-lg">
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
                        <button type="button" onclick="save_edit_about_content()" class="btn btn-primary">Submit</button>
                    </div>
                </div>
            </div>
        </div>



        <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal-SO" class="modal fade">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <button aria-hidden="true" data-dismiss="modal" class="close" id="closeModalButton_product" type="button">×</button>
                        <center><h4 class="modal-title">PO# <span id="set_so_id"></span></h4> <span id="set_so_date"></span></center>
                    </div>
                    <div class="modal-body">

                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <div class="col-md-4">
                                    <label>Vendor name</label>
                                    <!--                                    <input class="form-control font_color" type="text" id="prod_name"/>-->
                                    <select class="form-control col-md-6 font_color" id="pricing_name">
                                        <option value="Select Customer">Select Customer</option>
                                    </select>

                                    <input id="transfer_here" class="form-control"  type="hidden"/>
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
                                    <label>Delivery Date</label>
                                    <input type="date" class="form-control font_color" name="po_date_delivery" id="po_date_delivery"/>
                                </div>
                                <div class="col-md-2">
                                    <label>QTY</label>
                                    <input type="text" class="form-control font_color" id="so_qty" readonly disabled="disabled"/>
                                </div>
                            </div>
                            <div class="form-group">

                                <div class="col-md-3">
                                    <label>Contact Person</label>
                                    <input type="text" class="form-control font_color" readonly id="po_contact_person" readonly disabled="disabled"/>
                                </div>

                                <div class="col-md-3">

                                    <label>Contact Number</label>
                                    <input type="text" class="form-control font_color" readonly id="po_contact_no" readonly disabled="disabled"/>
                                </div>
                                <div class="col-md-2">
                                    <label>Other Discount</label>
                                    <input class="form-control font_color" onkeyup="set_total_qty_prc()" type="number" min="0" value="0" id="po_other_discount"/>

                                </div>

                                <div class="col-md-2">
                                    <label>Total Discount</label>
                                    <input class="form-control font_color font_color" type="text" id="po_total_discount" readonly disabled="disabled"/>
                                </div>

                                <div class="col-md-2">
                                    <!--                                    <label>QTY</label>
                                                                        <input type="text" class="form-control font_color" id="so_qty"/>-->
                                    <label>PRICE</label>
                                    <input type="text" class="form-control font_color" id="so_price" readonly disabled="disabled"/>
                                </div>

                            </div>

                            <div class="adv-table">

                                <table class="table table-responsive dataTables_wrapper" id="example2">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Product</th>
                                            <th>Instock</th>
                                            <th>Available</th>
                                            <th>after PO</th>
                                            <th>Price</th>
                                            <th style="width:50px">QTY</th>
                                            <th>Total Price</th>
                                            <th>Discount Amount</th>
                                            <th>Discount %</th>
                                            <th style="width:100px">After Discount </th>
                                            <th style="width:0px"></th>
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


                        </form>
                    </div>

                    <div class="modal-footer no-border">
                        <button type="button" id="btn_submit" onclick="get_all_data_line_item()" class="btn btn-primary">Submit</button>

                    </div>
                </div>
            </div>
        </div>







        <div class="row">
            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading">
                        Purchased Order
                    </header>

                    <div class="panel-body">
                        <div class="clearfix">
                            <div class="btn-group">
                                <button onclick=" clear_product_form()" class="btn btn-primary" data-target="#myModal-SO" data-toggle="modal" data-backdrop="static">
                                    Create PO <i class="fa fa-plus"></i>
                                </button>
                            </div>
                        </div>
                        <div class="space15"></div>
                        <div class="adv-table">

                            <table class="display table table-bordered table-striped" id="example1">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Vendor</th>
                                        <th>Order</th>
                                        <th>Payment</th>
                                        <th>Status</th>
                                        <th>Date</th>
                                        <th style="width: 110px">Action</th>

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
                                        <th>Vendor</th>
                                        <th>Order</th>
                                        <th>Payment</th>
                                        <th>Status</th>
                                        <th>Date</th>
                                        <th style="width: 110px">Action</th>
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

        var get_first_item;
        action = "add";
        global_update_id = "1";
        $("#btn_submit").attr("disabled", false);
        $('#pricing_name').attr('disabled', false);
        $("#pricing_name").val($("#pricing_name option:eq(0)").val());
        get_first_item = $("#pricing_name").val();
        load_data_PO_per_customer(get_first_item);
        $('#so_order').val('Deliver');
        $('#so_pay').val('Cash');
        $('#po_other_discount').val('0');
        $('#po_total_discount').val('0');
        $('#po_contact_person').val('');
        $('#po_contact_no').val('');
        $('#so_qty').val('');
        $('#so_price').val('');




        var table = $('#example2').DataTable();

        $('#example2').DataTable().clear().draw();
//        $('#example2').DataTable().



//        $('#container').css('display', 'block');
        table.columns.adjust().draw();


        $('#set_so_id').text("");
//        pre_load_data_product_mainte1();
//        $('#prod_name').val("");
//        $('#prod_size').val("");
//        $('#prod_brand').val("");
//        $('#prod_group').val("");
//        $('#prod_allow_sale').val("");
//        $('#prod_tract_price').val("");

        $('#pricing_name').attr("disabled", false);
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
            "responsive": true,
            "bAutoWidth": true,
//            "serverside": true,
            // "order": [[4, "date_modified"]],
            "order": [[0, "asc"]],
            // "serverSide": true,
            // "ajax": "LoadEmpOverTime",
            "columnDefs": [
                {
                    //used to force the datable to accept null value
                    //the default content will be null
                    "targets": [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11],
                    "defaultContent": ""
                }
            ],
            "lengthMenu": [[-1], ["All"]],
            "sScrollXInner": "110%",
//            "scrollY": "300px"
//            scrollX: "100px"

//            "scrollX": true
            // "deferLoading": 57
        });
    });
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
                    "targets": [0, 1, 2, 3, 4, 5, 6],
                    "defaultContent": ""
                }
            ]
                    // "deferLoading": 57
        });
    });

    function update_elem(elem) {
        $("#btn_submit").attr("disabled", false);
        var id = $(elem).attr("id");
        action = "edit";
        var pk_id = ($('#' + id + '').parent().siblings().eq(0).text());
        var order = ($('#' + id + '').parent().siblings().eq(2).text());
        var pay = ($('#' + id + '').parent().siblings().eq(3).text());

        $('#pricing_name').val(pk_id);
        $('#so_order').val(order);
        $('#so_pay').val(pay);
        $('#set_so_id').text(pk_id);

        edit_load_po_per_po(pk_id);

    }

    function edit_load_po_per_po(x) {
        action = "edit";
        console.log("success load load_data");
        $.ajax({
            type: "get", // GET or POST
            url: 'update_data_table_PO_per_vendor', // Path to file
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
                    var check_final = value.po_final_status.value;
                    $('#pricing_name').val(value.po_fk);
                    $('#pricing_name').attr('disabled', true);
                    $('#po_contact_person').val(value.v_primary_contact);
                    $('#po_contact_no').val(value.v_contact1);
                    $('#po_other_discount').val(value.po_other_discount);
                    $('#po_total_discount').val(value.po_total_discount);
                    $('#so_qty').val(value.po_total_qty);
                    $('#so_price').val(value.po_total_prc);
                    $('#set_so_date').text(value.time_stamp);
                    po_date_delivery.value = value.po_delivery;
//                    $("#po_date_delivery").datepicker("setDate","14-12-4"); 
//                    $('#po_date_delivery').datepicker('setDate', new Date(value.po_delivery)); 
                    counting++;
//                    var discount_amt = "not yet";
//                    var discount_prcnt = "not yet";
//                    var after_discount = "not_yet";
//                    var instock = "not yet";
//                    var committed = "not yet";
//                    var available = "not yet";
//                    var input_total_price = '<input id="my_price' + counting + '"  value=' + value.so_per_prc_item + ' class="form-control font_color" style="width:100%" value="0" type="text">';
//                    var input_txt = '<input id="my_input' + counting + '"  onchange="set_total_qty_prc()" class="form-control font_color" style="width:100%" type="text" value=' + value.so_per_qty_item + '>';
//                    var button = ' <button type="button"  id="my_update' + counting + '" onclick="update_elem(this)" class="btn btn-info btn-sm" data-target="#myModal-SO" data-toggle="modal">Edit</button> '
//                            + ' <button type="button"   id="my_delete' + counting + '" onclick=" delete_about(this)" class="btn btn-danger btn-sm">Delete</button>';
//                    $('#example2').DataTable().row.add([
//                        value.so_pk,
//                        value.so_product_name,
//                        instock,
//                        committed,
//                        available,
//                        value.so_price_per_item,
//                        input_txt,
//                        input_total_price,
//                        discount_amt,
//                        discount_prcnt,
//                        after_discount
//
//                    ]).draw();
//                    $('#my_price' + counting + '').attr('readonly', 'true'); // mark it as read only
//                    $('#my_price' + counting + '').css('background-color', '#7FFF00'); // change the background color
//


                    var instock = value.inv_stock;
                    var committed = value.inv_available;
                    var available_after = '<input id="my_stock_after' + counting + '"  class="form-control font_color" readonly style="width:100%" value="' + value.inv_future_po + '" type="text" disabled="disabled">';
                    var discount_amt = '<input id="my_discount' + counting + '"  class="form-control font_color" style="width:100%" value="' + value.po_D_amount + '" type="number" min="0" onchange="set_total_qty_prc()" onkeyup="set_total_qty_prc()" autocomplete="off">';
                    var discount_prcnt = '<input id="my_discount_percent' + counting + '"  class="form-control font_color" style="width:100%" value="' + value.po_D_percent + '" type="number" min="0" onchange="set_total_qty_prc()" onkeyup="set_total_qty_prc()" autocomplete="off">';
                    var after_discount = '<input id="my_after_discount' + counting + '"  class="form-control font_color" style="width:100%" value="' + value.po_A_discount + '" type="text" readonly disabled="disabled">';
                    var input_txt = '<input id="my_input' + counting + '"  class="form-control font_color" style="width:100%" value="' + value.po_per_qty_item + '" type="number" onchange="set_total_qty_prc()" onkeyup="set_total_qty_prc()" min="0" autocomplete="off">';
                    var input_total_price = '<input id="my_price' + counting + '"  class="form-control font_color" style="width:100%" value="' + value.po_total_prc_perItem + '" type="text" readonly disabled="disabled">';
                    $('#example2').DataTable().row.add([
                        value.po_pk,
                        value.po_product_name,
                        instock,
                        committed,
                        available_after,
                        value.po_per_prc_item,
                        input_txt,
                        input_total_price,
                        discount_amt,
                        discount_prcnt,
                        after_discount



                    ]).draw();
                    $('#my_price' + counting + '').attr('readonly', 'true'); // mark it as read only
                    $('#my_price' + counting + '').css('background-color', '#7FFF00'); // change the background color

                    $('#my_after_discount' + counting + '').attr('readonly', 'true'); // mark it as read only
                    $('#my_after_discount' + counting + '').css('background-color', '#FFA500'); // change the background color

                    if (value.po_final_status == "final") {
                        $('#btn_submit').prop("disabled", true);
                    }
                    else
                    {
                        $('#btn_submit').prop("disabled", false);
                    }

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




    function update_change_status(x) {
        action = "update_final";
        var get_customer_name = "00001,test";
        $.ajax({
            type: "post", // GET or POST
            url: 'get_po_arraylist', // Path to file


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



    function change_status(elem) {
        var id = $(elem).attr("id");
        var record = ($('#' + id + '').parent().siblings().eq(0).text());
        action = "update_final";
        global_update_id = record;

        if (confirm("Are you sure?") == true) {
            $.ajax({
                type: "get", // GET or POST
                url: 'update_data_table_PO_per_vendor', // Path to file
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

                        var fk_pr_id = value.po_product_id;
                        var pr_qty = value.po_per_qty_item;
                        var pk_po = value.po_pk;

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

    function load_data_product_mainte() {
        console.log("success load load_data");
        $.ajax({
            type: "get", // GET or POST
            url: 'Data_table_PO', // Path to file

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
                            + ' <button type="button"   id="my_delete' + counting + '" onclick="delete_about(this)" class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i></button>  \n\
                                <button type="button" id="my_final' + counting + '" onclick="change_status(this)" class="btn btn-success btn-sm"><i class="fa fa-thumbs-o-up"></i></button>  ';
                    $('#example1').DataTable().row.add([
                        value.po_fk,
                        value.po_vendor,
                        value.po_order,
                        value.po_payment,
                        value.po_status,
                        value.time_stamp,
                        button

                    ]).draw();

                    if (value.po_final_status == "final") {
                        $('#my_final' + counting + '').prop("disabled", true);
                        $('#my_delete' + counting + '').prop("disabled", true);
                        $('#my_update' + counting + '').removeClass('btn btn-info btn-sm').addClass('btn btn-success btn-sm');
                        $('#my_delete' + counting + '').removeClass('btn btn-danger btn-sm').addClass('btn btn-success btn-sm');

                    }
                    else
                    {
                        $('#my_final' + counting + '').prop("disabled", false);
                        $('#my_update_span' + counting + '').text("Edit");
                    }
                });
            },
            error: function(xhr) {

            }
        });
    }


    function test_drop() {
//        alert("aw aw aw");
        $.get('Dropdown_list_PO', {
        }, function(jsonResponse) {
            var select = $('#pricing_name');
            // select.find('option').remove();
            $.each(jsonResponse, function(index, value) {
                $('<option>').val(value.price_fk_customer).text(value.price_fk_product_id).appendTo(select);
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




    function    load_data_PO_per_customer(x) {
//        action = "edit";
        console.log("success load load_data");
        $.ajax({
            type: "get", // GET or POST
            url: 'Data_table_PO_per_customer', // Path to file
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
                    var committed = value.inv_available;
                    var available_after = '<input id="my_stock_after' + counting + '"  class="form-control font_color" readonly style="width:100%" value="' + value.inv_future_po + '" step="0.25" type="text" disabled="disabled">';
                    var discount_amt = '<input id="my_discount' + counting + '"  class="form-control font_color" style="width:100%" value="0" type="number" min="0" onchange="set_total_qty_prc()" onkeyup="set_total_qty_prc()" autocomplete="off">';
                    var discount_prcnt = '<input id="my_discount_percent' + counting + '"  class="form-control font_color" style="width:100%" value="0" type="number" min="0" onchange="set_total_qty_prc()" onkeyup="set_total_qty_prc()" autocomplete="off">';
                    var after_discount = '<input id="my_after_discount' + counting + '"  class="form-control font_color" style="width:100%" value="0" type="text" readonly disabled="disabled">';
                    var input_txt = '<input id="my_input' + counting + '"  class="form-control font_color" style="width:100%" value="0" type="number" onchange="set_total_qty_prc()" onkeyup="set_total_qty_prc()" min="0" autocomplete="off">';
                    var input_total_price = '<input id="my_price' + counting + '"  class="form-control font_color" style="width:100%" value="0" type="text" readonly disabled="disabled">';
                    $('#example2').DataTable().row.add([
                        value.price_id,
                        value.pr_name,
                        instock,
                        committed,
                        available_after,
                        value.price_prc,
                        input_txt,
                        input_total_price,
                        discount_amt,
                        discount_prcnt,
                        after_discount,
                        value.pr_id



                    ]).draw();
                    $('#my_price' + counting + '').attr('readonly', 'true'); // mark it as read only
                    $('#my_price' + counting + '').css('background-color', '#7FFF00'); // change the background color

                    $('#my_after_discount' + counting + '').attr('readonly', 'true'); // mark it as read only
                    $('#my_after_discount' + counting + '').css('background-color', '#FFA500'); // change the background color

                    $('td:nth-child(12),th:nth-child(12)').hide();
                });

//                var table = $('#example2').DataTable();
//                $('#container').css('display', 'block');
//                table.columns.adjust().draw();
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
//        var get_cperson;
        var get_total_qty = 0;
        var get_total_prc = 0;
        var set_fk = $("#pricing_name").val();

        var get_other_discount = $("#po_other_discount").val();
        var get_total_discount = $("#po_total_discount").val();
        var get_customer_name = $("#pricing_name option:selected").text();
        var get_cperson;

        var get_after_po;
        var per_itm_discountAmt;
        var per_itm_discountPrcent;
        var per_itm_afterDiscount;
        table.find('tr').each(function(i) {
            get_type_order = $("#so_order").val();
            get_type_pay = $("#so_pay").val();
            get_so_status = $("#po_date_delivery").val();
//            alert(get_so_status);
            get_cperson = $("#po_contact_person").val();
            get_input = $('#my_input' + (i + 1) + '').val();
            get_after_po = $('#my_stock_after' + (i + 1) + '').val();
            per_itm_discountAmt = $('#my_discount' + (i + 1) + '').val();
            per_itm_discountPrcent = $('#my_discount_percent' + (i + 1) + '').val();
            per_itm_afterDiscount = $('#my_after_discount' + (i + 1) + '').val();
            var $tds = $(this).find('td'),
                    Id = $tds.eq(0).text(),
                    productId = $tds.eq(1).text(),
                    instock = $tds.eq(2).text(),
                    commit = $tds.eq(3).text(),
                    price = $tds.eq(5).text(),
                    fk_product = $tds.eq(11).text();

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
//            get_total_prc = get_total_per_product + get_total_prc;
            item = Id + "/" + get_customer_name + "/" + get_type_order + "/" + get_type_pay + "/" + get_so_status + "/" + get_cperson + "/" + productId + "/" + instock + "/" + commit + "/" + get_after_po + "/" + price + "/" + get_input + "/" + get_total_per_product + "/" + per_itm_discountAmt + "/" + per_itm_discountPrcent + "/" + per_itm_afterDiscount + "/" + fk_product;
            d_global_array.push(item);
        });
        $("#so_qty").val(get_total_qty);
        get_total_prc = $("#so_price").val();
        $("#transfer_here").val(d_global_array);



        $.ajax({
            type: "post", // GET or POST
            url: 'get_po_arraylist', // Path to file


            data: {
                get_action: action,
                get_fk_id: set_fk,
                get_pk_id: get_customer_name,
                get_sum_qty: get_total_qty,
                get_sum_prc: get_total_prc,
                get_c_personName: get_cperson,
                get_o_discount: get_other_discount,
                get_t_discount: get_total_discount,
                get_array_list: $("#transfer_here").val()

            },
            beforeSend: function() {
//                alert("before send " + pass_array);
                $("#btn_submit").attr("disabled", true);
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
                console.log("error: " + xhr);
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
        var get_other_discount = $("#po_other_discount").val();
        var table = $("#example2 tbody");
        var get_input;
        var get_discount_amt;
        var get_discount_percent;
        var get_total_per_product;
        var prc;
        var qty;
        var get_total_qty = 0;
        var get_total_prc = 0;
        var x = 0;
        var set_total_after = 0;
        var get_total_discount_amt = 0;
        var get_total_discount_percent = 0;
        var set_total_price = 0;
        var total_A_discount = 0;
        table.find('tr').each(function(i) {
            get_discount_amt = $('#my_discount' + (i + 1) + '').val();
            get_discount_percent = $('#my_discount_percent' + (i + 1) + '').val();
            get_input = $('#my_input' + (i + 1) + '').val();
            var $tds = $(this).find('td'),
                    price = $tds.eq(5).text();
            prc = parseFloat(price);
            qty = parseFloat(get_input);
            get_total_per_product = prc * qty;
            get_total_qty = qty + get_total_qty;

//            alert(get_total_per_product + "/ " + i);
//            console.log("get_discount_amt: " + get_discount_amt + " get_discount_percent: " + get_discount_percent);
            x = parseInt(i) + parseInt(1);
            get_discount_percent = (get_total_per_product * get_discount_percent) / 100;
            get_total_discount_percent = parseFloat(get_total_discount_percent.toFixed(2)) + parseFloat(get_discount_percent.toFixed(2));
            get_total_discount_amt = parseFloat(get_total_discount_amt) + parseFloat(get_discount_amt);

//            console.log("percent: " + get_discount_percent);
            set_total_after = (get_total_per_product - get_discount_amt) - get_discount_percent;
            $('#my_price' + x + '').val(get_total_per_product);
            $('#my_after_discount' + x + '').val(set_total_after);

            get_total_prc = set_total_after + get_total_prc;
        });

        set_total_price = parseFloat(get_total_prc.toFixed(2)) - get_other_discount;
        $("#so_qty").val(get_total_qty);
//        $("#so_price").val(parseFloat(get_total_prc.toFixed(2)) - get_other_discount);
        $("#so_price").val(set_total_price.toFixed(2));
        total_A_discount = parseFloat(get_total_discount_percent.toFixed(2)) + parseFloat(get_total_discount_amt.toFixed(2));
//        $("#po_total_discount").val(parseFloat(get_total_discount_percent.toFixed(2)) + parseFloat(get_total_discount_amt.toFixed(2)));
        $("#po_total_discount").val(total_A_discount.toFixed(2));
        var myFilter;
        myFilter = (get_other_discount > get_total_prc) ? alert("Invalid Discount Value") : null;



    }




    function loadVendor_info(x) {
        $.ajax({
            type: "GET", // GET or POST
            url: 'get_vendor_info', // Path to file
            data: {get_customer: x},
            beforeSend: function() {
            },
            complete: function() {
            },
            success: function(responseText) {
                console.log(responseText);
                obj = JSON.parse(responseText);
                console.log(obj);
                var getPrimary = obj.po_primary;
                var getContact1 = obj.po_contact1;

                $("#po_contact_person").val(getPrimary);
                $("#po_contact_no").val(getContact1);
            },
            error: function(xhr) {
                alert("an error occured " + xhr);
            }
        });
    }




    function load_sub_details_so(x) {
        $.ajax({
            type: "GET", // GET or POST
            url: 'get_so_sub_details', // Path to file
            data: {get_customer: x},
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
                $("#pricing_name").val(getso_fk);
                $("#so_store").val(getso_fk);
                $("#so_price").val(getso_total_prc);
                $("#so_qty").val(getso_total_qty);
                loadVendor_info(getso_fk);
            },
            error: function(xhr) {
                alert("an error occured");
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


        $('#pricing_name').change(function(event) {
            var vendor_name = $("select#pricing_name").val();
//            var str = customer_name;
//            var t = str.split("/");
//            $('#so_store').val(vendor_name);
            loadVendor_info(vendor_name);
            if (action == "add") {
                load_data_PO_per_customer(vendor_name);
            }

//            alert(action);


        });
        $('#so_store').change(function(event) {
            var get_val = $("select#so_store").val();
            $('#pricing_name').val(get_val);
            load_data_PO_per_customer(get_val);
        });
        load_data_product_mainte();
        test_drop();
        drop_down_store();
        $('#so_qty').attr('readonly', 'true'); // mark it as read only
        $('#so_qty').css('background-color', '#ffffff'); // change the background color
        $('#so_price').attr('readonly', 'true'); // mark it as read only
        $('#so_price').css('background-color', '#ffffff'); // change the background color
        $('#so_location').attr('readonly', 'true'); // mark it as read only
        $('#so_location').css('background-color', '#ffffff'); // change the background color
        $('#so_ar').attr('readonly', 'true'); // mark it as read only
        $('#so_ar').css('background-color', '#ffffff'); // change the background color
        $('#po_contact_person').css('background-color', '#FFFFFF'); // change the background color
        $('#po_total_discount').css('background-color', '#FFFFFF'); // change the background color
        $('#po_contact_no').css('background-color', '#FFFFFF'); // change the background color
//        pre_load_data_product_mainte1();

        $('#po_date_delivery').val(new Date().toDateInputValue());






    });


</script>


