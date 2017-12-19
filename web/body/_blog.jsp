
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
                                <label for="blogTitle" class="col-lg-2 col-sm-2 control-label">Title</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="blogTitle" placeholder="Title">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="blogLink" class="col-lg-2 col-sm-2 control-label">Youtube Link</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="blogLink" placeholder="Link">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="blogArticle" class="col-lg-2 col-sm-2 control-label">Article</label>
                                <div class="col-lg-10">
                                    <textarea type="text" class="form-control" id="blogArticle" placeholder="Article" rows="4"></textarea>
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
                        Blogs
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
                                        <th>Link</th>
                                        <th>Article</th>
                                        <th>Date Modified</th>
                                        <th style="width: 138px">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Trident</td>
                                        <td>THE SAY HELLO SALE IS LIVE!!!</td>
                                        <td>https://www.youtube.com/watch?v=zTLoxukoE2Q</td>
                                        <td>
                                            This epic course has been reserved for a select few of my high-performance clients up to now? 
                                            ?and today, I?m opening it to the rest of you guys.
                                            (but NOT the outside world)
                                            And in this updated version of the course, I?m revealing the ?Yes Sequence? for the first time ever.
                                            The Yes Sequence is my bulletproof, step-by-step sequence for meeting beautiful women.
                                            It?s a ?holy-grail?-level breakthrough in social psychology, and until today, it?s been held under carefully-guarded lock and key? tucked away in a folder on my Dropbox that no one has had access to.
                                            But today, the Yes Sequence? and the rest of Say Hello?s crushing power? are available for the rest of you.
                                        </td>
                                        <td>X</td>
                                        <td>
                                            <button type="button" class="btn btn-info btn-sm">Edit</button>
                                            <button type="button" class="btn btn-danger btn-sm">Delete</button>
                                        </td>
                                    </tr>
                                    <!--                                    <tr>
                                                                            <td>Trident</td>
                                                                            <td>THE SAY HELLO SALE IS LIVE!!!</td>
                                                                            <td>https://www.youtube.com/watch?v=zTLoxukoE2Q</td>
                                                                            <td>THE SAY HELLO SALE IS LIVE!!!
                                                                                This epic course has been reserved for a select few of my high-performance clients up to now? 
                                                                                ?and today, I?m opening it to the rest of you guys.
                                                                                (but NOT the outside world)
                                                                                And in this updated version of the course, I?m revealing the ?Yes Sequence? for the first time ever.
                                                                                The Yes Sequence is my bulletproof, step-by-step sequence for meeting beautiful women.
                                                                                It?s a ?holy-grail?-level breakthrough in social psychology, and until today, it?s been held under carefully-guarded lock and key? tucked away in a folder on my Dropbox that no one has had access to.
                                                                                But today, the Yes Sequence? and the rest of Say Hello?s crushing power? are available for the rest of you.
                                                                            </td>
                                                                            <td>X</td>
                                                                            <td>
                                                                                <button type="button" class="btn btn-info btn-sm">Edit</button>
                                                                                <button type="button" class="btn btn-danger btn-sm">Delete</button>
                                                                            </td>
                                                                        </tr>-->
                                    <!--                                    <tr>
                                                                            <td>Trident</td>
                                                                            <td>THE SAY HELLO SALE IS LIVE!!!</td>
                                                                            <td>https://www.youtube.com/watch?v=zTLoxukoE2Q</td>
                                                                            <td>THE SAY HELLO SALE IS LIVE!!!
                                                                                This epic course has been reserved for a select few of my high-performance clients up to now? 
                                                                                ?and today, I?m opening it to the rest of you guys.
                                                                                (but NOT the outside world)
                                                                                And in this updated version of the course, I?m revealing the ?Yes Sequence? for the first time ever.
                                                                                The Yes Sequence is my bulletproof, step-by-step sequence for meeting beautiful women.
                                                                                It?s a ?holy-grail?-level breakthrough in social psychology, and until today, it?s been held under carefully-guarded lock and key? tucked away in a folder on my Dropbox that no one has had access to.
                                                                                But today, the Yes Sequence? and the rest of Say Hello?s crushing power? are available for the rest of you.
                                                                            </td>
                                                                            <td>X</td>
                                                                            <td>
                                                                                <button type="button" class="btn btn-info btn-sm">Edit</button>
                                                                                <button type="button" class="btn btn-danger btn-sm">Delete</button>
                                                                            </td>
                                                                        </tr>-->
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>Record No</th>
                                        <th>Title</th>
                                        <th>Link</th>
                                        <th>Article</th>
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

        $('#blogTitle').val("");
        $('#blogArticle').val("");
        $('#blogLink').val("");

    }


    function save() {

        alert("where are you from here");

    }

    var global_update_id;
    var action = "add";
    function save_edit_about_content() {

        var title = $('#blogTitle').val();
        var article = $('#blogArticle').val();
        var video_link = $('#blogLink').val();

//
//        String blogTitle = request.getParameter("blogTitle");
//        String blogLink = request.getParameter("blogLink");
//        String blogArticle = request.getParameter("blogArticle");
//        String action = request.getParameter("action");
//        String id = request.getParameter("id");
//




        $.ajax({
            type: "post", // GET or POST
            url: 'Controller_Blog', // Path to file

            data: {
                "blogTitle": title,
                "blogArticle": article,
                "blogLink": video_link,
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
        var video_link = ($('#' + id + '').parent().siblings().eq(3).text());

        global_update_id = record;
        console.log(global_update_id);

        $('#blogTitle').val(title);
        $('#blogArticle').val(article);
        $('#blogLink').val(video_link);
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
            url: 'Data_table_Blog', // Path to file


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
                        value.video_link,
                        value.article,
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