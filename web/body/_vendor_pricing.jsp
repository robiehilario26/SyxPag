<!--main content start-->
<style>
    .font_color {

        color: #0090ff;

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
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button aria-hidden="true" data-dismiss="modal" class="close" id="closeModalButton_product" type="button">×</button>
                        <center><h4 class="modal-title">Add Pricing</h4></center>
                    </div>
                    <div class="modal-body">

                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Pricing name</label>
                                    <!--                                    <input class="form-control font_color" type="text" id="prod_name"/>-->
                                    <select class="form-control" id="pricing_name">
                                        <!--<option>G001</option>-->
                                    </select>

                                    <input id="transfer_here" class="form-control"  type="hidden">
                                </div>

                            </div>

                            <div class="adv-table">

                                <table class="display table table-bordered table-striped" id="example2">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Name</th>
                                            <th>Price</th>
                                            <!--<th style="width: 138px">Action</th>-->
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
                        <button type="button" onclick="get_all_data_line_item()" class="btn btn-primary">Submit</button>
                    </div>
                </div>
            </div>
        </div>







        <div class="row">
            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading">
                        Vendor Pricing
                    </header>

                    <div class="panel-body">
                        <div class="clearfix">
                            <div class="btn-group">
                                <button onclick=" clear_product_form()" class="btn btn-primary" data-target="#myModal-SO" data-toggle="modal">
                                    Add New Pricing <i class="fa fa-plus"></i>
                                </button>
                            </div>
                        </div>
                        <div class="space15"></div>
                        <div class="adv-table">

                            <table class="display table table-bordered table-striped" id="example1">
                                <thead>
                                    <tr>
                                        <th style="width: 138px">ID</th>
                                        <th>Name</th>
                                        <th style="width: 120px">Action</th>
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
                                        <th style="width: 138px" >ID</th>
                                        <th>Name</th>
                                        <th style="width: 120px">Action</th>
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
        pre_load_data_product_mainte1();
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
            url: 'Controller_vendor_mainte', // Path to file

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
                    "targets": [0, 1, 2],
                    "defaultContent": ""
                }
            ],
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
            "order": [[0, "asc"]],
            // "serverSide": true,
            // "ajax": "LoadEmpOverTime",
            "columnDefs": [
                {
                    //used to force the datable to accept null value
                    //the default content will be null
                    "targets": [0, 1, 2],
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
        var name = ($('#' + id + '').parent().siblings().eq(1).text());
        var size = ($('#' + id + '').parent().siblings().eq(2).text());
        var brand = ($('#' + id + '').parent().siblings().eq(3).text());
        var group = ($('#' + id + '').parent().siblings().eq(4).text());
        var sale = ($('#' + id + '').parent().siblings().eq(5).text());
        var tract = ($('#' + id + '').parent().siblings().eq(6).text());
        global_update_id = pk_id;

        var concat_id_and_name = pk_id + "/" + name;
        $('#pricing_name').attr("disabled", true);
        $("#pricing_name").val(concat_id_and_name);

        load_data_product_mainte1(pk_id)
//        $('#pricing_name').val(name);
//        $('#prod_size').val(size);
//        $('#prod_brand').val(brand);
//        $('#prod_group').val(group);
//        $('#prod_allow_sale').val(sale);
//        $('#prod_tract_price').val(tract);
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
                url: 'Get_pricing_arraylist_vendor', // Path to file

                data: {
                    get_action: action,
                    get_pk_id: global_update_id,
                    get_array_list: $("#transfer_here").val()
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



    function load_data_product_mainte() {
        console.log("success load load_data");
        $.ajax({
            type: "get", // GET or POST
            url: 'Data_table_pricing_maintenance_vendor', // Path to file

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
                        button

                    ]).draw();
                });
            },
            error: function(xhr) {

            }
        });
    }


    function test_drop() {
//        alert("aw aw aw");
        $.get('Dropdown_list_pricing_vendor', {
        }, function(jsonResponse) {
            var select = $('#pricing_name');
            // select.find('option').remove();
            $.each(jsonResponse, function(index, value) {
                $('<option>').val(value.price_fk_customer + '/' + value.price_fk_product_id).text(value.price_fk_product_id).appendTo(select);
            });
        });
    }


    function load_data_product_mainte1(x) {
        action = "edit";
        console.log("success load load_data");
        $.ajax({
            type: "get", // GET or POST
            url: 'Load_Data_table_pricing_per_vendor', // Path to file
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
                    var input_txt = '<input id="my_input' + counting + '"  class="form-control"  type="text" value=' + value.price_prc + '>';
                    var button = ' <button type="button"  id="my_update' + counting + '" onclick="update_elem(this)" class="btn btn-info btn-sm" data-target="#myModal-SO" data-toggle="modal"><i class="fa fa-list"></i></button> '
                            + ' <button type="button"   id="my_delete' + counting + '" onclick=" delete_about(this)" class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i></button>';
                    $('#example2').DataTable().row.add([
                        value.price_id,
                        value.pr_name,
                        input_txt


                    ]).draw();
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
                    var input_txt = '<input id="my_input' + counting + '"  class="form-control"  type="text">';
                    var button = ' <button type="button"  id="my_update' + counting + '" onclick="update_elem(this)" class="btn btn-info btn-sm" data-target="#myModal-SO" data-toggle="modal">Edit</button> '
                            + ' <button type="button"   id="my_delete' + counting + '" onclick=" delete_about(this)" class="btn btn-danger btn-sm">Delete</button>';
                    $('#example2').DataTable().row.add([
                        value.pr_id,
                        value.pr_name,
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

        var rowCount = $('#example2 tr').length;


        var get_pricing_name = $("#pricing_name").val();
        table.find('tr').each(function(i) {

            get_input = $('#my_input' + (i + 1) + '').val();
            var $tds = $(this).find('td'),
                    Id = $tds.eq(0).text(),
                    productId = $tds.eq(1).text();
//                    price = $tds.eq(3).text();
//                    total = $tds.eq(4).text();
            // do something with productId, product, Quantity
//            alert
//                    ('Row ' + (i + 1) + '-:\nId: ' + Id + " product id: " + productId
//                            + '\name: ' + get_input
//                            + '\nPrice: ' + price + " total: " + "total"
//                            );
            item = get_pricing_name + "/" + productId + "/" + get_input + "/" + Id;
            d_global_array.push(item);

        });


        $("#transfer_here").val(d_global_array);
        $.ajax({
            type: "post", // GET or POST
            url: 'Get_pricing_arraylist_vendor', // Path to file


            data: {
                get_action: action,
                get_pk_id: get_pricing_name,
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


//        alert(d_global_array);
    }

</script>

<script>

    $(document).ready(function() {

        load_data_product_mainte();
        test_drop();
        pre_load_data_product_mainte1();
    });

</script>