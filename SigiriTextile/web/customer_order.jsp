<%-- 
    Document   : customer_order
    Created on : Feb 26, 2012, 11:03:10 AM
    Author     : Pancha
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



    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/tcal.js"></script>
    <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="verticaltabs/js/verticaltabs.pack.js"></script> <!--http://dean.edwards.name/packer/-->
    <script type="text/javascript" src="/js/jquery.js"></script>
    <script type="text/javascript" src="js/jquery.table.addrow.js"></script>



    <script type="text/javascript">
        $(document).ready(function(){
            $("#textExample").verticaltabs({speed: 500,slideShow: false,activeIndex:0});
        });


        $("document").ready(function(){
            $(".alternativeRow").btnAddRow({oddRowCSS:"oddRow",evenRowCSS:"evenRow"});
            $(".delRow").btnDelRow();
        });



        function findselected(obj) {
            $('#coaddhdntype').val(obj.value);
            var selMenu = document.getElementById('selmenu');
            var txt_ref = document.getElementById('txt_ref');
            var txt_gra = document.getElementById('txt_gra');
            if(selMenu.value == '2' || selMenu.value == '3') {
                txt_ref.disabled = true
                txt_gra.disabled = true
            }
            else{
                txt_ref.disabled = false
                txt_gra.disabled = false
            }
        }


        function selectSuppliment() {
            var supMenu = document.getElementById('supmenu');
            var sel_ref = document.getElementById('sel_ref');
            var sel_gra = document.getElementById('sel_gra');
            if(supMenu.value == '2' || supMenu.value == '3') {
                sel_ref.disabled = true
                sel_gra.disabled = true
            }
            else{
                sel_ref.disabled = false
                sel_gra.disabled = false
            }
        }

        function addReprocess() {
            var reProMenu = document.getElementById('rePromenu');
            var rePro_ref = document.getElementById('rePro_ref');
            var rePro_gra = document.getElementById('rePro_gra');
            if(reProMenu.value == '2' || reProMenu.value == '3') {
                rePro_ref.disabled = true
                rePro_gra.disabled = true
            }
            else{
                rePro_ref.disabled = false
                rePro_gra.disabled = false
            }
        }
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
<div class="verticalslider" id="textExample" style="width:95%;height:1100px;">
<ul class="verticalslider_tabs">
    <li style="margin-top:25px;"><a href="#">Customer & Operation</a></li>
    <li><a href="#">Place Order</a></li>
    <li><a href="#">Check Order</a></li>
    <li><a href="#">Add Suppliment</a></li>
    <li><a href="#">Search</a></li>
    <li><a href="#">Progress</a></li>
    <li><a href="#">Reports</a></li>


</ul>
<ul class="verticalslider_contents">

<li style="padding-left:40px;">

    <fieldset style="height:750px;width:870px;margin-top:10px;font-family:'Lucida Sans Unicode', 'Lucida Grande', sans-serif;">
        <center><h2>Enter Order for Customer</h2></center>


        <p><h3>*Place a Order for Enter Customer.</h3></p>
        <p>In this Web page Operator can Enter a Order for Customer.
            There are three categories to select after select the Operator can Enter
        Fabrics by each Color Quantity to the Order.  </p>
        <p><h3>*Check Order before submit to the System.</h3></p>
        <p>In this page You can recheck the Customer Order before submit, View the Order
        details and also Print it.</p>
        <p><h3>*Add Suppliment to the selected Order.</h3></p>
        <p>In this web page. According to Company Customer Order Procedure Operator have to
        Enter Suppliment to the Order so he can Enter while Order is in process. </p>
        <p><h3>*Search Customer Order</h3></p>
        <p>In this Web page Operator can Search Approved Order with details. And also can search with
        Order Number and Customer name too.</p>
        <p><h3>*Customer Order Progress</h3></p>
        <p>In this Page Operator can get the Order Progress by it's Percentage So he can get the
        better Information of a Order while It is in Progress.</p>
        <p><h3>*Customer Order Reports</h3></p>
        <p>In this Page Operator can get Order details with a report after that he can print it too.
        </p>


    </fieldset>


    </form>
</li>

