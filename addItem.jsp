<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Say Hello</title>
    </head>
    <body style="background-color: #ffff99">
        <form action="javascript:void(0)">
            <h2 >Add New Product </h2>
            
            <% String[] categories = {"Select Category","Books","Home & kitchen","Electronics","Media"};
  %>
            <div style=" margin-top: 2% ; margin-bottom: 2%">
                
                <table  >
                <tr>
                    <td>Select category</td>
                    <td><select name="categories" id="categories">
                            <%for (int i =0; i< categories.length ; i++){%>
                            <option  ><%=categories[i]%></option>
                           <%}%>
                        </select>
                       
                    </td>
                </tr>
                <tr>
                    <td>Product name</td>
                    <td><input type="text" name="productName" id="productName"></td>
                </tr>
                <tr>
                    <td>Product Price</td>
                    <td><input type="text" name="productprice"></td>
                </tr>
                <tr>
                    <td>Choose image</td>
                    
                    <td><input id="prdImg" type="file" name="prdImg" value="Browse.."></td>
                </tr>
                <tr>
                    <td>Product Description</td>
                    <td><textarea class="form-control" rows="3" cols="10"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input id="addingitem" name="addingitem"type="button" value="Submit" class="btn btn-primary" ></td>
                </tr>
                </table>
            
            </div>
                        <div id="dialog-confirm" ></div>
        </form>
    </body>
    <script>
$(document).ready(function(){
    $("#addingitem").click(function(){
     $("#dialog-confirm").html("Do you want add product <b>"+$("#productName").val()+"</b> to "+$("#categories").val()+" Category");

    // Define the Dialog and its properties.
    $("#dialog-confirm").dialog({
        resizable: true,
        modal: true,
        title: "New Product Deatils",
        height: 180,
        width: 450,
        buttons: {
            "Yes": function () {
                $(this).dialog('close');
                      $("#dialog-confirm").html("New Product "+$("#productName").val()+"has been added successfully!");
                
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
                 $("#dialog-confirm").html("New Product is not added");
                
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