<!--<script type="text/javascript" language="javascript" src="assets/advanced-datatable/media/js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script class="include" type="text/javascript" src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/jquery.scrollTo.min.js"></script>
<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
<script src="js/respond.min.js" ></script>
<script type="text/javascript" language="javascript" src="assets/advanced-datatable/media/js/jquery.dataTables.js"></script>
<script type="text/javascript" src="assets/data-tables/DT_bootstrap.js"></script>
<script type="text/javascript" src="assets/data-tables/DT_bootstrap.css"></script>
<script type="text/javascript" src="assets/data-tables/jquery.dataTables.js"></script>
<script src="js/jquery-1.11.1.js" type="text/javascript"></script>

<script src="js/dataTables.min.js" type="text/javascript"></script>
<script src="js/jquery.dataTables.min.js" type="text/javascript"></script>-->

<!--script for this page only-->

<script>
    $(document).ready(function () {
        $('#example1').dataTable({
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
                    "targets": [0, 1, 2, 3, 4, 5],
                    "defaultContent": ""
                }
            ]
                    // "deferLoading": 57
        });
    });

    function load_data() {
        console.log("success load load_data");
        $.ajax({
            type: "get", // GET or POST
            url: 'Data_table_home', // Path to file

            data: {
//                empno:${emp.empNo}
            },
            beforeSend: function () {                                // Before Ajax 

//                setTimeout($loading.show(), 5000); // set timout 

//                $success.hide();
//                $error.hide();
            },
            complete: function () {

                //$success.show();
            },
            success: function (response) {
// Show content
//                alert(response.toString());
                $('#example1').DataTable().clear().draw();
//                $loading.hide();
                //$success.show();
//                setTimeout($success.show(), 3000); // set timout 
                var button = ' <button type="button" class="btn btn-info btn-sm" data-target="#myModal-1" data-toggle="modal">Edit</button>  <button type="button" class="btn btn-danger btn-sm">Delete</button>';


                $.each(response, function (index, value) {
                    rows = index;
                    console.log(value.title.toString());


//                     alert(value.id);
                    $('#example1').DataTable().row.add([
                        value.id,
                        value.image,
                        value.title,
                        value.article,
                        value.date_modified,
                        button

                    ]).draw();


//                    $("#example1 > tbody").append("<tr><td>" + value.id.toString() + "</td>\n\
//            <td>" + value.title.toString() + "</td>\n\
//<td>" + value.title.toString() + "</td>\n\
//<td>" + value.article.toString() + "</td>\n\
//<td>" + value.date_modified.toString() + "</td>\n\
//<td>" + button + "</td></tr>");
                });
            },
            error: function (xhr) {
//                $loading.hide();
//                $success.hide();
//                $error.show();
            }
        });
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


        <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal-1" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                        <h4 class="modal-title">Create New</h4>
                    </div>
                    <div class="modal-body">

                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label for="homeTitle" class="col-lg-2 col-sm-2 control-label">Title</label>
                                <div class="col-lg-10">
                                    <input type="text"  id="title" class="form-control" id="homeTitle" placeholder="Title">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="homeArticle" class="col-lg-2 col-sm-2 control-label">Article</label>
                                <div class="col-lg-10">
                                    <textarea type="text" id="article" class="form-control" id="homeArticle" placeholder="Article" rows="4"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="homeImage" class="col-lg-2 col-sm-2 control-label">Image</label>
                                <div class="col-lg-10">
                                    <input type="file" id="homeImage">
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer no-border">
                        <button type="submit" class="btn btn-primary" data-dismiss="modal" onclick="save_edit_home_content()">Submit</button>
                    </div>
                </div>
            </div>
        </div>


        <div class="row">
            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading">
                        Home 
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
                                        <th>Image</th>
                                        <th>Title</th>
                                        <th>Article</th>
                                        <th>Date Modified</th>
                                        <th style="width: 138px">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <!--                                    <tr>
                                                                            <td>Trident 123</td>
                                                                            <td>Internet Explorer 4.0</td>
                                                                            <td>Win 95+</td>
                                                                            <td>4</td>
                                                                            <td>X</td>
                                                                            <td>
                                                                                <button type="button" class="btn btn-info btn-sm" data-target="#myModal-1" data-toggle="modal">Edit</button>
                                                                                <button type="button" class="btn btn-danger btn-sm">Delete</button>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Trident</td>
                                                                            <td>Internet Explorer 4.0</td>
                                                                            <td>Win 95+</td>
                                                                            <td>4</td>
                                                                            <td>X</td>
                                                                            <td>
                                                                                <button type="button" class="btn btn-info btn-sm" data-target="#myModal-1" data-toggle="modal">Edit</button>
                                                                                <button type="button" class="btn btn-danger btn-sm">Delete</button>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Trident</td>
                                                                            <td>Internet Explorer 4.0</td>
                                                                            <td>Win 95+</td>
                                                                            <td>4</td>
                                                                            <td>X</td>
                                                                            <td>
                                                                                <button type="button" class="btn btn-info btn-sm" data-target="#myModal-1" data-toggle="modal">Edit</button>
                                                                                <button type="button" class="btn btn-danger btn-sm">Delete</button>
                                                                            </td>
                                                                        </tr>
                                    
                                                                        <tr>
                                                                            <td>Trident</td>
                                                                            <td>Internet Explorer 4.0</td>
                                                                            <td>Win 95+</td>
                                                                            <td>4</td>
                                                                            <td>X</td>
                                                                            <td>
                                                                                <button type="button" class="btn btn-info btn-sm" data-target="#myModal-1" data-toggle="modal">Edit</button>
                                                                                <button type="button" class="btn btn-danger btn-sm">Delete</button>
                                                                            </td>
                                                                        </tr>
                                    
                                                                        <tr>
                                                                            <td>Trident</td>
                                                                            <td>Internet Explorer 4.0</td>
                                                                            <td>Win 95+</td>
                                                                            <td>4</td>
                                                                            <td>X</td>
                                                                            <td>
                                                                                <button type="button" class="btn btn-info btn-sm" data-target="#myModal-1" data-toggle="modal">Edit</button>
                                                                                <button type="button" class="btn btn-danger btn-sm">Delete</button>
                                                                            </td>
                                                                        </tr>
                                    
                                                                        <tr>
                                                                            <td>Trident</td>
                                                                            <td>Internet Explorer 4.0</td>
                                                                            <td>Win 95+</td>
                                                                            <td>4</td>
                                                                            <td>X</td>
                                                                            <td>
                                                                                <button type="button" class="btn btn-info btn-sm" data-target="#myModal-1" data-toggle="modal">Edit</button>
                                                                                <button type="button" class="btn btn-danger btn-sm">Delete</button>
                                                                            </td>
                                                                        </tr>
                                    
                                                                        <tr>
                                                                            <td>Trident</td>
                                                                            <td>Internet Explorer 4.0</td>
                                                                            <td>Win 95+</td>
                                                                            <td>4</td>
                                                                            <td>X</td>
                                                                            <td>
                                                                                <button type="button" class="btn btn-info btn-sm" data-target="#myModal-1" data-toggle="modal">Edit</button>
                                                                                <button type="button" class="btn btn-danger btn-sm">Delete</button>
                                                                            </td>
                                                                        </tr>
                                    
                                                                        <tr>
                                                                            <td>Trident</td>
                                                                            <td>Internet Explorer 4.0</td>
                                                                            <td>Win 95+</td>
                                                                            <td>4</td>
                                                                            <td>X</td>
                                                                            <td>
                                                                                <button type="button" class="btn btn-info btn-sm" data-target="#myModal-1" data-toggle="modal">Edit</button>
                                                                                <button type="button" class="btn btn-danger btn-sm">Delete</button>
                                                                            </td>
                                                                        </tr>
                                    
                                                                        <tr>
                                                                            <td>Trident</td>
                                                                            <td>Internet Explorer 4.0</td>
                                                                            <td>Win 95+</td>
                                                                            <td>4</td>
                                                                            <td>X</td>
                                                                            <td>
                                                                                <button type="button" class="btn btn-info btn-sm" data-target="#myModal-1" data-toggle="modal">Edit</button>
                                                                                <button type="button" class="btn btn-danger btn-sm">Delete</button>
                                                                            </td>
                                                                        </tr>
                                    
                                                                        <tr>
                                                                            <td>Trident</td>
                                                                            <td>Internet Explorer 4.0</td>
                                                                            <td>Win 95+</td>
                                                                            <td>4</td>
                                                                            <td>X</td>
                                                                            <td>
                                                                                <button type="button" class="btn btn-info btn-sm" data-target="#myModal-1" data-toggle="modal">Edit</button>
                                                                                <button type="button" class="btn btn-danger btn-sm">Delete</button>
                                                                            </td>
                                                                        </tr>
                                    
                                                                        <tr>
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
                                        <th>Image</th>
                                        <th>Title</th>
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






</script>