<li style="padding-left:10px;">

    <form action="AddCustomerOrder.action" method="post" name="form1">
        <!-- ============================== Fieldset 1 ============================== -->
        <fieldset style="height:750px;width:870px;">
            <legend>Order for Customer</legend>
            <input type="hidden" id="coaddhdntype" name="co.type" value="K_Orders"/>
            <input type="hidden" id="coaddhdncustomer" name="custId" value="0"/>
            <p><label for="input-one" class="float" ><strong>Order Type:</strong></label>

                <select name="selmenu" id="selmenu" onChange="findselected(this)" style="width:205px;">
                    <option value="K_Orders" selected>K Orders</option>
                    <option value="PDO_Orders">PDO Orders</option>
                    <option value="Other">Other</option>
            </select></p>
            <p><label for="input-one" class="float" ><strong>Name:</strong></label>
                <script type="text/javascript">
                    function coAddCustomerOnchange(obj){
                        $('#coaddhdncustomer').val(obj.value);
                    }
                </script>
                <select name="menu" style="width:205px;" onchange="coAddCustomerOnchange(this)">
                    <option value="0" selected>Select </option>
                    <s:iterator value="custList" var="customer">
                        <option value="${customer.id}" >${customer.name}</option>
                    </s:iterator>
            </select></p>

            <p><label for="input-three" class="float"><strong>Order Ref:</strong></label>
            <input class="inp-textord" name="co.orderRef" size="30"/></p>

            <p><label for="input-four" class="float"><strong>GRA No:</strong></label>
            <input class="inp-textord" name="co.graNo" type="text" size="30"/></p>

            <p><label for="input-five" class="float"><strong>Order No:</strong></label>
            <input class="inp-textord" name="co.orderNo" type="text" size="30"/></p>

            <p><label for="input-one" class="float" ><strong>Fabric:</strong></label>
            <input class="inp-textord" name="co.fabric" type="text" size="30"/></p>

            <p><label for="input-four" class="float"><strong>Fabric Type:</strong></label>
            <input class="inp-textord" name="co.fabricType" type="text" size="30"/></p>



            <div style="height:200px;width:400px;margin-left:500px;margin-top:-265px;position:absolute;">

                <p style="padding-top:25px;"><label for="input-six" class="float"><strong>Date:</strong></label>
                <input type="text" name="co.dates" class="tcal" style="background-color:#FFF;width:180px;" value="" /></</p>

                <p><label for="input-four" class="float"><strong>Job No:</strong></label>
                <input class="inp-textord" name="co.jobNo" type="text" size="30"/></p>

                <p><label for="input-eight" class="float"><strong>Delivery Date:</strong></label>
                <input type="text" name="co.deliveryDate" class="tcal" style="background-color:#FFF;width:180px;" value="" /></p>


            </div>
            <div style="height:342px;width:760px;overflow:auto;margin-left:10%;margin-bottom:44px;">
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

                <table class="atable">
                    <tr>
                        <td><input type="button" value="Add" class="alternativeRow"/></td>
                        <td><h4 align="center">COLOUR</h4></td>
                        <td><h4 align="center">FABRIC QTY</h4></td>
                        <td><h4 align="center">RIB</h4></td>
                        <td><h4 align="center">COLLARS-SIZES</h4></td>
                        <td><h4 align="center">CUFF-SIZES</h4></td>
                        <td style="width:24px;"></td>
                    </tr>

                    <tr>
                        <td></td>
                        <td><input type="text" size="24" name="color"/></td>
                        <td><input type="text" size="14" name="qty"/></td>
                        <td><input type="text" size="8" name="rib"/></td>
                        <td><center><input type="text" size="8" name="collar"/></center></td>
                        <td><input type="text" size="8" name="cuff"/></td>
                        <td><img src="images/cross.png" class="delRow" border="0"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td><input type="text" size="14"/></td>
                        <td><input type="text" size="8"/></td>
                        <td><center><input type="text" size="8"/></center></td>
                        <td><input type="text" size="8"/></td>
                        <td></td>
                    </tr>

                </table>

            </div>

            <ul>

                <P><label for="input-nine" class="float"  style="padding-top:10px;"><strong>Notes:</strong></label><br />
                <textarea rows="1" cols="50"  class="inp-text" id="address"name="input-address" style="width: 400px; height: 80px; margin: 0 0 12px 0; display: block;"></textarea> <br/></P>

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




