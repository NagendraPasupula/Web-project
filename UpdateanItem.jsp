
<%-- 
    Document   : UpdateanItem
    Created on : Apr 23, 2015, 9:23:36 AM
    Author     : s522609
--%>

<%@page import="java.util.Arrays"%>
<%@page import="java.util.TreeMap"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    <body>
 <form action="javascript:void(0)">
            <h2 >Update Product </h2>
            
            <%String[] categories = {"Select Category","Books","Home & kitchen","Electronics","Media"};
  
               String[] products  =   {"Select Category","Book1","Book2","Book3","Book4"};
            %>
            <div style=" margin-top: 2% ; margin-bottom: 2%">
                
                <table >
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
                    <td>Select Product name</td>
                    <td><select name="products" id="procucts">
                            <%for (int i =0; i< products.length ; i++){%>
                            <option  ><%=products[i]%></option>
                           <%}%>
                        </select></td>
                </tr>
                   <tr>
                    <td>Update Product name</td>
                    <td>
                        <input type="text" name="uprodcutName" id="uprodcutName"/>
                    </td>
                </tr>
                <tr>
                    <td>update Product Price</td>
                    <td><input type="text" name="productprice" id="productprice"></td>
                </tr>
                <tr>
                    <td>update Product Image</td>
                    
                    <td><input type="file" id="prdImg" name="prdImg"  value="Browse.."></td>
                </tr>
            <%  /*  <tr>
                    <td>Update Product Description</td>
                    <td><input type="TextArea" name="productprice"></td>
                </tr>
                */%>
                <tr>
                    <td></td>
                    <td><input id="updateitem" name="updateitem" type="button" class="btn bg-primary" value="Submit" ></td>
                </tr>
            </table>
             

            </div>
                        <div id="dialog-confirm" ></div>
        </form>
    </body>
    <script>
$(document).ready(function(){
    $("#updateitem").click(function(){
     $("#dialog-confirm").html("Do you want update product "+$("#procucts").val()+" in "+$("#categories").val()+" Category"+
             "with below details </br> New Prodcut Price :"+$("#productprice").val()+"</br> New Prodcut Name :" +$("#uprodcutName").val());

    // Define the Dialog and its properties.
    $("#dialog-confirm").dialog({
        resizable: false,
        modal: true,
        title: "Updating Product Deatils",
        height: 250,
        width: 450,
        buttons: {
            "Yes": function () {
                $(this).dialog('close');
                alert("Details of "+$("#uprodcutName").val()+" updated succesfully");
               
            },
                "No": function () {
                $(this).dialog('close');
                 $("#dialog-confirm").html("Product details are not updated successfully");
                 $("#dialog-confirm").css("background-color : rgb(24,45,46)");
                $("#dialog-confirm").dialog({ 
                    
            resizable: true,
        modal: true,
        title: "Information",
        height: 180,
        width: 450,
            
            buttons: {
                        
            "OK": function () {
                $(this).dialog('close');
               // alert("New prduct"+$("#uproductName").val()+"added succesfully")
               
            }}});
            }
        }
    });
    });
});
    
    </script>
</html>
