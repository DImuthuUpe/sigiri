<%-- 
    Document   : menu
    Created on : Feb 26, 2012, 11:04:25 AM
    Author     : Pancha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Sigiri - Stock Management</title>
        <link rel="stylesheet" href="css/div_styles.css" type="text/css" />
        <link rel="stylesheet" type="text/css" href="css/mainMenu.css" />


    </head>

    <body>
      

        <script src="js/jquery-1.2.6.min.js" type="text/javascript"></script>
        <script src="js/jquery.easing.1.3.js" type="text/javascript"></script>
        <script src="js/jquery.kwicks-1.5.1.pack.js" type="text/javascript"></script>

        <script type="text/javascript">
            $().ready(function() {
                $('.kwicks').kwicks({
                    max : 350,
                    spacing : 2
                });
            });
        </script>
        <div class="container">
            <table width="100%" height="114">
                <tr>
                    <td width="113" height="108"><center><img src="images/logo.png"/></center></td>
                    <td width="608" style="padding-left:8px;color:#000079;font-size:22px;">

                        <p>Sigiri Textile Industries (Pvt) Ltd.        </p>
                        <p>No:227/1,
                            Galle Road,Katubedda,
                            Mt.Lavinia,
                            Sri Lanka. </p></td>
                    <td width="464">&nbsp;</td>
                </tr>
            </table>
            <table width="100%">
                <tr>
                    <td width="100%" height="66">&nbsp;</td>
                </tr>
            </table>
            <table width="100%" height="326">
                <tr>
                    <td width="182" height="270">&nbsp;</td>
                    <td width="819">
                        <ul class="kwicks horizontal">
                            <li><a href="CustomerOperation.action"><img src="images/Customer.png"/></a></li>
                            <li><a href="Procurement.action"><img src="images/procurement.png"/></a></li>
                            <li><a href="warehouse.jsp"><img src="images/warehouse.png"/></a></li>
                            <li><a href="admin.jsp"><img src="images/Admin.png"/></a></li>
                        </ul>
                    </td>
                    <td width="182">&nbsp;</td>
                </tr>
            </table>
            <table width="100%" height="145">
                <tr>
                    <td width="829" height="139">&nbsp;</td>
                    <td width="359">&nbsp;</td>
                </tr>
            </table>
 <table width="100%" height="145">
    <tr>
      <td width="234">&nbsp;</td>
      <td width="717" height="139">
      <div id="menuBarHolder">

<ul id="menuBar">

    <li class="firstchild"><a href="KeyTable/chemical.html" target="_blank" >Chemical</a><div class="menuInfo">Click here to get Current Chemical Stock</div></li>
            <li><a href="KeyTable/dyes.html" target="_blank">Dyes</a><div class="menuInfo">Click here to get Current Dyes Stock</div></li>
            <li><a href="KeyTable/yarn.html" target="_blank">Yarn</a><div class="menuInfo">Click here to get Current Yarn Stock</div></li>
            <li><a href="KeyTable/spareparts.html" target="_blank">Spare parts</a><div class="menuInfo">Click here to get Current Spare Parts Stock</div></li>
            <li><a href="KeyTable/all_stock.html" target="_blank">All</a><div class="menuInfo">Click here to get Current All Stock details</div></li>
            <li><a href="KeyTable/cust_orders.html" target="_blank">Customer Orders</a><div class="menuInfo">Click here to get Current Customer Order Status</div></li>
            <li><a href="KeyTable/chem_dyes_cost.html" target="_blank">Costing</a><div class="menuInfo">Click here to get Chemical & Dyes Costing for the Customer Order</div></li>


</ul>

</div>
      </td>
      <td width="125">&nbsp;</td>
    </tr>
  </table>
        </div>

    </body>
</html>
