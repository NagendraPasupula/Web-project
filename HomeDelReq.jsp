<%-- 
    Document   : HomeDelReq
    Created on : Apr 23, 2015, 9:40:07 AM
    Author     : s522609
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  
  <script>
  
  
  </script>
    </head>
    <body>
        
        <h2 >View Home Delivery Requests </h2>
        <div style=" margin-top: 2% ; margin-bottom: 2%">
            <table >
                <tr>
                    <td>Select date :
                        
                        
                        </td><td><select name="mob">
                            
<option selected="" value=""> Month 
</option><option value="1">Jan
</option><option value="2">Feb
</option><option value="3">Mar
</option><option value="4">Apr
</option><option value="5">May
</option><option value="6">Jun
</option><option value="7">Jul
</option><option value="8">Aug
</option><option value="9">Sep
</option><option value="10">Oct
</option><option value="11">Nov
</option><option value="12">Dec</option></select>
<select name="yob">
<option selected="" value="">Day
</option><option>1
</option><option>2
</option><option>3
</option><option>4
</option><option>5
</option><option>6
</option><option>7
</option><option>8
</option><option>9
</option><option>10
</option><option>11
</option><option>12
</option><option>13
</option><option>14
</option><option>15
</option><option>16
</option><option>17
</option><option>18
</option><option>19
</option><option>20
</option><option>21
</option><option>22
</option><option>23
</option><option>24
</option><option>25
</option><option>26
</option><option>27
</option><option>28
</option><option>29
</option><option>30
</option><option>31 </option></select> <select name="yob">
<option selected="" value=""> Year
</option><option>1965
</option><option>1966
</option><option>1967
</option><option>1968
</option><option>1969
</option><option>1970
</option><option>1971
</option><option>1972
</option><option>1973
</option><option>1974
</option><option>1975
</option><option>1976
</option><option>1977
</option><option>1978
</option><option>1979
</option><option>1980</option></select> </td>  </tr>
       <tr> <p><td>Order Ids :</td> <td><select name="categories">
               <option ><a href="#orders">Select Order</a></option>
                            <option ><a href="#order1">9x4532</a></option>
                            <option ><a href="#order2" >9x4531 </option>
                                <option><a href="#order3">9x4535</a></option>
                                <option><a href="#order4">9x4536</a></option>
                                <option><a href="#order5">99x4537</a></option>
                                <option><a href="#order6">9x4538</a></option>

            </select></p></td></tr>
            <tr><td> <p> <input type="button" id="myadd" value = "View"/></p></td><td></td></tr>
       </table>
                        </div>
                         <div class="container" id="searchresholder2"  class="col-xs-9" >

    </div>
                        
    </body>
    
    <script>
       $(document).ready(function(){ 
            $("#myadd").click(function(){alert("" );
            $("#searchresholder2").load("address.html"); });
            //var val = $(this).find("a").attr("href");
              
          // var vall = $(this).attr("href");
            
                 
       
         
            
        });
        
        
        //$("#searchresholder").load("templates/homepage.html");
</script>
</html>
