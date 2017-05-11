<%-- 
    Document   : Update Popular Catogory
    Created on : Apr 24, 2015, 12:23:33 AM
    Author     : s522609
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Popular Products</title>
         <link href="css/styles.css" rel="stylesheet" type="text/css"/>
    </head>
    <body style="background-color: #ffff99">
        <form  action="javascripi:void(0)">
            <% String[] prods = {"Select Product","Book1","Meda1","Pen drive","Television","Nokia 6"};
            String[] categories = {"Select Category","General","New Year","Clearance Sale","Black Friday","Christmas"};
  String[] newprods = {"Select Product","Gen1234","Gen1235","Gen1236","Gen1237"};
  %>
 <h2>Edit Offers</h2>
            <div style=" margin-top: 1% ; margin-bottom: 5%" class="col-xs-6">
                <div  style=" margin-top: 1% ; margin-bottom: 2%" > 
                    <span style="background-color: #faebcc " class="col-xs-12" >
                    <h3> Add an Offer</h3> 
                    <table style="width: 100%; padding: 3px;  margin-bottom: 4px">
                
                <tr class="padding-top-10">
                    <td>Select Offer Category</td>
                    <td><select name="rprods" id="rprods">
                           <% for(int i = 0 ; i< categories.length ; i++){ 
                           
                           %>
                           <option  ><%= categories[i] %></option> 
                           <%}%>
                           

                        </select></td>
                </tr>
                
                
                <tr class="padding-top-20">
                    <td>Offer Id </td>
                    <td><input type="text" id="addoffer"></td>
                </tr>
                
                <tr class="padding-top-20">
                    <td>Offer Percentage  </td>
                    <td><input type="text" id="percent"></td>
                </tr>
                  <tr class="padding-top-20">
                    <td> </td>
                    <td><input type="button" id="addbtnof" value="Add Offer" class="btn-primary"></td>
                </tr>
            </table>
                
                
                </span>
                <span  style="background-color: #9acfea; " class="col-xs-12 "> 
                    <h3> Delete an Offer </h3> 
                <table style="width: 100%; margin-bottom: 4px;">
                    <tr class="padding-top-10">
                    <td>Select category</td>
                    <td><select name="acategories" id="adCat">
                             <% for(int j = 0 ; j< categories.length ; j++){ %>
                            
                           <option ><%= categories[j] %></option>
                          <% } %>

                        </select></td>
                </tr>
                <tr class="padding-top-10">
                    <td>Select Offer</td>
                    <td><select name="aprods" id="aprods">
                               <% for(int k = 0 ; k< newprods.length ; k++){ %>
                            
                           <option ><%= newprods[k] %></option>
                          <% } %>

                        </select></td>
                </tr>
          
                <tr class="padding-top-10">
                    <td></td> <br>
                    <td><input type="button" id="delitem" value="Delete Offer" class="btn-primary"></td>
                </tr>
            </table>
                </span>
                    </div> 
            </div>
                          
                          <div id="dialog-confirm" ></div>
    </body>
    
    <script>
       $(document).ready(function(){
           
           
    $("#delitem").click(function(){
     $("#dialog-confirm").html("Do you want delete <b>"+$("#aprods").val()+"</b> in " +$("#adCat").val()+" offers.");

    // Define the Dialog and its properties.
    $("#dialog-confirm").dialog({
        resizable: true,
        modal: true,
        title: "Deleting Offers Deatils",
        height: 180,
        width: 450,
        buttons: {
            "Yes": function () {
                $(this).dialog('close');
                      $("#dialog-confirm").html($("#aprods").val()+" offer has been deleted successfully!");
               
                $("#dialog-confirm").dialog({ 
                    
            resizable: true,
        modal: true,
        title: "Confirmation Message",
        height: 180,
        width: 450,
            
            buttons: {
                        
            "OK": function () {
                $('select>option:eq(0)').attr('selected','selected').trigger('change');
                $(this).dialog('close');
                
                
               
            }}});
               
            },
                "No": function () {
                $(this).dialog('close');
                 $("#dialog-confirm").html($("#aprods").val()+" offer is not deleted");
                
                $("#dialog-confirm").dialog({ 
                    
            resizable: true,
        modal: true,
        title: "Information",
        height: 180,
        width: 450,
            
            buttons: {
                        
            "OK": function () {
                $('select>option:eq(0)').attr('selected','selected').trigger('change');
                $(this).dialog('close');
                
               
            }}});
            }
        }
    });
    });
    
    
    
    $("#addbtnof").click(function(){
     $("#dialog-confirm").html("Do you want add new offer "+"<b>"+$("#addoffer").val()+"</b>"+" with an offer percentage of <b>"+$("#percent").val() +"</b> under "+$("#rprods").val()+" offers.");

    // Define the Dialog and its properties.
    $("#dialog-confirm").dialog({
        resizable: true,
        modal: true,
        title: "New offer Deatils",
        height: 180,
        width: 450,
        buttons: {
            "Yes": function () {
                $(this).dialog('close');
                      $("#dialog-confirm").html("<b>"+$("#addoffer").val()+"</b> offer has been added successfully to " +$("#rprods").val()+" offers!");
              
                $("#dialog-confirm").dialog({ 
                    
            resizable: true,
        modal: true,
        title: "Confirmation Message",
        height: 180,
        width: 450,
            
            buttons: {
                        
            "OK": function () {
                $('select>option:eq(0)').attr('selected','selected').trigger('change');
                $(this).dialog('close');
                
                
               
            }}});
               
            },
                "No": function () {
                $(this).dialog('close');
                 $("#dialog-confirm").html("New Offer <b>"+$("#addoffer").val()+"</b> is not added !");
                
                $("#dialog-confirm").dialog({ 
                    
            resizable: true,
        modal: true,
        title: "Information",
        height: 180,
        width: 450,
            
            buttons: {
                        
            "OK": function () {
                $('select>option:eq(0)').attr('selected','selected').trigger('change');
                $(this).dialog('close');
                
               
            }}});
            }
        }
    });
    });
    
});
    </script>
</html>
