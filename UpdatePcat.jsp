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
            String[] categories = {"Select Category","Books","Home & kitchen","Electronics","Media"};
  String[] newprods = {"Select Product","Nokia Lumia","Samsung Galaxy","Asus zen-5","Xiomi - Mi3"};
  %>
 <h2>Update Popular Products</h2>
            <div style=" margin-top: 1% ; margin-bottom: 3%" class="col-xs-8">
                <div  style=" margin-top: 1% ; margin-bottom: 2%" > 
                    <span style="background-color: #FFFFFF " class="col-xs-12" >
                    <h3> Remove a product from Popular Products</h3> 
                    <table style="width: 100%; padding: 3px;  margin-bottom: 4px">
                
                <tr class="padding-top-10">
                    <td>Select Product</td>
                    <td><select name="rprods" id="rprods">
                           <% for(int i = 0 ; i< prods.length ; i++){ 
                           if (i==0){ 
                           %>
                           <option  selected="true"><%= prods[i] %></option> 
                           <%} else{%>
                           <option ><%= prods[i] %></option>
                          <% }} %>

                        </select></td>
                </tr>
                
                <tr class="padding-top-20">
                    <td></td>
                    <td><input type="button" id="romove" value="Remove"  class="btn btn-primary"></td>
                </tr>
                
            </table>
                
                
                </span>
                          <hr/>
                <span  style="background-color: #FFFFFF ; " class="col-xs-12 "> 
                    <h3> Add a product to Popular Products</h3> 
                <table style="width: 100%; margin-bottom: 4px;">
                    <tr class="padding-top-10">
                    <td>Select category</td>
                    <td><select name="acategories" id="adCat">
                              <% for(int i = 0 ; i< categories.length ; i++){ %>
                            
                           <option ><%= categories[i] %></option>
                          <% } %>

                        </select></td>
                </tr>
                <tr class="padding-top-10">
                    <td>Select Product</td>
                    <td><select name="aprods" id="aprods">
                               <% for(int i = 0 ; i< newprods.length ; i++){ %>
                            
                           <option ><%= newprods[i] %></option>
                          <% } %>

                        </select></td>
                </tr>
          
                <tr class="padding-top-10">
                    <td></td> <br>
                    <td><input type="button" id="additem" value="Add to Popular Products" class="btn btn-primary"></td>
                </tr>
            </table>
                </span>
                    </div> 
            </div>
                          
                          <div id="dialog-confirm" ></div>
    </body>
    
    <script>
        
        $(document).ready(function(){
    $("#romove").click(function(){
     $("#dialog-confirm").html("Do you want remove product <b>"+$("#rprods").val()+"</b> from Popular Products.");

    // Define the Dialog and its properties.
    $("#dialog-confirm").dialog({
        resizable: true,
        modal: true,
        title: "Removing Product Deatils",
        height: 180,
        width: 450,
        buttons: {
            "Yes": function () {
                $(this).dialog('close');
                      $("#dialog-confirm").html($("#rprods").val()+" product has been removed successfully from Popular Products!");
                $('select').prop(':selectedIndex',0);
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
                 $("#dialog-confirm").html("Product <b>"+$("#rprods").val()+"</b> is not added");
                
                $("#dialog-confirm").dialog({ 
                    
            resizable: true,
        modal: true,
        title: "Information",
        height: 180,
        width: 450,
            
            buttons: {
                        
            "OK": function () {
                $(this).dialog('close');
                
               
            }}});
            }
        }
    });
    });
    
    
    
    $("#additem").click(function(){
     $("#dialog-confirm").html("Do you want add product <b>"+$("#aprods").val()+"</b> to Popular Products.");

    // Define the Dialog and its properties.
    $("#dialog-confirm").dialog({
        resizable: true,
        modal: true,
        title: "New Popular Product Deatils",
        height: 180,
        width: 450,
        buttons: {
            "Yes": function () {
                $(this).dialog('close');
                      $("#dialog-confirm").html($("#aprods").val()+" product has been added successfully from Popular Products!");
              
                $("#dialog-confirm").dialog({ 
                    
            resizable: true,
        modal: true,
        title: "Confirmation Message",
        height: 180,
        width: 450,
            
            buttons: {
                        
            "OK": function () {
                
                $(this).dialog('close');
                
                
               
            }}});
               
            },
                "No": function () {
                $(this).dialog('close');
                 $("#dialog-confirm").html("Product <b>"+$("#rprods").val()+"</b> is not added to Popular Products");
                
                $("#dialog-confirm").dialog({ 
                    
            resizable: true,
        modal: true,
        title: "Information",
        height: 180,
        width: 450,
            
            buttons: {
                        
            "OK": function () {
                $(this).dialog('close');
                
               
            }}});
            }
        }
    });
    });
    
});
    </script>
</html>