<li style="padding-left:10px;">

    <script type="text/javascript">
        function onCheckSelected(obj){
            var par = obj.parentNode;
            var data = par.childNodes;
            for(i=0;i<data.length;i++){
                if(data[i].id=='coProgressSelected'){
                    if(obj.checked){
                        data[i].value = '1';
                    }else{
                        data[i].value = '0';
                    }
                }
            }
        }
        function onCoApprove(){
            $('#coProAction').val('1');
            //alert($('#coProAction').val() +"Approve");
        }
        function onCoDelete(){
            $('#coProAction').val('0');
            //alert($('#coProAction').val()+"Delete");
        }

        function coCheckOnChange(obj){
            var inHtml='<tr> <td style="width:20px;height:40px;"><center></center></td> <td style="width:80px;height:40px;"><center>Order No</center></td> <td style="width:130px;height:40px;"><center>Customer</center></td> <td style="width:90px;height:40px;"><center>Job No</center></td> <td style="width:100px;height:40px;"><center>Date</center></td> <td style="width:100px;height:40px;"><center>Delivery Date</center></td> <td style="width:100px;height:40px;"><center>Prepared by</center></td></tr>';
                    <s:iterator value="coList" var="co">
                            if("${co.type}"==obj.value){
                                inHtml+= '<tr>';
                                <s:if test="#co.approved==0" >

                                            inHtml+='<td style="width:20px;height:40px;"> <center> <input type="hidden" id="coProgressSelected" name="selected" value="0"/> <input type="checkbox" onclick="onCheckSelected(this)"/> <input type="hidden" value="${co.id}" name="coId"/> </center> </td>';
                                </s:if>
                                <s:else>
                                            inHtml+= '<td style="width:20px;height:40px;"><center>Approved</center></td>';
                                </s:else>
                                            inHtml+='<td style="width:80px;height:40px;">${co.orderNo}</td> <td style="width:130px;height:40px;">${co.customer.name}</td> <td style="width:100px;height:40px;">${co.jobNo}</td> <td style="width:100px;height:40px;">${co.dates}</td> <td style="width:100px;height:40px;">${co.deliveryDate}</td> <td style="width:100px;height:40px;"></td> </tr>';
                                        }
                    </s:iterator>
                            $('#cochecktable').html(inHtml);
                        }

    </script>
    <form action="ApproveCustomerOrder.action" method="post">
        <input type="hidden" id="coProAction" name="action" value="1">
        <fieldset style="height:970px;width:870px;">
            <legend>Check Order before Submit</legend>

            <p><label for="input-one" class="float" ><strong>Order Type:</strong></label>

                <select style="width:205px;" onchange="coCheckOnChange(this)">
                    <option value="K_Orders" selected>K Orders</option>
                    <option value="PDO_Orders">PDO Orders</option>
                    <option value="Other">Other</option>
            </select></p>

            <div style="margin-left:5px;height:450px;width:860px;">
                <table id="cochecktable" width="860" border="1" style="background-color:#64B1FF;font-family:'Lucida Sans Unicode', 'Lucida Grande', sans-serif;color	:#FFF;font-size:14px;font-weight:bold;-webkit-border-radius:5px;">
                    <tr>
                        <td style="width:20px;height:40px;"><center></center></td>
                        <td style="width:80px;height:40px;"><center>Order No</center></td>
                        <td style="width:130px;height:40px;"><center>Customer</center></td>
                        <td style="width:90px;height:40px;"><center>Job No</center></td>
                        <td style="width:100px;height:40px;"><center>Date</center></td>
                        <td style="width:100px;height:40px;"><center>Delivery Date</center></td>
                        <td style="width:100px;height:40px;"><center>Prepared by</center></td>

                    </tr>
                    <s:iterator value="coList" var="co">
                        <s:if test="#co.type=='K_Orders'" >
                            <tr>
                                <s:if test="#co.approved==0" >

                                    <td style="width:20px;height:40px;">
                                        <center>
                                            <input type="hidden" id="coProgressSelected" name="selected" value="0"/>
                                            <input type="checkbox" onclick="onCheckSelected(this)"/>
                                            <input type="hidden" value="${co.id}" name="coId"/>
                                        </center>
                                    </td>
                                </s:if>
                                <s:else>
                                    <td style="width:20px;height:40px;"><center>Approved</center></td>
                                </s:else>
                                <td style="width:80px;height:40px;">${co.orderNo}</td>
                                <td style="width:130px;height:40px;">${co.customer.name}</td>
                                <td style="width:100px;height:40px;">${co.jobNo}</td>
                                <td style="width:100px;height:40px;">${co.dates}</td>
                                <td style="width:100px;height:40px;">${co.deliveryDate}</td>
                                <td style="width:100px;height:40px;"></td>
                            </tr>
                        </s:if>
                    </s:iterator>
                </table>

            </div>
            <div style="padding-left:640px;padding-bottom:10px;">
                <input class="submit-button" type="submit" name="del" value="Delete" onclick="onCoDelete()" />
                <input class="submit-button" type="submit" name="print" value="Print" />
                <input class="submit-button" type="submit" name="submit" value="Approve" onclick="onCoApprove()"/>

            </div>



        </fieldset>
    </form>

