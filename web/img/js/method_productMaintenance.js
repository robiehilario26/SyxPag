function clear_the_form() {

    $('#title').val("");
    $('#article').val("");
}


function clear_product_form() {
    action = "add";
    global_update_id = "1";
    $('#prod_name').val("");
    $('#prod_size').val("");
    $('#prod_brand').val("");
    $('#prod_group').val("");
    $('#prod_allow_sale').val("");
    $('#prod_tract_price').val("");
    $('#prod_inv_stocks').val("");

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

    var myFilter;
    var filter = false;
    var name = $('#prod_name').val();
    var size = $('#prod_size').val();
    var brand = $('#prod_brand').val();
    var group = $('#prod_group').val();
    var sale = $('#prod_allow_sale').val();
    var price = $('#prod_tract_price').val();
    var stock = $('#prod_inv_stocks').val();
    alert("Aw aw aw");
    myFilter = (name == "" || stock == "" || size == "" || brand == "" || group == "" || sale == null || price == "") ? filter = false : filter = true;
//        alert(sale);
    if (filter == true) {
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
                "prod_inventory_stock": stock,
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
                alert(xhr.toString())

            }
        });
    }
    else {
        alert("Filled up all fields in Product");
    }
}


function update_elem(elem) {



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
    console.log(global_update_id);

    $('#prod_name').val(name);
    $('#prod_size').val(size);
    $('#prod_brand').val(brand);
    $('#prod_group').val(group);
    $('#prod_allow_sale').val(sale);
    $('#prod_tract_price').val(tract);



}


function delete_about(elem) {

//        alert("deleting the content");

    var id = $(elem).attr("id");
    var record = ($('#' + id + '').parent().siblings().eq(0).text());

    action = "delete";
    global_update_id = record;


    if (confirm("Are you sure?") == true) {

        $.ajax({
            type: "post", // GET or POST
            url: 'Controller_product_mainte', // Path to file

            data: {
                "get_global_id": global_update_id,
                "get_action": action
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

                var button = ' <button type="button"  id="my_update' + counting + '" onclick="update_elem(this)" class="btn btn-info btn-sm" data-target="#myModal-1" data-toggle="modal">Edit</button> '
                        + ' <button type="button"   id="my_delete' + counting + '" onclick=" delete_about(this)" class="btn btn-danger btn-sm">Delete</button>';

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
        url: 'Data_table_product_maintenance', // Path to file


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

                var button = ' <button type="button"  id="my_update' + counting + '" onclick="update_elem(this)" class="btn btn-info btn-sm" data-target="#myModal-SO" data-toggle="modal">Edit</button> '
                        + ' <button type="button"   id="my_delete' + counting + '" onclick=" delete_about(this)" class="btn btn-danger btn-sm">Delete</button>';

                $('#example1').DataTable().row.add([
                    value.pr_id,
                    value.pr_name,
                    value.pr_size,
                    value.pr_brand,
                    value.pr_group,
                    value.pr_allow,
                    value.pr_tract,
                    button

                ]).draw();


            });
        },
        error: function(xhr) {

        }
    });
}

Date.prototype.toDateInputValue = (function() {
    var local = new Date(this);
    local.setMinutes(this.getMinutes() - this.getTimezoneOffset());
    return local.toJSON().slice(0, 10);
});