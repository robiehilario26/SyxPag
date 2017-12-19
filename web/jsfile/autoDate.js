/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var global_dateToday;
function set_default_date(x, y) {


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

function getRange() {
    $('#reportrange1').change(function(event) {

        document.getElementById("reportrange1_ar").value = reportrange1.value;
    });

    $('#reportrange2').change(function(event) {
        document.getElementById("reportrange2_ar").value = reportrange2.value;

    });
}

 