</li>




<li style="padding-left:10px;">

    <form action="AddSuppliment.action" method="POST" name="form1">
        <!-- ============================== Fieldset 1 ============================== -->
        <fieldset style="height:750px;width:870px;">
            <legend>Add Suppliment for Entered Order</legend>
            <script type="text/javascript">
                function coSupTypeOnchange(obj){
                    
                    var inHtml='<option value="0" selected>Select </option>';
            <s:iterator value="coList" var="co">
                    if('${co.type}'==obj.value){
                        inHtml='<option value="0" selected>Select </option>';
                    }
            </s:iterator>
                }
                function coSupOrderNoOnchange(obj){
                    
                    <s:iterator value="coList" var="co">
                        if('${co.id}'==obj.value){
                            $('#cosupfabric').val('${co.fabric}');
                            $('#cosupfabrictype').val('${co.fabricType}');
                            $('#cosupdate').val('${co.dates}');
                            $('#cosupdeliverydate').val('${co.deliveryDate}');
                            $('#cosupjobno').val('${co.jobNo}');
                            $('#coSupHdnOrderId').val('${co.id}');
                        }
                    </s:iterator>

                }
            </script>
            <p><label for="input-one" class="float" ><strong>Order Type:</strong></label>
                <input type="hidden" name="orderId" id="coSupHdnOrderId" value="0"/>
                <select name="supmenu" id="supmenu" onChange="selectSuppliment()" style="width:205px;">
                    <option>Select</option>
                    <option value="K_Orders" selected>K Orders</option>
                    <option value="PDO_Orders">PDO Orders</option>
                    <option value="Other">Other</option>
            </select></p>
            <p><label for="input-one" class="float" ><strong>Name:</strong></label>

                <select name="menu" style="width:205px;">
                    <option value="0" selected>Select </option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
            </select></p>

            <p><label for="input-one" class="float" ><strong>Order Ref:</strong></label>

                <select name="sel_ref" id="sel_ref" style="width:205px;">
                    <option value="0" selected>Select </option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
            </select></p>

            <p><label for="input-one" class="float" ><strong>GRA No:</strong></label>

                <select name="sel_gra" id="sel_gra" style="width:205px;">
                    <option value="0" selected>Select </option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
            </select></p>

            <p><label for="input-one" class="float" ><strong>Order No:</strong></label>

                <select style="width:205px;" onchange="coSupOrderNoOnchange(this)">
                    <option value="0" selected>Select </option>
                    <s:iterator value="coList" var="co">
                        <option value="${co.id}" >${co.orderNo}</option>
                    </s:iterator>
            </select></p>


            <p><label for="input-one" class="float" ><strong>Fabric:</strong></label>
            <input class="inp-textord" name="fabric" id="cosupfabric" type="text" size="30"/></p>

            <p><label for="input-four" class="float"><strong>Fabric Type:</strong></label>
            <input class="inp-textord" name="fabricType" id="cosupfabrictype" type="text" size="30"/></p>



            <div style="height:200px;width:400px;margin-left:500px;margin-top:-245px;position:absolute;">

                <p style="padding-top:25px;"><label for="input-six" class="float"><strong>Date:</strong></label>
                <input type="text" name="dates" id="cosupdate" class="tcal" style="background-color:#FFF;width:180px;" value="" /></</p>

                <p><label for="input-four" class="float"><strong>Job No:</strong></label>
                <input class="inp-textord" id="cosupjobno" type="text" size="30"/></p>

                <p><label for="input-eight" class="float"><strong>Delivery Date:</strong></label>
                <input type="text" name="deliveryDate" class="tcal" id="cosupdeliverydate" style="background-color:#FFF;width:180px;" value="" /></p>


            </div>
            <div style="height:342px;width:760px;overflow:auto;margin-left:10%;margin-bottom:44px;">
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

                <table class="atable">
                    <tr>
                        <td><input type="button" value="Add" class="alternativeRow"/></td>
                        <td><h4 align="center">COLOUR</h4></td>
                        <td><h4 align="center">FABRIC QTY</h4></td>
                        <td><h4 align="center">RIB</h4></td>
                        <td><h4 align="center">COLLARS-SIZES</h4></td>
                        <td><h4 align="center">CUFF-SIZES</h4></td>
                        <td style="width:24px;"></td>
                    </tr>

                    <tr>
                        <td></td>
                        <td><input type="text" size="24" name="color"/></td>
                        <td><input type="text" size="14" name="qty"/></td>
                        <td><input type="text" size="8" name="rib"/></td>
                        <td><center><input type="text" size="8" name="collar"/></center></td>
                        <td><input type="text" size="8" name="cuff"/></td>
                        <td><img src="images/cross.png" class="delRow" border="0"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td><input type="text" size="14"/></td>
                        <td><input type="text" size="8"/></td>
                        <td><center><input type="text" size="8"/></center></td>
                        <td><input type="text" size="8"/></td>
                        <td></td>
                    </tr>

                </table>

            </div>

            <ul>

                <P><label for="input-nine" class="float"  style="padding-top:10px;"><strong>Notes:</strong></label><br />
                <textarea rows="1" cols="50"  class="inp-text" id="address"name="input-address" style="width: 400px; height: 80px; margin: 0 0 12px 0; display: block;"></textarea> <br/></P>

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




