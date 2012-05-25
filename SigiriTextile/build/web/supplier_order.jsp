<%-- 
    Document   : supplier_order
    Created on : Mar 21, 2012, 2:21:35 PM
    Author     : pancha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="icon" href="images/logo_link.png">
    <title>Sigiri - Stock Management</title>
    <link rel="stylesheet" href="css/div_styles.css" type="text/css" />
    <link rel="stylesheet" href="verticaltabs/css/verticaltabs.css" />
    <link rel="stylesheet" href="css/formstyle.css" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="css/tcal.css" />
    <link rel="stylesheet" type="text/css" href="css/themes/message_default.css">

    <script type="text/javascript" src='js/message.js'></script>
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/tcal.js"></script>
    <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="verticaltabs/js/verticaltabs.pack.js"></script> <!--http://dean.edwards.name/packer/-->

    <script type="text/javascript">
        onload = function () {
            document.forms[1].vatamount.disabled = true;
            document.forms[1].nbtamount.disabled = true;
        }
    </script>

    <script type="text/javascript">
        $(document).ready(function(){
            $("#textExample").verticaltabs({speed: 500,slideShow: false,activeIndex:0});

        });
    </script>
    <script type="text/javascript" src="/js/jquery.js"></script>
    <script type="text/javascript" src="js/jquery.table.addrow.js"></script>
    <script type="text/javascript">
        $("document").ready(function(){
            $(".alternativeRow").btnAddRow({oddRowCSS:"oddRow",evenRowCSS:"evenRow"});
            $(".delRow").btnDelRow();
        });
    </script>
    <script type="text/javascript">
        function boxA(){
            dhtmlx.modalbox({
                title:"Configuration",
                text:"Height, widht and position can be redeined<br><br> You can use code like <div><code>onclick='dhtmlx.modalbox.hide(this)'</code></div> to close a modal box <br/><br/> <a href='#' onclick='dhtmlx.modalbox.hide(this)'>click to close</a>",
                width:"450px",
                height:"300px"
            });
        }
        function boxB(){
            dhtmlx.modalbox({
                text:"Do You want to Submit Purchase Order ?",
                width:"450px",
                position:"top",
                buttons:["Confirm", "Deny"],
                callback:function(){
                    dhtmlx.message("Purchase Order was Submitted")
                }
            });
        }
        function boxC(){
            var box = dhtmlx.modalbox({
                title:"Configuration",
                text:"<div id='form_in_box'><div><label> Input width <input class='inform' type='text'></label></div><div><label> Input height <input class='inform' type='text'></label></div><div><label> Input details <textarea class='inform'></textarea></label></div><div><span class='dhtmlx_button'><input type='button' value='save' onclick='save_callback(this)' style='width:250px;'></span></label></div></div>",
                width:"300px"
            });
            //timeout is necessary only in IE
            setTimeout(function(){
                box.getElementsByTagName("input")[0].focus();
            },1);


        }
        function save_callback(box){
            dhtmlx.message("Saving...");
            dhtmlx.modalbox.hide(box);
        }

        function boxD(){
            dhtmlx.modalbox({
                type:"alert-error",
                title:"Critical error",
                text:"<img src='alert_medium.png'><strong>Need more <a target='blank' href='http://en.wikipedia.org/wiki/Coffee'>coffee!</a></strong><br/><br/> You can use any type of html content here - links, images, etc.",
                buttons:["Ok"]
            });
        }
        boxC();
    </script>

</head>

<body>

<div class="container">
<table width="100%" height="114">
    <tr>
        <td width="116" height="108"><center><img src="images/logo.png"/></center></td>
        <td width="612" style="padding-left:8px;color:#000079;font-size:20px;font-family:'Lucida Sans Unicode', 'Lucida Grande', sans-serif;">

            <p>Sigiri Textile Industries (Pvt) Ltd.        </p>
            <p>No:227/1,
                Galle Road,Katubedda,
                Mt.Lavinia,
        Sri Lanka. </p></td>
        <td width="458">&nbsp;</td>
    </tr>
</table>

<!-- Text Example -->
<div class="verticalslider" id="textExample" style="height:1100px;">
<ul class="verticalslider_tabs">
    <li style="margin-top:25px;"><a href="#">Supplier & Operation</a></li>
    <li><a href="#">Purchase Order</a></li>
    <li><a href="#">PO Progress</a></li>
    <li><a href="#">Invoice Order</a></li>
    <li><a href="#">IO progress</a></li>
    <li><a href="#">Search Order</a></li>
    <li><a href="#">Order Progress</a></li>


