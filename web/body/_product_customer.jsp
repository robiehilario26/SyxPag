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
                        <center><h4 class="modal-title">Add Customer</h4></center>
                    </div>
                    <div class="modal-body" ng-app="">

                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Store</label>
                                    <input class="form-control font_color" type="text" onchange="updateInput(this.value)" id="c_store"/>

                                </div>

                            </div>

                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Owner</label>
                                    <input class="form-control font_color" type="text" id="c_owner"/>

                                </div>

                            </div>

                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Contact #</label>
                                    <input class="form-control font_color" type="text" id="c_contact"/>

                                </div>

                            </div>


                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Location</label>
                                    <input class="form-control font_color" type="text" id="c_location"/>

                                </div>

                            </div>


                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Sub Location</label>
                                    <input class="form-control font_color" type="text" id="c_sub_location"/>

                                </div>

                            </div>

                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Pricing name</label>
                                    <input class="form-control font_color" readonly type="text" id="c_pricing_name"/>

                                </div>

                            </div>

                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>AR</label>
                                    <input class="form-control font_color" type="text" id="c_ar"/>

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
                        Customer Maintenance
                    </header>

                    <div class="panel-body">
                        <div class="clearfix">
                            <div class="btn-group">
                                <button onclick=" clear_product_form()" class="btn btn-primary" data-target="#myModal-SO" data-toggle="modal">
                                    Add New Customer <i class="fa fa-plus"></i>
                                </button>
                            </div>
                        </div>
                        <div class="space15"></div>
                        <div class="adv-table">

                            <table class="display table table-bordered table-striped" id="example1">
                                <thead> 
                                    <tr>
                                        <th>ID</th>
                                        <th>Store</th>
                                        <th>Owner</th>
                                        <th>Contact #</th>
                                        <th>Location</th>
                                        <th>Sub Location</th>
                                        <th>Pricing name</th>
                                        <th style="width: 90px">AR</th>
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
                                        <th>Store</th>
                                        <th>Owner</th>
                                        <th>Contact #</th>
                                        <th>Location</th>
                                        <th>Sub Location</th>
                                        <th>Pricing name</th>
                                        <th style="width: 90px">AR</th>
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
        $('#c_store').val("");
        $('#c_owner').val("");
        $('#c_contact').val("");
        $('#c_location').val("");
        $('#c_sub_location').val("");
        $('#c_pricing_name').val("");
        $('#c_ar').val("");

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
//        action = "add";
        var myFilter;
        var filter = false;
        var store = $('#c_store').val();
        var owner = $('#c_owner').val();
        var contact = $('#c_contact').val();
        var location = $('#c_location').val();
        var sub_location = $('#c_sub_location').val();
        var pricing_name = $('#c_pricing_name').val();
        var ar = $('#c_ar').val();

        myFilter = (store == "" || owner == "" || contact == "" || location == "" || sub_location == "" || ar == "") ? filter = false : filter = true;
        if (filter == true) {
            $.ajax({
                type: "post", // GET or POST
                url: 'Controller_customer_mainte', // Path to file

                data: {
                    "get_global_id": global_update_id,
                    "get_action": action,
                    "c_store": store,
                    "c_owner": owner,
                    "c_contact": contact,
                    "c_location": location,
                    "c_sub_location": sub_location,
                    "c_ar": ar,
                    "c_pricing_name": pricing_name




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

        var id = $(elem).attr("id");
        action = "edit";
        var pk_id = ($('#' + id + '').parent().siblings().eq(0).text());
        var store = ($('#' + id + '').parent().siblings().eq(1).text());
        var owner = ($('#' + id + '').parent().siblings().eq(2).text());
        var contact = ($('#' + id + '').parent().siblings().eq(3).text());
        var location = ($('#' + id + '').parent().siblings().eq(4).text());
        var sub_location = ($('#' + id + '').parent().siblings().eq(5).text());
        var pricing_name = ($('#' + id + '').parent().siblings().eq(6).text());
        var ar = ($('#' + id + '').parent().siblings().eq(7).text());

        global_update_id = pk_id;
        console.log(global_update_id);

        $('#c_store').val(store);
        $('#c_owner').val(owner);
        $('#c_contact').val(contact);
        $('#c_location').val(location);
        $('#c_sub_location').val(sub_location);
        $('#c_pricing_name').val(pricing_name);
        $('#c_ar').val(ar);



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
                url: 'Controller_customer_mainte', // Path to file

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
            url: 'Data_table_customer_maintenance', // Path to file


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
                        value.c_id,
                        value.c_store,
                        value.c_owner,
                        value.c_contact,
                        value.c_location,
                        value.c_sub_location,
                        value.c_pricing_name,
                        value.c_ar,
                        button

                    ]).draw();


                });
            },
            error: function(xhr) {

            }
        });
    }


    function testowner() {
//        consolog.log("aw aw aw");
//        var x = $("#c_store").value();
//        $("#c_pricing_name").value(x);
    }


    function updateInput(ish) {
        document.getElementById("c_pricing_name").value = ish;
    }
</script>

<script>

    $(document).ready(function() {

        load_data_product_mainte();

    });

</script>