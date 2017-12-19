<!--main content start-->
<style>
    .font_color {

        color: #000000;

    }

    .table td {
        text-align: center;   
    }
</style>

<section id="main-content">
    <section class="wrapper site-min-height">
        <!-- page start-->



        <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal-SO" class="modal fade">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button aria-hidden="true" data-dismiss="modal" class="close" id="closeModalButton_product" type="button">×</button>
                        <center><h4 class="modal-title">Add Product</h4></center>
                    </div>
                    <div class="modal-body">

                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <div class="col-md-6">
                                    <div class="pull-left">
                                        <label for=">">Date:</label>
                                        <input type="date" readonly class="form-control font_color" id="mydate"/>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="pull-right">
                                        <label for="prod_allow_sale">Allow Sale</label>
                                        <select class="form-control font_color sm-input" id="prod_allow_sale">
                                            <option value="Yes">Yes</option>
                                            <option value="No">No</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-6">
                                    <label>Name</label>
                                    <input class="form-control font_color" type="text" id="prod_name" placeholder="Enter Product Name"/>

                                </div>
                                <div class="col-md-6">
                                    <label>Size</label>
                                    <input class="form-control font_color" type="text" id="prod_size" placeholder="Enter Product Size"/>

                                </div>

                            </div>

                            <!--                            <div class="form-group">
                            
                                                        </div>-->

                            <div class="form-group">
                                <div class="col-md-6">
                                    <label>Brand</label>
                                    <input class="form-control font_color" type="text" id="prod_brand" placeholder="Enter Product Brand"/>

                                </div>
                                <div class="col-md-6">
                                    <label>Group</label>
                                    <input class="form-control font_color" type="text" id="prod_group" placeholder="Enter Product Group"/>

                                </div>
                            </div>


                            <!--                            <div class="form-group">
                            
                            
                                                        </div>-->


                            <div class="form-group">
                                <div class="col-md-6">
                                    <!--                                    <label>Allow Sale</label>
                                                                        <input class="form-control font_color" type="text" id="prod_allow_sale"/>
                                                                        <select class="form-control col-md-6 font_color" id="prod_allow_sale">
                                                                            <option value="Select Customer">Select Customer</option>
                                                                        </select>-->
                                    <label>Inventory Stock</label>
                                    <input type="number" class="form-control font_color" placeholder="Enter Beggining amount" id="prod_inv_stocks"/>
                                </div>
                                <div class="col-md-6">
                                    <label>Tract Price</label>
                                    <input class="form-control font_color" type="number" id="prod_tract_price" placeholder="Enter Tract Price"/>

                                </div>
                            </div>

                            <!--                            <div class="form-group">
                            
                            
                                                        </div>-->


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
                        Product Inventory
                    </header>

                    <div class="panel-body">
                        <div class="clearfix">
                        </div>
                        <div class="space15"></div>
                        <div class="adv-table">

                            <table class="display table table-bordered table-striped" id="example1">
                                <thead>
                                    <tr>
                                        <th>Product No</th>
                                        <th>Name</th>
                                        <th>Stock</th>
                                        <th>SO(not final)</th>
                                        <th>SO(final)</th>
                                        <th>PO(not final)</th>
                                        <th>PO(final)</th>
                                        <th>Available</th>
                                        <th>Future Stock</th>
                                        <th>Commited</th>

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
                                        <th>Product No</th>
                                        <th>Name</th>
                                        <th>Stock</th>
                                        <th>SO(not final)</th>
                                        <th>SO(final)</th>
                                        <th>PO(not final)</th>
                                        <th>PO(final)</th>
                                        <th>Available</th>
                                        <th>Future Stock</th>
                                        <th>Commited</th>
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
                    "targets": [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
                    "defaultContent": ""
                }
            ]
                    // "deferLoading": 57
        });



    });



</script>
<!--<script src="../js/method_productMaintenance.js" type="text/javascript"></script>-->

<script>

    function load_data_product_mainte() {
        console.log("success load load_data");
        $.ajax({
            type: "get", // GET or POST
            url: 'Data_table_inventory', // Path to file


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

                    $('#example1').DataTable().row.add([
                        value.inv_pr_id,
                        value.inv_pr_name,
                        value.inv_stock,
                        value.inv_so_not_F,
                        value.inv_so_F,
                        value.inv_po_not_F,
                        value.inv_po_F,
                        value.inv_available,
                        value.inv_future_po,
                        value.inv_so_not_F


                    ]).draw();
                    $('td:nth-child(4),th:nth-child(4)').hide();
                    $('td:nth-child(5),th:nth-child(5)').hide();
                    $('td:nth-child(6),th:nth-child(6)').hide();
                    $('td:nth-child(7),th:nth-child(7)').hide();

                });
            },
            error: function(xhr) {

            }
        });
    }

</script>
<script>

    $(document).ready(function() {

        load_data_product_mainte();
        
        

    });

</script>