
<script>
    var global_action = "";
    $(document).ready(function () {
        $('#example1').dataTable({
            "cache": false,
            "bPaginate": true,
            "bLengthChange": true,
            "bFilter": true,
            "bSort": true,
            "bInfo": true,
            "bAutoWidth": false,
            "order": [[4, "date_modified"]],
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


        $("#activity_form").on('submit', (function (e) {

            e.preventDefault();
            $.ajax({
                url: "FileUpload_files",
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


                    if (global_reload_page == "false" && global_action != "add") {
//                        window.location.reload();
                        alert("Please select file file");
                    }
                    else
                    {
                        document.getElementById('closeModalButton').click();
                        $('#activity_form').trigger("reset");

                        load_data();

                    }
////                   


                },
                error: function (xhr) {


                }
            });
        }));
    });

    function set_action_taken_add() {
        global_action = "add";
        global_pk = "";
        $("#update_id").val(global_pk);
        $("#action_taken").val(global_action);

    }
    var global_filename;
    var global_pk;
    var global_get_file;
    function set_action_taken_update(elem) {
        var global_title;
        var global_article;
        global_action = "update";
        $("#action_taken").val(global_action);
        var id = $(elem).attr("id");
//        global_leave_id = ($('#' + id + '').parent().siblings().eq(0).text());
        global_pk = ($('#' + id + '').parent().siblings().eq(0).text());
        global_title = ($('#' + id + '').parent().siblings().eq(1).text());
//        global_article = ($('#' + id + '').parent().siblings().eq(3).text());
//        global_filename = ($('#' + id + '').parent().siblings().eq(5).text());
        console.log("update id " + global_pk);
        console.log("title " + global_title);
//        console.log("article " + global_article);
//        console.log("scan pic " + global_filename);
        $("#update_id").val(global_pk);
        $("#title").val(global_title);
//        $("#article").val(global_article);

    }

    var global_reload_page;
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



    function load_data() {
        var cachebuster = Math.round(new Date().getTime() / 1000);
        console.log("cachebuster " + cachebuster);
        var counting = 0;
        console.log("success load load_data");
        $.ajax({
            type: "get", // GET or POST
            url: 'Data_table_files', // Path to file
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
                    var button = ' <a href="FileDownloadDB?id=' + value.id.toString() + '"><button type="button" class="btn btn-default btn-sm">Download</button></a> <button id="' + counting + '" onclick="set_action_taken_update(this)" type="button" class="btn btn-info btn-sm" data-target="#myModal-1" data-toggle="modal">Edit</button>  <button id="delete_' + counting + '" type="button" class="btn btn-danger btn-sm" onclick="delete_id(this)">Delete</button>';
                    rows = index;

                    var x = $('#myimg' + counting + '').attr('src', $(this).src + '?' + (new Date()).getTime());
                    console.log('time=== ' + counting + '' + x);
                    $('#example1').DataTable().row.add([
                        value.id,
//                        pictview,
                        value.file_name,
                        value.file_size,
                        value.date_modified,
//                        value.file_name,
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
        var title = "none";
        var article = "none";
        var id = $(elem).attr("id");
        global_pk = ($('#' + id + '').parent().siblings().eq(0).text());
        if (confirm("Are you sure?")) {
            // your deletion code
            console.log("deleted");



            $.ajax({
                type: "post", // GET or POST
                url: 'FileUpload_files', // Path to file

                data: {
                    "action_taken": act,
                    "update_id": global_pk
//                    "article": article,
//                    "title": title


                },
                beforeSend: function () {


                },
                complete: function () {

                },
                success: function (response) {

                    console.log("success");
                    load_data();
//                    update_my_exam();
                },
                error: function (xhr) {
                    console.log(xhr.toString());
                }
            });
        }
        return false;
    }

    function save() {

        alert("where are you from here");

    }

    function save_edit_home_content() {

        var title = $('#title').val();
        var article = $('#article').val();

        console.log(title);
        console.log(article);

        $.ajax({
            type: "post", // GET or POST
            url: 'Controller_Home', // Path to file

            data: {
                "title": title,
                "article": article


            },
            beforeSend: function () {


            },
            complete: function () {

            },
            success: function (response) {

                console.log("success");
                load_data();
                update_my_exam();
            },
            error: function (xhr) {
                console.log(xhr.toString());
            }
        });
    }



</script>

<script>

    $(document).ready(function () {

        load_data();

    });


</script>
<!--script for this page-->
<script src="js/form-component.js"></script>
<!--main content start-->
<section id="main-content">
    <section class="wrapper site-min-height">
        <!-- page start-->





        <div class="row">
            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading">
                        Home 
                    </header>

                    <div class="panel-body">
                        <div class="clearfix">
                            <div class="btn-group">
                                <button class="btn btn-primary" data-target="#myModal-1" data-toggle="modal" onclick="set_action_taken_add()">
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
                                        <th>File name</th>
                                        <th>Size</th>
                                        <th>Date Modified</th>
                                        <th style="width: 200px">Action</th>

                                    </tr>
                                </thead>
                                <tbody>

                                    <!--                                    <tr>
                                                                            <td>Trident</td>
                                                                            <td>Internet Explorer 4.0</td>
                                                                            <td>Win 95+</td>
                                                                            <td>4</td>
                                                                            <td>X</td>
                                                                            <td>
                                                                                <button type="button" class="btn btn-info btn-sm" data-target="#myModal-1" data-toggle="modal">Edit</button>
                                                                                <button type="button" class="btn btn-danger btn-sm">Delete</button>
                                                                            </td>
                                                                        </tr>-->
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>Record No</th>
                                        <th>File name</th>
                                        <th>Size</th>
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

    function update_my_exam() {
        var x = "2";
        $.ajax({
            url: "FileUpload_files",
            type: "POST",
            data: {workOrderid: x},
            beforeSend: function () {
                // Before Ajax 
//                console.log("before success" + global_recordno);
            },
            complete: function () {

            },
            success: function () {
                alert("success:");
//                load_exam_data_table();
            },
            error: function () {
                alert("error");
                alert(xhr.toString());
            }
        });
    }


    function onTestChange() {
        var key = window.event.keyCode;
        // If the user has pressed enter
        if (key == 13) {
            console.log("submit_ajax ");
            return true;
        }
        else {
            return false;
        }
    }

</script>

<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal-1" class="modal fade">
    <form class="form-horizontal" role="form" id="activity_form" action="FileUpload_files" method="POST" enctype="multipart/form-data">

        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button id="closeModalButton" aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                    <h4 class="modal-title">Create New</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="inputFile" class="col-lg-2 col-sm-2 control-label">File input</label>
                        <div class="col-lg-10">
                            <input type="file" name="files" id="files"/>
                            <input type="text" name="action_taken" id="action_taken">
                            <input type="text" name="update_id" id="update_id">
                            <p class="help-block">Example block-level help text here.</p>
                        </div>
                    </div>
                    </form>
                </div>
                <div class="modal-footer no-border">
                    <button type="submit" class="btn btn-primary">Upload</button>
                </div>
            </div>
        </div>
    </form>

</div>