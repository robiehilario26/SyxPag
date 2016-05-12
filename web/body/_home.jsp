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
                                    <input type="text" class="form-control" id="homeTitle" placeholder="Title">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="homeArticle" class="col-lg-2 col-sm-2 control-label">Article</label>
                                <div class="col-lg-10">
                                    <textarea type="text" class="form-control" id="homeArticle" placeholder="Article" rows="4"></textarea>
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
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </div>
            </div>
        </div>


        <div class="row">
            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading">
                        Home Setup
                    </header>

                    <div class="panel-body">
                        <div class="clearfix">
                            <div class="btn-group">
                                <button class="btn btn-primary" data-target="#myModal-1" data-toggle="modal">
                                    Add New <i class="fa fa-plus"></i>
                                </button>
                            </div>
                            <div class="btn-group pull-right">
                                <button class="btn dropdown-toggle" data-toggle="dropdown">Tools <i class="fa fa-angle-down"></i>
                                </button>
                                <ul class="dropdown-menu pull-right">
                                    <li><a href="#">Print</a></li>
                                    <li><a href="#">Save as PDF</a></li>
                                    <li><a href="#">Export to Excel</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="space15"></div>
                        <div class="adv-table">

                            <table  class="display table table-bordered table-striped" id="example">
                                <thead>
                                    <tr>
                                        <th>Record No</th>
                                        <th>Image</th>
                                        <th>Title</th>
                                        <th>Article</th>
                                        <th>Date Modified</th>
                                        <th style="width: 170px">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Trident</td>
                                        <td>Internet Explorer 4.0</td>
                                        <td>Win 95+</td>
                                        <td>4</td>
                                        <td>X</td>
                                        <td>
                                            <button type="button" class="btn btn-info btn-sm">Edit</button>
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
                                            <button type="button" class="btn btn-info btn-sm">Edit</button>
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
                                            <button type="button" class="btn btn-info btn-sm">Edit</button>
                                            <button type="button" class="btn btn-danger btn-sm">Delete</button>
                                        </td>
                                    </tr>
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