<li style="padding-left:10px;">

    <form action="#" method="post">

        <fieldset style="height:550px;width:870px;">
            <legend>Customer Orders by</legend>


            <p><label for="input-one" class="float" ><strong>Order Type:</strong></label>
                <form action="">
                <select name="menu" style="width:310px;">
                    <option value="0" selected>K Orders </option>
                    <option value="2">PDO Orders</option>
                    <option value="3">Other</option>
            </select></p>

            <p style="padding-top:5px;"><label for="input-one" class="float" ><strong>Select:</strong></label>
                <form action="">
                <select name="menu" style="width:310px;">
                    <option value="0" selected>Select Customer</option>
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
                    <input class="submit-button" type="submit" name="search" value="Search" />

                </div>
            </ul>

            <div style="height:200px;width:860px;margin-left:5px;margin-top:10px;">
                <table width="860" border="1" style="background-color:#64B1FF;font-family:'Lucida Sans Unicode', 'Lucida Grande', sans-serif;color			:#FFF;font-size:14px;font-weight:bold;-webkit-border-radius:5px;">
                    <tr>
                        <td style="width:80px;height:40px;"><center>Order No</center></td>
                        <td style="width:130px;height:40px;"><center>Customer</center></td>
                        <td style="width:90px;height:40px;"><center>Qty</center></td>
                        <td style="width:100px;height:40px;"><center>Date</center></td>
                        <td style="width:100px;height:40px;"><center>Delivery Date</center></td>
                        <td style="width:100px;height:40px;"><center>Prepared by</center></td>

                    </tr>
                    <tr>

                        <td style="width:80px;height:40px;"></td>
                        <td style="width:130px;height:40px;"></td>
                        <td style="width:90px;height:40px;"></td>
                        <td style="width:100px;height:40px;"></td>
                        <td style="width:100px;height:40px;"></td>
                        <td style="width:100px;height:40px;"></td>
                    </tr>
                </table>

            </div>


        </fieldset>


    </form>

</li>
<li style="padding-left:10px;">

    <form action="#" method="post">

        <fieldset style="height:450px;width:870px;">
            <legend>Check Progress</legend>


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
            <div style="height:200px;background-color:#666;width:860px;margin-left:5px;margin-top:10px;">
                <table width="860" border="1" style="background-color:#64B1FF;font-family:'Lucida Sans Unicode', 'Lucida Grande', sans-serif;color:#FFF;font-size:14px;font-weight:bold;-webkit-border-radius:5px;">
                    <tr>
                        <td style="width:100px;height:40px;"><center>Order No</center></td>
                        <td style="width:100px;height:40px;"><center>Customer</center></td>
                        <td style="width:100px;height:40px;"><center>Date</center></td>
                        <td style="width:100px;height:40px;"><center>Delivery Date</center></td>
                        <td style="width:100px;height:40px;"><center>Unit Qty</center></td>
                        <td style="width:100px;height:40px;"><center>Received Qty</center></td>
                        <td style="width:100px;height:40px;"><center>Progress</center></td>

                    </tr>
                    <tr>

                        <td style="width:100px;height:40px;"></td>
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


<li style="padding-left:10px;">

    <form action="#" method="post">
        <fieldset style="height:750px;width:870px;">
            <legend>Order Reports</legend>


        </fieldset>
    </form>
</li>
</ul>
</div>










<table width="100%" height="100" border="1">
    <tr>
        <td></td>
    </tr>
</table>


</div>

</body>
</html>
