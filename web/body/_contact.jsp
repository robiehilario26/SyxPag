<!--main content start-->
<section id="main-content">
    <section class="wrapper site-min-height">
        <!-- page start-->


        <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal-1" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button aria-hidden="true" data-dismiss="modal" id="closeModalButton" class="close" type="button">×</button>
                        <h4 class="modal-title">Create New</h4>
                    </div>
                    <div class="modal-body">

                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label for="contactTitle" class="col-lg-2 col-sm-2 control-label">Title</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="contactTitle" placeholder="Title">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="contacNo" class="col-lg-2 col-sm-2 control-label">Contact No.</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="contacNo" placeholder="Contact No.">
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer no-border">
                        <button type="submit" onclick="save_edit_about_content()" class="btn btn-primary">Submit</button>
                    </div>
                </div>
            </div>
        </div>


        <div class="row">
            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading">
                        Contacts
                    </header>

                    <div class="panel-body">
                        <div class="clearfix">
                            <div class="btn-group">
                                <button class="btn btn-primary" data-target="#myModal-1" data-toggle="modal">
                                    Add New <i class="fa fa-plus"></i>
                                </button>
                            </div>
                        </div>
                        <div class="space15"></div>
                        <div class="adv-table">

                            <table  class="display table table-bordered table-striped" id="example1">
                                <thead>
                                    <tr>
                                        <th>Record No</th>
                                        <th>Title</th>
                                        <th>Contact #</th>
                                        <th>Date Modified</th>
                                        <th style="width: 138px">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Trident</td>
                                        <td>Win 95+</td>
                                        <td>4</td>
                                        <td>X</td>
                                        <td>
                                            <button type="button" class="btn btn-info btn-sm">Edit</button>
                                            <button type="button" class="btn btn-danger btn-sm">Delete</button>
                                        </td>
                                    </tr>


                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>Record No</th>
                                        <th>Title</th>
                                        <th>Contact #</th>
                                        <th>Date Modified</th>
                                        <th>Action</th>
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

        $('#contactTitle').val("");
        $('#contacNo').val("");



    }


    function save() {

        alert("where are you from here");

    }

    var global_update_id;
    var action = "add";
    function save_edit_about_content() {

        var title = $('#contactTitle').val();
        var article = $('#contacNo').val();




        $.ajax({
            type: "post", // GET or POST
            url: 'Controller_Contact', // Path to file

            data: {
                "contactTitle": title,
                "contacNo": article,
                "action": action,
                "id": global_update_id



            },
            beforeSend: function () {


            },
            complete: function () {


            },
            success: function (response) {

                document.getElementById('closeModalButton').click();

                load_data();
                action = "add";
                clear_the_form();


            },
            error: function (xhr) {


            }
        });
    }








</script>
<script>
    $(document).ready(function () {
        $('#example1').dataTable({
            "bPaginate": true,
            "bLengthChange": true,
            "bFilter": true,
            "bSort": true,
            "bInfo": true,
            "bAutoWidth": false,
            "order": [[0, "desc"]],
            // "serverSide": true,
            // "ajax": "LoadEmpOverTime",
            "columnDefs": [
                {
                    //used to force the datable to accept null value
                    //the default content will be null
                    "targets": [0, 1, 2, 3, 4],
                    "defaultContent": ""
                }
            ]
                    // "deferLoading": 57
        });



    });

    function update_elem(elem) {

        var id = $(elem).attr("id");
        action = "edit";
        var record = ($('#' + id + '').parent().siblings().eq(0).text());
        var title = ($('#' + id + '').parent().siblings().eq(1).text());
        var article = ($('#' + id + '').parent().siblings().eq(2).text());

        global_update_id = record;
        console.log(global_update_id);

//
//
// $('#contactTitle').val("");
//        $('#contacNo').val("");
//        


        $('#contactTitle').val(title);
        $('#contacNo').val(article);

    }


    function delete_about(elem) {

        alert("deleting the content");

        var id = $(elem).attr("id");
        var record = ($('#' + id + '').parent().siblings().eq(0).text());

        action = "delete";
        global_update_id = record;

        save_edit_about_content();



    }


    function load_data() {
        console.log("success load load_data");
        $.ajax({
            type: "get", // GET or POST
            url: 'Data_table_Contact', // Path to file


            beforeSend: function () {                                // Before Ajax 

            },
            complete: function () {

                //$success.show();
            },
            success: function (response) {
// Show content
//                alert(response.toString());
                $('#example1').DataTable().clear().draw();
                var counting = 0;

                $.each(response, function (index, value) {
                    counting++;

                    var button = ' <button type="button"  id="my_update' + counting + '" onclick="update_elem(this)" class="btn btn-info btn-sm" data-target="#myModal-1" data-toggle="modal">Edit</button> '
                            + ' <button type="button"   id="my_delete' + counting + '" onclick=" delete_about(this)" class="btn btn-danger btn-sm">Delete</button>';

                    $('#example1').DataTable().row.add([
                        value.id,
                        value.title,
                        value.contact_info,
                        value.date_modified,
                        button

                    ]).draw();

                });
            },
            error: function (xhr) {

            }
        });
    }





</script>

<script>

    $(document).ready(function () {

        load_data();

    });

</script>