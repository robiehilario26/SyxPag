

<script>

    function set_action_taken_add() {
        global_action = "add";
        global_pk = "";
        $("#update_id").val(global_pk);
        $("#action_taken").val(global_action);

        console.log("action was change into add ");

    }


    function get_file() {


        var has_selected_file = $('input[type=file]').filter(function () {
            return $.trim(this.value) != ''
        }).length > 0;

        if (has_selected_file) {
            /* do something here */
            console.log(" reload page needed");
            global_reload_page = "true";
        }
        else
        {
            global_reload_page = "false";
            console.log("no reload page needed");
        }


    }


    $(document).ready(function () {
        $("#activity_form").on('submit', (function (e) {

            e.preventDefault();
            $.ajax({
                url: "Controller_About_Link",
                type: "POST",
                data: new FormData(this),
                mimeType: "multipart/form-data",
                contentType: false,
                cache: false,
                processData: false,
                // timeout: 2000, // Waiting time
                beforeSend: function () {
                    // Before Ajax 
                    get_file();
                },
                complete: function () {

                },
                success: function () {
                    //   $('#requestView').modal('hide');
//                    setTimeout(load_data(), 1000);

                    document.getElementById('closeModalButton').click();
                    $('#activity_form').trigger("reset");
//                    alert("aw aw aw");
//                    delete_id();
                    load_data();
//                    if (global_action == "add") {
//
//                    }
                    if (global_reload_page == "true" && global_action != "add") {
                        window.location.reload();
                    }
//                   


                },
                error: function (xhr) {


                }
            });
        }));

        $('#example1').dataTable({
            "cache": false,
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




        console.log("so much than i get i just havent met u yet");
        load_data();

    });


    var global_action;
    function set_action_taken_update(elem) {

        global_action = "update";
        $("#action_taken").val(global_action);
        var id = $(elem).attr("id");
//        global_leave_id = ($('#' + id + '').parent().siblings().eq(0).text());
        var record_no = ($('#' + id + '').parent().siblings().eq(0).text());
        var title = ($('#' + id + '').parent().siblings().eq(2).text());
        var link = ($('#' + id + '').parent().siblings().eq(3).text());


        $("#aboutTitle").val(title);
        $("#aboutLink").val(link);
        $("#update_id").val(record_no);


       


    }


    function load_data() {
        var cachebuster = Math.round(new Date().getTime() / 1000);
        console.log("cachebuster " + cachebuster);
        var counting = 0;
        console.log("success load load_data");
        $.ajax({
            type: "get", // GET or POST
            url: 'Data_table_About_links', // Path to file
            cache: false,
            data: {
//                empno:${emp.empNo}
            },
            beforeSend: function () {                                // Before Ajax 

            },
            complete: function () {

                //$success.show();
            },
            success: function (response) {
// Show content
//                alert(response.toString());

                $('#example1').DataTable().clear().draw();


                $.each(response, function (index, value) {


                    counting++;
                    var button = ' <button id="' + counting + '" onclick="set_action_taken_update(this)" type="button" class="btn btn-info btn-sm" data-target="#myModal-1" data-toggle="modal">Edit</button>  <button id="delete_' + counting + '" type="button" class="btn btn-danger btn-sm" onclick="delete_id(this)">Delete</button>';
                    rows = index;

                    var id_pic = value.id.toString();
                    var table_name = "about_links";
                    var pictview = ' <div class="image"><img id="myimg' + counting + '" src="Picture_view?id=' + id_pic + '&set_table=' + table_name + '" alt = "User Image" style = "width="100px"; height="100px"; /></div>';

                    var x = $('#myimg' + counting + '').attr('src', $(this).src + '?' + (new Date()).getTime());
                    console.log('time=== ' + counting + '' + x);
                    $('#example1').DataTable().row.add([
                        value.id,
                        pictview,
                        value.title,
                        value.link,
                        button


                    ]).draw();


                });
            },
            error: function (xhr) {

            }
        });
    }


    function delete_id(elem) {
        var act = "deleted";
        var id = $(elem).attr("id");
        var global_pk = ($('#' + id + '').parent().siblings().eq(0).text());
        if (confirm("Are you sure?")) {
            // your deletion code
            console.log("deleted");



            $.ajax({
                type: "Post", // GET or POST
                url: 'DeleteAboutLinks', // Path to file

                data: {
                    "action_taken": act,
                    "update_id": global_pk
                },
                beforeSend: function () {


                },
                complete: function () {

                },
                success: function (response) {

                    console.log("success");
                    load_data();

                },
                error: function (xhr) {
                    console.log(xhr.toString());
                }
            });
        }
        return false;
    }



</script>





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

                        <form class="form-horizontal"  id="activity_form" action="Controller_About_Link" method="POST" enctype="multipart/form-data">
                            <div class="form-group">
                                <label for="inputFile" class="col-lg-2 col-sm-2 control-label">Logo File Upload</label>
                                <div class="col-lg-10">
                                    <input type="file" name="inputFile" id="inputFile">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="aboutTitle" class="col-lg-2 col-sm-2 control-label">Title</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" name="aboutTitle" id="aboutTitle" placeholder="Title">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="about   Title" class="col-lg-2 col-sm-2 control-label">Link</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" name="aboutLink" id="aboutLink" placeholder="https://">
                                    <input type="hidden" name="action_taken" id="action_taken">
                                    <input type="hidden" name="update_id" id="update_id">
                                </div>
                            </div>

                            <div class="modal-footer no-border">
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </form>
                    </div>

                </div>
            </div>
        </div>


        <div class="row">
            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading">
                        About Links
                    </header>

                    <div class="panel-body">
                        <div class="clearfix">
                            <div class="btn-group">
                                <button class="btn btn-primary" data-target="#myModal-1" onclick="set_action_taken_add()" data-toggle="modal">
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
                                        <th>Logo</th>
                                        <th>Title</th>
                                        <th>Link</th>

                                        <th style="width: 138px">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Trident</td>
                                        <td>Win 95+</td>
                                        <td>Win 95+</td>                                  
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
                                        <th>Logo</th>
                                        <th>Title</th>
                                        <th>Link</th>

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