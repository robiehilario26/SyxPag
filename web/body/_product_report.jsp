<!--main content start-->
<style>
    .font_color {

        color: #000000;

    }

    .table td {
        text-align: center;   
    }
</style>

<!--<script src="../jsfile/autoDate.js" type="text/javascript"></script>-->
<script>
    var get_val;
    $(document).ready(function() {
        get_val = "condition_1_form";
        $("#condition_1_form").show();
        $('#individual_report_category').change(function(event) {
            get_val = $("select#individual_report_category").val();
            $(".hide_me").hide();
            $('#' + get_val + '').show();
//            alert(get_val);
        });
        var x = "reportrange1";
        var y = "reportrange2";

        set_default_date(x, y);



        $('#reportrange1').change(function(event) {

            document.getElementById("reportrange1_ar").value = reportrange1.value;
            document.getElementById("reportrange1_cash").value = reportrange1.value;

        });
        $('#reportrange2').change(function(event) {
            document.getElementById("reportrange2_ar").value = reportrange2.value;
            document.getElementById("reportrange2_cash").value = reportrange2.value;
        });
    });


    function set_default_date(x, y) {
        var global_dateToday;

        var months = new Array();
        months[0] = "January";
        months[1] = "February";
        months[2] = "March";
        months[3] = "April";
        months[4] = "May";
        months[5] = "June";
        months[6] = "July";
        months[7] = "August";
        months[8] = "September";
        months[9] = "October";
        months[10] = "November";
        months[11] = "December";
        var d = new Date();
        var now = d.getDate();
        var year = d.getFullYear();
        var month = d.getMonth() + 1;
        var substitute_now;
        if (now < 10)
        {
            substitute_now = "0" + now;
            //            alert(substitute_now);
        }
        else
        {
            substitute_now = now;
            //            alert(substitute_now);
        }
        //        alert(month);
        var substitute_month;
        if (month < 10)
        {
            substitute_month = "0" + month;
            //            alert(substitute_month);
        }
        else
        {
            substitute_month = month;
            //            alert(substitute_month);
        }

        var set_date = year + '-' + substitute_month + '-' + substitute_now;
        global_dateToday = substitute_month + '/' + substitute_now + '/' + year;

//        alert(global_dateToday + " " + set_date);


        var date = new Date(new Date().setDate(new Date().getDate() - 30));
        var from = date.toLocaleDateString();

        var strDate = from;
        var splitDate = strDate.split("/");
        var subMonth, subDay, finalDate;

//        alert(splitDate[0]);
        if (splitDate[0] < 10) {
            subMonth = "0" + splitDate[0];
        }
        else {
            subMonth = splitDate[0];
        }

        if (splitDate[1] < 10) {
            subDay = "0" + splitDate[1];
        }
        else {
            subDay = splitDate[1];
        }
        finalDate = splitDate[2] + "-" + subMonth + "-" + subDay;
//        alert(finalDate + " " + set_date);
        document.getElementById('' + x + '').value = finalDate;
        document.getElementById('' + y + '').value = set_date;

        document.getElementById('' + x + '_ar').value = finalDate;
        document.getElementById('' + y + '_ar').value = set_date;

        document.getElementById('' + x + '_cash').value = finalDate;
        document.getElementById('' + y + '_cash').value = set_date;

    }
</script>
<section id="main-content">
    <br/><br/><br/><br/>



    <div class="box-body">
        <div class="col-md-6">
            <br/>
            <div class="form-group">
                <label>Category</label>
                <select id="individual_report_category" class="form-control selectpicker" data-done-button="true">
                    <option value="condition_1_form">Cash Report</option>
                    <option value="condition_2_form">AR Report</option>
                    <option value="condition_3_form">Inventory Report</option>
                </select>
            </div><!-- /.form group -->


        </div>


    </div><!-- /.row -->
    <div class="col-md-3">
        <br/>
        <!--<div id="chart-container"></div>-->
        <label>From Range</label>
        <div class="form-group" >
            <input class="form-control" id="reportrange1" type="date"/>
            <!--<input class="form-control" id="reportrange2" type="date"/>-->
            <!--<span class="fa fa-calendar form-control-feedback"></span>-->
        </div>
    </div><!-- /.box -->



    <div class="col-md-3">
        <br/>
        <!--<div id="chart-container"></div>-->
        <label>To Range</label>
        <div class="form-group" >
            <!--<input class="form-control" id="reportrange1" type="date"/>-->
            <input class="form-control" id="reportrange2" type="date"/>
            <!--<span class="fa fa-calendar form-control-feedback"></span>-->
        </div>
    </div><!-- /.box -->
    <div id="condition_1_form" class="hide_me" style="display:none">
        <form action="Cash_report" method="get"  target="_blank">
            <div id="inv_report" class="box-footer" >
                <input class="form-control" name="reportrange1_cash" id="reportrange1_cash" type="date" style="display:none"/>
                <input class="form-control" name="reportrange2_cash" id="reportrange2_cash" type="date" style="display:none"/>
                <button type="submit" class="btn btn-primary pull-right" style="margin-right: 5px;"><i class="fa fa-download"></i> Generate pdf</button>

            </div>
        </form>
    </div>

    <div id="condition_2_form" class="hide_me" style="display:none">
        <form action="AR_paid_report" method="get" target="_blank">
            <div id="inv_report" class="box-footer" >
                <input class="form-control" name="reportrange1_ar" id="reportrange1_ar" type="date" style="display:none"/>
                <input class="form-control" name="reportrange2_ar" id="reportrange2_ar" type="date" style="display:none"/>
                <button type="submit" class="btn btn-primary pull-right" style="margin-right: 5px;"><i class="fa fa-download"></i> Generate pdf</button>
            </div>
        </form>
    </div>

    <div id="condition_3_form" class="hide_me" style="display:none">
        <form action="Inv_report" method="get" target="_blank">
            <div id="inv_report" class="box-footer" >
                <button type="submit" class="btn btn-primary pull-right" style="margin-right: 5px;"><i class="fa fa-download"></i> Generate pdf</button>
            </div>
        </form>
    </div>


</section>

<!--main content end-->