</ul>
<ul class="verticalslider_contents" >
    <li>


    </li>

    <li style="padding-left:40px;">


        <!-- ============================== Fieldset 1 ============================== -->
        <fieldset style="height:670px;width:840px;">
            <legend>Add Purchase Order</legend>
            <form action="AddPurchaseOrder.action">
                <script type="text/javascript">
                    function onPOSupSelect(){
                        //alert($('#POSupSelect').val());
                        $('#hdnPOSuppId').val($('#POSupSelect').val());
                    }
                    function onPOPayTerm(){
                        //alert($('#POPaymentTerm').val());
                        $('#hdnPOPayTerm').val($('#POPaymentTerm').val());
                    }

                    function onPOPayDelivery(){
                        alert($('#PODelivery').val());
                        $('#hdnPODelivery').val($('#PODelivery').val());
                    }

                    function POCategoryOnChange(obj){
                        var cell,row;
                        cell=obj.parentNode;
                        row=cell.parentNode;
                        row = row.parentNode;
                        var data = row.childNodes;
                        for(j=0;j<data.length;j++){
                            if(data[j].childNodes.length>0){
                                var childs = data[j].childNodes;
                                for(k=0;k<childs.length;k++){
                                    if(childs[k].tagName=="CENTER"){
                                        var selects = childs[k].childNodes;
                                        if(selects[0].id=="POItemListSubCategory"){
                                            var inHtml="<option value='0' selected>Select</option>";
                                            <s:iterator value="subCatList" var="subCat">

                                                                        if("${subCat.category.id}"==obj.value){
                                                                            inHtml = inHtml+"<option value='${subCat.id}'>${subCat.name}</option>";
                                                                        }
                                            </s:iterator>
                                                                        selects[0].innerHTML=inHtml;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }

                                                }

                                                function POSubCategoryOnChange(obj){
                                                    var cell,row;
                                                    cell=obj.parentNode;
                                                    row=cell.parentNode;
                                                    row = row.parentNode;
                                                    var data = row.childNodes;
                                                    for(j=0;j<data.length;j++){
                                                        if(data[j].childNodes.length>0){
                                                            var childs = data[j].childNodes;
                                                            for(k=0;k<childs.length;k++){
                                                                if(childs[k].tagName=="CENTER"){
                                                                    var selects = childs[k].childNodes;
                                                                    if(selects[0].id=="POItemList"){
                                                                        var inHtml="<option value='0' selected>Select</option>";
                                            <s:iterator value="itemList" var="item">

                                                                        if("${item.subCategory.id}"==obj.value){
                                                                            inHtml = inHtml+"<option value='${item.id}'>${item.name}</option>";
                                                                        }
                                            </s:iterator>
                                                                        selects[0].innerHTML=inHtml;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }

                                                }

                </script>
                <input type="hidden" id="hdnPOSuppId" name="suppId" value="0"/>
                <input type="hidden" id="hdnPOPayTerm" name="paymentTerm" value="0"/>
                <input type="hidden" id="hdnPODelivery" name="deliveryTo" value="0"/>
                <p><label for="input-three" class="float"><strong>Supplier:</strong></label>
                    <select style="width:205px;" id="POSupSelect" onchange="onPOSupSelect()">
                        <option value="0" selected>Select </option>
                        <s:iterator value="suppList" var="supplier">
                            <option value="${supplier.id}" >${supplier.name}</option>
                        </s:iterator>
                </select><a href="">New</a>  </p>

                <p><label for="input-five" class="float"><strong>Order No:</strong></label>
                <input class="inp-textord" name="orderNo" type="text" size="30"/></p>

                <p><label for="input-four" class="float"><strong>Attention:</strong></label>
                <input class="inp-textord" name="attention" type="text" size="30"/></p>

                <p><label for="input-three" class="float"><strong>Payment Terms:</strong></label>
                    <select style="width:205px;" id="POPaymentTerm" onchange="onPOPayTerm()">
                        <option value="0" selected>Select </option>
                        <option value="Cash">Cash</option>
                        <option value="Cheque">Cheque</option>
                        <option value="Loan">Loan</option>
                </select>  </p>


                <div style="height:200px;width:400px;margin-left:450px;margin-top:-160px;position:absolute;">

                    <p style="padding-top:25px;"><label for="input-six" class="float"><strong>Date:</strong></label>
                    <input type="text" name="dates" class="tcal" style="background-color:#FFF;width:180px;" value="" /></</p>

                    <p><label for="input-eight" class="float"><strong>Delivery Date:</strong></label>
                    <input type="text" name="deliveryDate" class="tcal" style="background-color:#FFF;width:180px;" value="" /></p>

                    <p><label for="input-three" class="float"><strong>Delivery to:</strong></label>
                        <select style="width:205px;" id="PODelivery" onchange="onPOPayDelivery()">
                            <option value="0" selected>Select </option>
                            <option value="Head Office">Head Office</option>
                            <option value="Factory">Factory</option>
                            <option value="Store">Store</option>

                    </select> </p>

                </div>


                <div style="height:234px;width:945px;overflow:auto;margin-bottom:20px;margin-left:65px;">
                    <style>
                        .atable{

                            margin-left:10px;

                        }
                        .atable th{

                            background:#BFBFFF;
                            font-weight:bold;

                        }
                        .atable td{
                            padding:4px;
                            -webkit-border-radius:5px;
                        }
                        .oddRow{
                            background:#FFFFFF;
                        }
                        .evenRow{
                            background:#64B1FF;
                        }
                    </style>

                    <table class="atable" id="POAddItems">
                        <tr>
                            <td><input type="button" value="Add" class="alternativeRow" style="width:45px;"/></td>
                            <td><h4 align="center">Category</h4></td>
                            <td><h4 align="center">Sub Category</h4></td>
                            <td><h4 align="center">Item Description</h4></td>
                            <td><h4 align="center">Unit</h4></td>
                            <td><h4 align="center">Qty</h4></td>

                            <td style="width:24px;"></td>
                        </tr>

                        <tr>
                            <td></td>
                            <td><center><select class="" style="width:100px;" onchange="POCategoryOnChange(this)" id="POItemListCategory">
                                        <option value="0" selected>Select</option>
                                        <s:iterator value="catList" var="category">
                                            <option value="${category.id}">${category.name}</option>
                                        </s:iterator>
                                    </select>
                                </center>
                            </td>
                            <td><center><select class="" style="width:100px;" id="POItemListSubCategory" onchange="POSubCategoryOnChange(this)">
                                    </select>
                                </center>
                            </td>
                            <td><center><select class="" style="width:180px;" id="POItemList">

                                    </select>
                                    <input type="hidden" name="itemId" id="POItemHdnId" value="0"/>
                                </center>
                            </td>
                            <td><center><select class="" style="width:65px;" id="POItemUnit">
                                        <option value="0" selected>Select</option>
                                        <option value="g">g</option>
                                        <option value="kg">kg</option>
                                        <option value="t">t</option>
                                    </select>
                                    <input type="hidden" name="unit" id="POItemHdnUnit" value="0"/>
                                </center>

                            </td>
                            <td>
                                <input type="text" size="10" name="qty"/>
                            </td>
                            <td><img src="images/cross.png" class="delRow" border="0"></td>
                        </tr>

                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><input type="text" size="2"/></td>
                            <td><input type="text" size="10"/></td>
                            <td></td>
                        </tr>
                    </table>

                </div>

                <P><label for="label_vat" style="padding-left:50px;padding-top:20px;"><strong>VAT Registration No : 114344320-7000</strong></label></P>
                <ul>

                    <P><label for="input-nine" class="float"  style="padding-top:10px;margin-top:5px;"><strong>Notes:</strong></label><br />
                    <textarea rows="1" cols="50"  class="inp-text" name="note" style="width: 400px; height: 80px; margin: 0 0 12px 0; display: block;padding-top:10px;margin-top:40px;"></textarea> <br/></P>

                </ul>
                <script type="text/javascript">
                    function setHiddenValues(){
                        var rows = document.getElementById('POAddItems').rows;
                        for(i=1;i<rows.length;i++){
                            var data = rows[i].cells[3].childNodes;
                            if(data.length>0)
                                data = data[0].childNodes;
                            var val;
                            for(j=0;j<data.length;j++){
                                if(data[j].attributes!=null){
                                    if(data[j].getAttribute('id')=='POItemList'){
                                        val= data[j].value;

                                    }
                                }
                            }
                            for(j=0;j<data.length;j++){
                                if(data[j].attributes!=null){
                                    if(data[j].getAttribute('id')=='POItemHdnId'){
                                        data[j].value=val;
                                    }
                                }
                            }
                        }

                        //////////////////////////////////////////////////////////////

                        for(i=1;i<rows.length;i++){
                            var data = rows[i].cells[4].childNodes;
                            if(data.length>0)
                                data = data[0].childNodes;
                            var val;
                            for(j=0;j<data.length;j++){
                                if(data[j].attributes!=null){
                                    if(data[j].getAttribute('id')=='POItemUnit'){
                                        val= data[j].value;
                                    }
                                }
                            }
                            for(j=0;j<data.length;j++){
                                if(data[j].attributes!=null){
                                    if(data[j].getAttribute('id')=='POItemHdnUnit'){
                                        data[j].value=val;
                                    }
                                }
                            }
                        }
                    }
                </script>
                <ul>
                    <div style="padding-left:560px;">
                        <input class="reset-button" type="reset" alt="RESET" name="reset" value="Reset" />
                        <input class="submit-button" type="submit" name="submit" value="Submit" onclick="setHiddenValues()"/>

                    </div>
                </ul>
            </form>
        </fieldset>



    </li>
    <li style="padding-left:40px;">


        <!-- ============================== Fieldset 1 ============================== -->
        <fieldset style="height:850px;width:930px;overflow: auto;">
            <legend>Check Purchase Order</legend>
            <form action="ApprovePurchaseOrder.action">
                <input type="hidden" id="poProAction" name="action" value="1">
                <script type="text/javascript">
                    function onCheckSelected(obj){
                        var par = obj.parentNode;
                        var data = par.childNodes;
                        for(i=0;i<data.length;i++){
                            if(data[i].id=='opProgressSelected'){
                                if(obj.checked){
                                    data[i].value = '1';
                                }else{
                                    data[i].value = '0';
                                }
                            }
                        }
                    }
                    function onPoApprove(){
                        $('#poProAction').val('1');
                    }
                    function onPoDelete(){
                        $('#poProAction').val('0');
                    }
                </script>
                <div style="height:200px;width:800px;margin-left:5px;margin-top:10px;overflow:
                     auto;">
                    <table width="860" border="1" style="background-color:#64B1FF;font-family:'Lucida Sans Unicode', 'Lucida Grande', sans-serif;color:#FFF;font-size:14px;font-weight:bold;-webkit-border-radius:5px;">
                        <tr>
                            <td style="width:20px;height:40px;"><center></center></td>
                            <td style="width:100px;height:40px;"><center>PO No</center></td>
                            <td style="width:100px;height:40px;"><center>Supplier</center></td>
                            <td style="width:100px;height:40px;"><center>Date</center></td>
                            <td style="width:100px;height:40px;"><center>Delivery Date</center></td>
                            <td style="width:100px;height:40px;"><center>Prepared by</center></td>

                        </tr>
                        <s:iterator value="poList" var="po">

                            <tr>

                                <s:if test="#po.approved==0" >
                                    <td style="width:20px;height:40px;"><center>
                                            <input type="hidden" id="opProgressSelected" name="selected" value="0"/>
                                            <input type="checkbox" onclick="onCheckSelected(this)"/>
                                    <input type="hidden" value="${po.id}" name="poId"/></center></td>
                                </s:if>
                                <s:else>
                                    <td style="width:20px;height:40px;"><center>Approved</center></td>
                                </s:else>
                                <td style="width:100px;height:40px;">${po.orderNo}</td>
                                <td style="width:100px;height:40px;">${po.supplier.name}</td>
                                <td style="width:100px;height:40px;">${po.dates}</td>
                                <td style="width:100px;height:40px;">${po.deliveryDate}</td>
                                <td style="width:100px;height:40px;"></td>
                            </tr>
                        </s:iterator>
                    </table>

                </div>

                <div style="padding-left:630px;padding-bottom:20px;">
                    <p>
                        <input class="submit-button" type="submit" value="Delete" onclick="onPoDelete()" />
                        <input class="submit-button" type="submit" name="print" value="Print" />
                        <input class="submit-button" type="submit" value="Approve" onclick="onPoApprove()"/>


                    </p>
                </div>
            </form>

            <script type="text/javascript">
                function onpoEditSelected(obj){
                    //alert(obj.value);
                    $('#poEditpoId').val(obj.value);
                    var supid=0;
                    <s:iterator value="poList" var="po">
                            //alert(${po.supplier.id});
                            if('${po.id}'==obj.value){
                                supid='${po.supplier.id}';
                                payTerm = '${po.paymentTerm}';
                                deliveryTo = '${po.deliveryTo}';
                                $("#poEditAttention").val('${po.attention}');
                                $("#poEditDate").val('${po.dates}');
                                $("#poEditDelDate").val('${po.deliveryDate}');
                                ////////////////////////////////////////////////////////
                                var supSet =document.getElementById('poEditSupSelect').options;
                                var index=0;
                                for(i=0;i<supSet.length;i++){
                                    if(supSet[i].value==supid){
                                        index=i;
                                        break;
                                    }
                                }
                                if(index!=0){
                                    supSet[index].selected=true;
                                }
                                ///////////////////////////////////////////////////
                                var ptSet =document.getElementById('poEditPaymentTerm').options;
                                var index=0;
                                for(i=0;i<ptSet.length;i++){
                                    if(ptSet[i].value==payTerm){
                                        index=i;
                                        break;
                                    }
                                }
                                if(index!=0){
                                    ptSet[index].selected=true;
                                }
                                ///////////////////////////////////////////////////
                                var dtSet =document.getElementById('poEditDeliveryTo').options;
                                var index=0;
                                for(i=0;i<dtSet.length;i++){
                                    if(dtSet[i].value==deliveryTo){
                                        index=i;
                                        break;
                                    }
                                }
                                if(index!=0){
                                    dtSet[index].selected=true;
                                }
                                var inHtml = '<tr><td style="width:30px;height:40px;"><center>Category</center></td><td style="width:30px;height:40px;"><center>Sub Category</center></td><td style="width:90px;height:40px;"><center>Item description</center></td><td style="width:50px;height:40px;"><center>Unit</center></td><td style="width:80px;height:40px;"><center>Qty</center></td></tr>';

                                <s:iterator value="#po.pOItems" var="poItem">
                                            inHtml =inHtml+ '<tr><td style="width:30px;height:40px;"><center>${poItem.item.subCategory.category.name}</center></td><td style="width:30px;height:40px;"><center>${poItem.item.subCategory.name}</center></td><td style="width:90px;height:40px;"><center>${poItem.item.name}</center></td><td style="width:50px;height:40px;"><center>${poItem.unit}</center></td><td style="width:80px;height:40px;"><center><input type="text" value="${poItem.qty}" name="poItemQty"/></center><input type="hidden" value="${poItem.id}" name="poItemId"/></td></tr>';

                                </s:iterator>
                                            $('#poEditItemList').html(inHtml);
                                            onpoEditSupSelect(document.getElementById("poEditSupSelect"));
                                            onpoEditDeliveryTo(document.getElementById("poEditDeliveryTo"));
                                            onpoEditPaymentTerm(document.getElementById("poEditPaymentTerm"));

                                        }
                    </s:iterator>


                        }
                        function onpoEditSupSelect(obj){
                            $('#poEditpoSuppId').val(obj.value);
                        }
                        function onpoEditPaymentTerm(obj){
                            $('#poEditpoPaymentTerm').val(obj.value);
                        }
                        function onpoEditDeliveryTo(obj){
                            $('#poEditpoDeliveryTo').val(obj.value);
                        }

            </script>
            <div style="padding-left:30px;">
                <form action="EditPurchaseOrder.action">
                    <input type="hidden" name="po.id" id="poEditpoId" name="id"/>
                    <input type="hidden" name="suppId" id="poEditpoSuppId" name="suppid"/>
                    <input type="hidden" name="po.paymentTerm" id="poEditpoPaymentTerm" name="paymentTerm"/>
                    <input type="hidden" name="po.deliveryTo" id="poEditpoDeliveryTo" name="deliveryTo"/>

                    <p><label for="input-three" class="float"><strong>PO No:</strong></label>
                        <select id="poEditSelect" style="width:205px;" onchange="onpoEditSelected(this)">
                            <option value="0" selected>Select </option>
                            <s:iterator value="poList" var="po">
                                <s:if test="#po.approved==0" >
                                    <option value="${po.id}">${po.orderNo}</option>
                                </s:if>
                            </s:iterator>

                    </select></p>

                    <p><label for="input-three" class="float"><strong>Supplier:</strong></label>
                        <select id="poEditSupSelect" style="width:205px;" onchange="onpoEditSupSelect(this)">
                            <option value="0" selected>Select </option>
                            <s:iterator value="suppList" var="sup">
                                <option value="${sup.id}">${sup.name}</option>
                            </s:iterator>
                    </select><a href="">New</a>  </p>

                    <p><label for="input-four" class="float"><strong>Attention:</strong></label>
                    <input class="inp-textord" name="po.attention" id="poEditAttention" type="text" size="30"/></p>

                    <p><label for="input-three" class="float"><strong>Payment Terms:</strong></label>
                        <select id="poEditPaymentTerm" style="width:205px;" onchange="onpoEditPaymentTerm(this)">
                            <option value="0" selected>Select </option>
                            <option value="Cash">Cash</option>
                            <option value="Cheque">Cheque</option>
                            <option value="Loan">Loan</option>
                    </select>  </p>


                    <div style="height:200px;width:400px;margin-left:480px;margin-top:-150px;position:absolute;">

                        <p style="padding-top:25px;"><label for="input-six" class="float"><strong>Date:</strong></label>
                        <input type="text" name="po.dates" id="poEditDate" class="tcal" style="background-color:#FFF;width:180px;" value="" /></</p>

                        <p><label for="input-eight" class="float"><strong>Delivery Date:</strong></label>
                        <input type="text" name="po.deliveryDate" id="poEditDelDate" class="tcal" style="background-color:#FFF;width:180px;" value="" /></p>

                        <p><label for="input-three" class="float"><strong>Delivery to:</strong></label>
                            <select id="poEditDeliveryTo" style="width:205px;" onchange="onpoEditDeliveryTo(this)">
                                <option value="0" selected>Select </option>
                                <option value="Head Office">Head Office</option>
                                <option value="Factory">Factory</option>
                                <option value="Store">Store</option>

                        </select> </p>

                    </div>


                    <div style="height:234px;width:945px;overflow:auto;margin-bottom:20px;margin-left:5px;">
                        <table id="poEditItemList" width="800" border="1" style="background-color:#64B1FF;font-family:'Lucida Sans Unicode', 'Lucida Grande', sans-serif;color:#FFF;font-size:14px;font-weight:bold;-webkit-border-radius:5px;">
                            <tr>
                                <td style="width:30px;height:40px;"><center>Category</center></td>
                                <td style="width:30px;height:40px;"><center>Sub Category</center></td>
                                <td style="width:90px;height:40px;"><center>Item description</center></td>
                                <td style="width:50px;height:40px;"><center>Unit</center></td>
                                <td style="width:80px;height:40px;"><center>Qty</center></td>
                            </tr>
                        </table>

                    </div>

                    <ul>

                        <P><label for="input-nine" class="float"  style="padding-top:10px;margin-top:5px;"><strong>Notes:</strong></label><br />
                        <textarea rows="1" cols="50"  class="inp-text" id="address" style="width: 400px; height: 80px; margin: 0 0 12px 0; display: block;padding-top:10px;margin-top:40px;"></textarea> <br/></P>

                    </ul>

                    <div style="padding-left:620px;">
                        <input class="reset-button" type="reset" name="reset" value="Reset" />
                        <input class="cal-button" type="submit" name="cal" value="Calculate" />
                        <input class="submit-button" type="submit" name="save" value="Save" />
                    </div>
                </form>
            </div>




        </fieldset>


    </li>

    <li style="padding-left:1px;">
        <script type="text/javascript">
            var sum=0;
            function calculateVat(){
                var vat = $('#ioAddVatamount').val();
                var nbt = $('#ioAddNbtamount').val();
                var total = (vat*1.0+nbt*1.0)*sum/100.0 +sum;
                $('#ioAddSum').val(total);
                $('#addIoAmount').val(total);
            }

            function onCurrencyChange(obj){
                $('#addIoCurrency').val(obj.value);
            }
            function onIoAddPoSelectChange(obj){
            <s:iterator value="poList" var="po">
                    if('${po.id}'==obj.value){
                        $('#addIoPoId').val(obj.value);
                        $('#addIoSupplier').val('${po.supplier.name}');
                        $('#addIoVat').val('${po.supplier.vatnumber}');
                        $('#addIoDeliveryDate').val('${po.deliveryDate}');
                        $('#addIoDeliveryDate').val('${po.deliveryDate}');
                        $('#addIoPaymentTerm').val('${po.paymentTerm}');
                        var inHtml= '<tr><td style="width:70px;height:40px;"><center>Category</center></td><td style="width:80px;height:40px;"><center>Sub Category</center></td><td style="width:150px;height:40px;"><center>Item Description</center></td><td style="width:50px;height:40px;"><center>unit</center></td><td style="width:90px;height:40px;"><center>Unit Price<a href="" ><center>Change</center></a></center></td><td style="width:80px;height:40px;"><center>Qty</center></td><td style="width:100px;height:40px;"><center>Total Price</center></td></tr>';
                         <s:iterator value="#po.pOItems" var="poItem">
                                     inHtml= inHtml+'<tr><td style="width:70px;height:40px;"><center>${poItem.item.subCategory.category.name}</center></td><td style="width:80px;height:40px;"><center>${poItem.item.subCategory.name}</center></td><td style="width:150px;height:40px;"><center>${poItem.item.name}</center></td><td style="width:50px;height:40px;"><center>${poItem.unit}</center></td><td style="width:90px;height:40px;"><input type="hidden" value="${poItem.item.unitPrice}" id="ioUnitPrice"/><center>${poItem.item.unitPrice}<a href="" ><center>Change</center></a></center></td><td style="width:80px;height:40px;"><input type="hidden" value="${poItem.qty}" id="ioQty"/><center>${poItem.qty}</center></td><td style="width:100px;height:40px;"><input type="text" value="0" id="ioSum"/></td></tr>';

                         </s:iterator>
                                     $("#addIOitems").html(inHtml);
                                     var rows = document.getElementById('addIOitems').rows;

                                     for(i=1;i<rows.length;i++){
                                         var data = rows[i].cells[4].childNodes;
                                         var val1=0;
                                         for(j=0;j<data.length;j++){
                                             if(data[j].attributes!=null){
                                                 if(data[j].getAttribute('id')=='ioUnitPrice'){
                                                     val1= data[j].value;
                                                 }
                                             }
                                         }

                                         ////////////////////////////////
                                         var val2=0;
                                         data = rows[i].cells[5].childNodes;
                                         for(j=0;j<data.length;j++){
                                             if(data[j].attributes!=null){
                                                 if(data[j].getAttribute('id')=='ioQty'){
                                                     val2= data[j].value;
                                                 }
                                             }
                                         }
                                         /////////////////////////////////
                                         data = rows[i].cells[6].childNodes;
                                         for(j=0;j<data.length;j++){
                                             if(data[j].attributes!=null){
                                                 if(data[j].getAttribute('id')=='ioSum'){
                                                     data[j].value=((val1*1.0)*(val2*1.0));
                                                     sum = sum + ((val1*1.0)*(val2*1.0));
                                                 }
                                             }
                                         }
                                         ////////////////////////////////////////
                                     }
                                     calculateVat();
                                 }
            </s:iterator>
                }
        </script>

        <form action="AddInvoiceOrder.action" method="post">
            <!-- ============================== Fieldset 1 ============================== -->
            <fieldset style="height:750px;width:880px;overflow: auto;">
                <legend>Invoice Order</legend>
                <input type="hidden" name="io.currency" id="addIoCurrency" value="0"/>
                <input type="hidden" name="poId" id="addIoPoId"/>
                <input type="hidden" name="io.amount" id="addIoAmount">
                <p><label for="input-three" class="float"><strong>Order No:</strong></label>
                    <select style="width:205px;" onchange="onIoAddPoSelectChange(this)">
                        <option value="0" selected>Select </option>
                        <s:iterator value="poList" var="po">
                            <s:if test="#po.approved==1" >
                                <option value="${po.id}">${po.orderNo}</option>
                            </s:if>
                        </s:iterator>

                </select>  </p>

                <p><label for="input-three" class="float"><strong>Currency:</strong></label>
                    <select style="width:205px;" onchange="onCurrencyChange(this)">
                        <option value="0" selected>Select </option>
                        <option value="LKR">LKR</option>
                        <option value="Dollar">Dollar</option>

                </select><a href="">Change</a>  </p>

                <p><label for="input-four" class="float"><strong>Supplier:</strong></label>
                <input class="inp-textord" id="addIoSupplier" type="text" size="30"/></p>

                <p><label for="input-four" class="float"><strong>VAT No:</strong></label>
                <input class="inp-textord" id="addIoVat" type="text" size="30"/></p>




                <div style="height:200px;width:400px;margin-left:530px;margin-top:-135px;position:absolute;">


                    <p><label for="input-eight" class="float"><strong>Delivery Date:</strong></label>
                    <input type="text" id="addIoDeliveryDate" style="background-color:#FFF;width:180px;" value="" /></p>

                    <p><label for="input-six" class="float"><strong>Payment Terms:</strong></label>
                    <input type="text" id="addIoPaymentTerm"  style="background-color:#FFF;width:180px;" value="" /></</p>



                </div>


                <div style="height:205px;width:945px;overflow:auto;margin-bottom:20px;margin-top:20px;">
                    <table id="addIOitems" width="850" border="1" style="background-color:#64B1FF;font-family:'Lucida Sans Unicode', 'Lucida Grande', sans-serif;color			:#FFF;font-size:14px;font-weight:bold;-webkit-border-radius:5px;">
                        <tr>
                            <td style="width:70px;height:40px;"><center>Category</center></td>
                            <td style="width:80px;height:40px;"><center>Sub Category</center></td>
                            <td style="width:150px;height:40px;"><center>Item Description</center></td>
                            <td style="width:50px;height:40px;"><center>unit</center></td>
                            <td style="width:90px;height:40px;"><center>Unit Price<a href="" ><center>Change</center></a></center></td>
                            <td style="width:80px;height:40px;"><center>Qty</center></td>
                            <td style="width:100px;height:40px;"><center>Total Price</center></td>

                        </tr>

                    </table>
                </div>
                <div style="height:160px;width:500px;background-color:#666;margin-left:200px;border-bottom-width:10px;-webkit-border-radius:6px;background-color:#64B1FF;margin-top:20px;">

                    <table width="500" height="140" >
                        <tr>
                            <td><center>With VAT</center></td>
                            <td><center>With NBT</center></td>

                        </tr>

                        <tr>
                            <td><center><input type="checkbox"  onclick="this.form.vatamount.disabled = !this.checked" name="vat" /></center></td>
                            <td><center><input type="checkbox" onclick="this.form.nbtamount.disabled = !this.checked" name="nbt" /></center></td>

                        </tr>
                        <tr>
                            <td></td>
                            <td><center>Amount</center></td>

                        </tr>
                        <tr>
                            <td><center>VAT</center></td>
                            <td><center><input type="text"  size="10" name="io.vat" id="ioAddVatamount" value="0.0" onchange="calculateVat()"/></center></td>
                        </tr>
                        <tr>
                            <td><center>NBT</center></td>
                            <td><center><input type="text" name="io.nbt" size="10" id="ioAddNbtamount" value="0.0" onchange="calculateVat()"/></center></td>
                        </tr>
                        <tr>
                            <td><center>Grand Total</center></td>
                            <td><center><input type="text" name="amount" size="10" id="ioAddSum" value="0.0"/></center></td>
                        </tr>

                    </table>

                </div>


                <ul>

                    <P><label for="input-nine" class="float"  style="padding-top:20px;margin-top:10px;"><strong>Notes:</strong></label><br />
                    <textarea rows="1" cols="50"  class="inp-text" id="address"name="input-address" style="width: 400px; height: 80px; margin: 0 0 12px 0; display: block;padding-top:20px;margin-top:60px;"></textarea> <br/></P>

                </ul>
                <ul>
                    <div style="padding-left:560px;">
                        <input class="reset-button" type="reset" alt="RESET" name="reset" value="Reset" />
                        <input class="cal-button" type="submit" alt="CALCULATE" name="cal" value="Calculate" />
                        <input class="submit-button" type="submit" alt="SUBMIT" name="submit" value="Submit" />

                    </div>
                </ul>
            </fieldset>


        </form>
    </li>
    <li style="padding-left:1px;">
        <script type="text/javascript">
            function onIoCheckSelected(obj){
                var par = obj.parentNode;
                var data = par.childNodes;
                for(i=0;i<data.length;i++){
                    if(data[i].id=='ioProgressSelected'){
                        if(obj.checked){
                            data[i].value = '1';
                        }else{
                            data[i].value = '0';
                        }
                    }
                }
            }
            function onIoApprove(){
                $('#ioProAction').val('1');
            }
            function onIoDelete(){
                $('#ioProAction').val('0');
            }
        </script>
        <form action="ApproveInvoiceOrder.action" method="post">
            <!-- ============================== Fieldset 1 ============================== -->
             <input type="hidden" id="ioProAction" name="action" value="1">
            <fieldset style="height:1020px;width:880px;overflow: auto;">
                <legend>Approve Invoice for Purchase Order</legend>
                <div style="height:400px;width:860px;margin-left:10px;margin-top:10px;overflow: auto;">
                    <table width="860" border="1" style="background-color:#64B1FF;font-family:'Lucida Sans Unicode', 'Lucida Grande', sans-serif;color			:#FFF;font-size:14px;font-weight:bold;-webkit-border-radius:5px;">
                        <tr>
                            <td style="width:20px;height:40px;"><center></center></td>
                            <td style="width:100px;height:40px;"><center>IO No</center></td>
                            <td style="width:100px;height:40px;"><center>PO No</center></td>
                            <td style="width:100px;height:40px;"><center>Supplier</center></td>
                            <td style="width:100px;height:40px;"><center>Date</center></td>
                            <td style="width:100px;height:40px;"><center>Delivery Date</center></td>
                            <td style="width:100px;height:40px;"><center>Prepared by</center></td>

                        </tr>
                        <s:iterator value="ioList" var="io">
                            <tr>
                                <s:if test="#io.approved==0" >
                                    <td style="width:20px;height:40px;"><center>
                                            <input type="hidden" id="ioProgressSelected" name="selected" value="0"/>
                                            <input type="checkbox" onclick="onIoCheckSelected(this)"/>
                                            <input type="hidden" value="${io.id}" name="ioId"/>
                                        </center>
                                    </td>

                                </s:if>
                                <s:else>
                                    <td style="width:20px;height:40px;"><center>Approved</center></td>
                                </s:else>
                                <td style="width:100px;height:40px;">${io.id}</td>
                                <td style="width:100px;height:40px;">${io.purchaseOrder.orderNo}</td>
                                <td style="width:100px;height:40px;">${io.purchaseOrder.supplier.name}</td>
                                <td style="width:100px;height:40px;">${io.purchaseOrder.dates}</td>
                                <td style="width:100px;height:40px;">${io.purchaseOrder.deliveryDate}</td>
                                <td style="width:100px;height:40px;"></td>
                            </tr>
                        </s:iterator>
                    </table>

                </div>
                <div style="padding-left:640px;padding-bottom:10px;">
                    <input class="submit-button" type="submit" name="del" value="Delete" onclick="onIoDelete()"/>
                    <input class="submit-button" type="submit" name="print" value="Print" />
                    <input class="submit-button" type="submit" name="submit" value="Approve" onclick="onIoApprove()" />

                </div>
            </fieldset>
        </form>
    </li>

    <li style="padding-left:1px;">

        <form action="#" method="post">

            <fieldset style="height:500px;width:880px;">
                <legend>Purchase Orders by</legend>

                <p style="padding-top:5px;"><label for="input-one" class="float" ><strong>Select:</strong></label>
                    
                    <select name="menu" style="width:310px;">
                        <option value="0" selected>Select Supplier</option>
                        <option value="1">one</option>
                        <option value="2">two</option>
                        <option value="3">three</option>
                </select></p>

                <P style="padding-top:10px;"><label for="input-two" class="float"><strong>Order No:</strong></label>
                <input class="inp-text" name="input-tqb" id="tqb" type="text" size="30"/></p>

                <p style="padding-top:10px;"><label for="input-eight" class="float" ><strong>Order Date:</strong></label>
                    <input type="text" name="ofdate" class="tcal" style="background-color:#FFF;width:180px;" value="From:"/>
                <input type="text" name="otdate" class="tcal" style="background-color:#FFF;width:180px;" value="To:" /><br /></p>

                <p style="padding-top:10px;"><label for="input-eight" class="float"><strong>Delivery Date:</strong></label><br />
                    <input type="text" name="dfdate" class="tcal" style="background-color:#FFF;width:180px;" value="From:"/>
                <input type="text" name="dtdate" class="tcal" style="background-color:#FFF;width:180px;" value="To:" /><br /></p>


                <ul>
                    <div style="padding-left:560px;">
                        <input class="reset-button" type="reset" alt="RESET" name="reset" value="Reset" />
                        <input class="submit-button" type="submit" alt="SUBMIT" name="submit" value="Submit" />

                    </div>
                </ul>

                <div style="height:200px;width:860px;margin-left:5px;margin-top:10px;">
                    <table width="860" border="1" style="background-color:#64B1FF;font-family:'Lucida Sans Unicode', 'Lucida Grande', sans-serif;color			:#FFF;font-size:14px;font-weight:bold;-webkit-border-radius:5px;margin-top:20px;">

                        <tr>
                            <td style="width:100px;height:40px;"><center>PO No</center></td>
                            <td style="width:100px;height:40px;"><center>Supplier</center></td>
                            <td style="width:100px;height:40px;"><center>Date</center></td>
                            <td style="width:100px;height:40px;"><center>Delivery Date</center></td>
                            <td style="width:100px;height:40px;"><center>Unit Qty</center></td>
                            <td style="width:100px;height:40px;"><center>Received Qty</center></td>


                        </tr>
                        <tr>

                            <td style="width:100px;height:40px;"></td>
                            <td style="width:100px;height:40px;"></td>
                            <td style="width:100px;height:40px;"></td>
                            <td style="width:100px;height:40px;"></td>
                            <td style="width:100px;height:40px;"></td>
                            <td style="width:100px;height:40px;"></td>
                        </tr>
                    </table>
                </div>


            </fieldset>


        </form>

    </li>


    

    <li style="padding-left:2px;">

        <form action="#" method="post">

            <fieldset style="height:500px;width:880px;">
                <legend>Purchase Order Progress</legend>
                <div style="height:200px;width:860px;margin-left:10px;margin-top:10px;">
                <p><label for="input-one" class="float" ><strong>Year:</strong></label>
                    <form action="">
                        <select name="menu" style="width:80px;">
                            <option value="0" selected>2012</option>
                            <option value="1">2013</option>
                            <option value="2">2014</option>
                            <option value="3">2015</option>
                            <option value="4">2016</option>
                            <option value="5">2017</option>
                            <option value="6">2018</option>
                            <option value="7">2019</option>
                            <option value="8">2020</option>

                        </select>
                    </form>
                </p>
               
                <div style="height:300px;width:450px;margin-left:350px;margin-top:-35px;">
                    <p><label for="input-one" class="float" ><strong>Month:</strong></label>
                        <form action="">
                            <select name="menu" style="width:80px;">
                                <option value="0" selected>January</option>
                                <option value="1">February</option>
                                <option value="2">March</option>
                                <option value="3">April</option>
                                <option value="4">May</option>
                                <option value="5">June</option>
                                <option value="6">July</option>
                                <option value="7">August</option>
                                <option value="8">September</option>
                                <option value="9">October</option>
                                <option value="10">November</option>
                                <option value="11">December</option>
                            </select>
                        </form>
                    </p>
                </div>
                <div style="margin-left:700px;margin-top:-302px;">
                    <input class="submit-button" type="submit" alt="SUBMIT" name="submit" value="Submit" />

                </div>
                <table width="860" border="1" style="background-color:#64B1FF;font-family:'Lucida Sans Unicode', 'Lucida Grande', sans-serif;color			:#FFF;font-size:14px;font-weight:bold;-webkit-border-radius:5px;margin-top:20px;">

                    <tr>
                        <td style="width:100px;height:40px;"><center>PO No</center></td>
                        <td style="width:100px;height:40px;"><center>Supplier</center></td>
                        <td style="width:100px;height:40px;"><center>Date</center></td>
                        <td style="width:100px;height:40px;"><center>Delivery Date</center></td>
                        <td style="width:100px;height:40px;"><center>Unit Qty</center></td>
                        <td style="width:100px;height:40px;"><center>Received Qty</center></td>


                    </tr>
                    <tr>

                        <td style="width:100px;height:40px;"></td>
                        <td style="width:100px;height:40px;"></td>
                        <td style="width:100px;height:40px;"></td>
                        <td style="width:100px;height:40px;"></td>
                        <td style="width:100px;height:40px;"></td>
                        <td style="width:100px;height:40px;"></td>
                    </tr>
                </table>
            </fieldset>
        </form>
    </li>

</ul>
<div style="padding-top:800px;padding-left:290px;">
    <fieldset style="height:35px;width:600px;">
        <a href="" ><h2>click here to Enter Place order</h2></a>

    </fieldset>
</div>
</div>








<table width="100%" height="100" border="1">
    <tr>
        <td></td>
    </tr>
</table>


</div>

</body>
</html>
