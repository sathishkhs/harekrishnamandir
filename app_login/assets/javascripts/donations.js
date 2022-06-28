var minDate;
var MaxDate;
function datadraw(){
$.fn.dataTable.ext.search.push(
    function( settings, data, dataIndex ) {
        var min = minDate.val();
        var max = maxDate.val();
        var date =  data[6].split(' ')[0] ;
        // console.log(data[7].split(' ')[0])
        // console.log(date)
        if (
            ( min === null && max === null ) ||
            ( min === null && date <= max ) ||
            ( min <= date   && max === null ) ||
            ( min <= date   && date <= max )
        ) {
            return true;
        }
        return false;
    }
);
}

function festivaldraw(){
    $.fn.dataTable.ext.search.push(
        function( settings, data, dataIndex ) {
            var festival_value = festival_name.val();
            var festival =  data[7] ;
            
        
            // console.log(data[7])
            // console.log(date)
            if (
               festival_value == festival
            ) {
                return true;
            }
            return false;
        }
    );
    }
function programdraw(){
    
    $.fn.dataTable.ext.search.push(
        function( settings, data, dataIndex ) {
            var program_value = program_name.val();
            var program =  data[7] ;
          
        
            // console.log(data[7])
            // console.log(date)
            if (
               program_value == program
            ) {
                return true;
            }
            return false;
        }
    );
    }


$(document).ready(function(){
    minDate = $('#from_date');
    maxDate = $('#to_date');
    festival_name = $('#festival_name');
    program_name = $('#program_name');

    var slug = '';
    var donations = $('#donations_table').DataTable({ 
        'destroy':true,
        "searching": true,
        "paging":false,
        "ajax": {
            url: "donations/donations_list/",
            
        },
        
        // Set column definition initialisation properties.
        "columnDefs": [
        { 
            "targets": [ 0 ], //first column / numbering column
            "orderable": false, //set not orderable
        },
        ],
    })
    var charitable_donations = $('#charitable_donations_table').DataTable({ 
        'destroy':true,
        "searching": true,
        "paging":false,
        "ajax": {
            url: "donations/charitable_donations_list/",
            
        },
        
        // Set column definition initialisation properties.
        "columnDefs": [
        { 
            "targets": [ 0 ], //first column / numbering column
            "orderable": false, //set not orderable
        },
        ],
    })
    var festival_donations = $('#festival_donations_table').DataTable({ 
        // 'processing': true,
        //  'serverSide': true,
        //  'serverMethod': 'post',
        //  "searching": true,
        "ajax": {
            url: "donations/festival_donations_list",
           
        },
        
        // Set column definition initialisation properties.
        "columnDefs": [
        { 
            "targets": [ 0 ], //first column / numbering column
            "orderable": false, //set not orderable
        },
        ],
    })



    $('#from_date, #to_date').on('change', function () {
        datadraw();
        donations.draw();
        charitable_donations.draw();
    });
  
    $('#festival').on('change',function(){
        $('#festival_name').val(this.value);
       festivaldraw();
       donations.draw();
       
    })
    $('#program').on('change',function(){
        $('#program_name').val(this.value);
       programdraw();
       charitable_donations.draw();
    })

});
// function get_list(v){
//     $('#festival_name').val(v);
//     festivaldraw(v);
//     donations.draw();
// }