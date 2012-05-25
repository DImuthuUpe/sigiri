<%-- 
    Document   : warehouse
    Created on : Feb 26, 2012, 11:05:55 AM
    Author     : Pancha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

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
            <li style="margin-top:25px;"><a href="#">Warehouse Utilities</a></li>
            <li><a href="#">Add Requisition</a></li>
            <li><a href="#">Requisition Progress</a></li>
            <li><a href="#">Search</a></li>
            <li><a href="#">Progress</a></li>
            <li><a href="#">Reports</a></li>


        </ul>
        <ul class="verticalslider_contents">
         <li style="padding-left:40px;margin-top:10px;">


		<!-- ============================== Fieldset 1 ============================== -->
		<fieldset style="height:750px;width:900px;">

        </fieldset>


		</form>
     </li>





        </li>

            <li style="padding-left:10px;">

            <form action="#" method="post" name="formname">
		<!-- ============================== Fieldset 1 ============================== -->
		<fieldset style="height:750px;width:900px;">
			<legend>Add Dyes & Chemical Requisition</legend>

				<p><label for="input-one" class="float" ><strong>Order Type:</strong></label>
				<form action="">
					<select name="menu" style="width:205px;">
					<option value="0" selected>K Orders </option>
					<option value="2">PDO/DO Orders</option>
					<option value="3">Other</option>
					</select></p>
				<p><label for="input-one" class="float" ><strong>Name:</strong></label>
				<form action="">
					<select name="menu" style="width:205px;">
					<option value="0" selected>Select </option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					</select></p>

                <p><label for="input-three" class="float"><strong>Order Ref:</strong></label>
                <form action="">
					<select name="menu" style="width:205px;">
					<option value="0" selected>Select </option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					</select></p>


                 <p><label for="input-five" class="float"><strong>Order No:</strong></label>
                 <form action="">
					<select name="menu" style="width:205px;">
					<option value="0" selected>Select </option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					</select></p>

                <p><label for="input-one" class="float" ><strong>Fabric:</strong></label>
				 <input class="inp-textord" name="input-svat" id="svat" type="text" size="30"/></p>

                <p><label for="input-four" class="float"><strong>Color:</strong></label>
                <form action="">
					<select name="menu" style="width:205px;">
					<option value="0" selected>Select </option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					</select></p>



			<div style="height:200px;width:400px;margin-left:500px;margin-top:-215px;position:absolute;">

            	<p style="padding-top:25px;"><label for="input-six" class="float"><strong>Date:</strong></label>
                <input type="text" name="date" class="tcal" style="background-color:#FFF;width:180px;" value="" /></</p>




            </div>
            <div style="height:240px;width:900px;overflow:auto;margin-left:2px;margin-bottom:44px;background-color:#039;-webkit-border-radius:5px;background-color:#64B1FF;">
            	<table width="900">

  <tr style="height:30px;">
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td style="width:50px;font-size:16px;font-family:'Lucida Sans Unicode', 'Lucida Grande', sans-serif;"><center>Qty</center></td>
    <td style="width:10px;font-size:16px;font-family:'Lucida Sans Unicode', 'Lucida Grande', sans-serif;"></td>
    <td style="width:80px;font-size:16px;font-family:'Lucida Sans Unicode', 'Lucida Grande', sans-serif;"><center>Lot Availability :</center></td>
    <td style="width:80px;font-size:16px;font-family:'Lucida Sans Unicode', 'Lucida Grande', sans-serif;"><center>Requisition Qty</center></td>
    <td style="width:10px;font-size:16px;font-family:'Lucida Sans Unicode', 'Lucida Grande', sans-serif;"><center></center></td>
     <td style="width:90px;font-size:16px;font-family:'Lucida Sans Unicode', 'Lucida Grande', sans-serif;"><center>Poly Part or Cot Part</center></td>
     <td  style="width:60px;font-size:16px;font-family:'Lucida Sans Unicode', 'Lucida Grande', sans-serif;"><center>Machine #</center></td>

  </tr>

  <tr  style="height:40px;">
    <td style="width:10px;"><center><input type="checkbox"/></center></td>
    <td style="width:130px;font-size:16px;font-family:'Lucida Sans Unicode', 'Lucida Grande', sans-serif;"><center>Fabric</center></td>
    <td><input type="text" size="12" /></td>
     <td style="width:10px;"><center><input type="checkbox"/></center></td>
    <td  style="width:20px;"><select name="menu" style="width:100px;">
					<option value="0" selected>Select </option>
					<option value="1">Lot 1</option>
					<option value="2">Lot 2</option>
					<option value="3">Lot 3</option>
                    <option value="1">Lot 4</option>
					<option value="2">Lot 5</option>
					<option value="3">Lot 6</option>
					</select></td>
    <td><input type="text" size="9"/></td>
     <td style="width:10px;"><center><input type="checkbox"/></center></td>
    <td  style="width:20px;"><select name="menu" style="width:120px;">
					<option value="0" selected>Select </option>
					<option value="1">Polyester Part</option>
					<option value="2">Cotton Part</option>
					</select></td>
    <td><input type="text" size="6"/></td>

  </tr>

  <tr  style="height:40px;">
    <td style="width:10px;"><center><input type="checkbox"/></center></td>
    <td  style="width:130px;font-size:16px;font-family:'Lucida Sans Unicode', 'Lucida Grande', sans-serif;"><center>RIB</center></td>
    <td><input type="text" size="12" /></td>
    <td style="width:10px;"><center><input type="checkbox"/></center></td>
    <td  style="width:20px;"><select name="menu" style="width:100px;">
					<option value="0" selected>Select </option>
					<option value="1">Lot 1</option>
					<option value="2">Lot 2</option>
					<option value="3">Lot 3</option>
                    <option value="1">Lot 4</option>
					<option value="2">Lot 5</option>
					<option value="3">Lot 6</option>
					</select></td>
    <td><input type="text" size="9"/></td>
     <td style="width:10px;"><center><input type="checkbox"/></center></td>
    <td  style="width:20px;"><select name="menu" style="width:120px;">
					<option value="0" selected>Select </option>
					<option value="1">Polyester Part</option>
					<option value="2">Cotton Part</option>
					</select></td>
    <td><input type="text" size="6"/></td>

  </tr>

  <tr style="height:40px;">
    <td style="width:10px;"><center><input type="checkbox"/></center></td>
    <td style="width:130px;font-size:16px;font-family:'Lucida Sans Unicode', 'Lucida Grande', sans-serif;"><center>Collar Size</td>
    <td><input type="text" size="12" /></td>
    <td style="width:10px;"><center><input type="checkbox"/></center></td>
    <td  style="width:20px;"><select name="menu" style="width:100px;">
					<option value="0" selected>Select </option>
					<option value="1">Lot 1</option>
					<option value="2">Lot 2</option>
					<option value="3">Lot 3</option>
                    <option value="1">Lot 4</option>
					<option value="2">Lot 5</option>
					<option value="3">Lot 6</option>
					</select></td>
    <td><input type="text" size="9"/></td>
     <td style="width:10px;"><center><input type="checkbox"/></center></td>
    <td  style="width:20px;"><select name="menu" style="width:120px;">
					<option value="0" selected>Select </option>
					<option value="1">Polyester Part</option>
					<option value="2">Cotton Part</option>
					</select></td>
    <td><input type="text" size="6"/></td>

  </tr>

  <tr  style="height:40px;">
    <td style="width:10px;"><center><input type="checkbox"/></center></td>
    <td style="width:130px;font-size:16px;font-family:'Lucida Sans Unicode', 'Lucida Grande', sans-serif;"><center>Cuff Size</td>
    <td><input type="text" size="12" /></td>
    <td style="width:10px;"><center><input type="checkbox"/></center></td>
    <td  style="width:20px;"><select name="menu" style="width:100px;">
					<option value="0" selected>Select </option>
					<option value="1">Lot 1</option>
					<option value="2">Lot 2</option>
					<option value="3">Lot 3</option>
                    <option value="1">Lot 4</option>
					<option value="2">Lot 5</option>
					<option value="3">Lot 6</option>
					</select></td>
    <td><input type="text" size="9"/></td>
     <td style="width:10px;"><center><input type="checkbox"/></center></td>
    <td  style="width:20px;"><select name="menu" style="width:120px;">
					<option value="0" selected>Select </option>
					<option value="1">Polyester Part</option>
					<option value="2">Cotton Part</option>
					</select></td>
	<td><input type="text" size="6"/></td>

  </tr>

</table>





            </div>

            <ul>

               <P><label for="input-nine" class="float"  style="padding-top:10px;"><strong>Notes:</strong></label><br />
				<textarea rows="1" cols="50"  class="inp-text" id="address"name="input-address" style="width: 350px; height: 80px; margin: 0 0 12px 0; display: block;"></textarea> <br/></P>

            </ul>
           <ul>
           <div style="padding-left:540px;width:300px;">
           <input class="reset-button" type="reset" name="reset" value="Reset" />
           <input class="reset-button" type="submit" name="view" value="View" />
          <a href="add_requisition.html" target="_blank" ><input class="submit-button" type="submit" name="add_req" value="Add Requsition" /></a>

           </div>
           </ul>
        </fieldset>


		</form>
     </li>
        	<li style="padding-left:10px;">

            <form action="#" method="post">

		<fieldset style="height:970px;width:870px;">
			<legend>Check Order before Submit</legend>

            <p><label for="input-one" class="float" ><strong>Order Type:</strong></label>
				<form action="">
					<select name="menu" style="width:205px;">
					<option value="0" selected>K Orders </option>
					<option value="2">PDO/DO Orders</option>
					<option value="3">Other</option>
					</select></p>

            <div style="margin-left:5px;height:150px;width:860px;">
            <table width="860" border="1" style="background-color:#64B1FF;font-family:'Lucida Sans Unicode', 'Lucida Grande', sans-serif;color			:#FFF;font-size:14px;font-weight:bold;-webkit-border-radius:5px;">
 	 <tr>
     		<td style="width:20px;height:40px;"><center></center></td>
            <td style="width:80px;height:40px;"><center>Order No</center></td>
            <td style="width:130px;height:40px;"><center>Customer</center></td>
            <td style="width:90px;height:40px;"><center>Qty</center></td>
            <td style="width:100px;height:40px;"><center>Date</center></td>
            <td style="width:100px;height:40px;"><center>Delivery Date</center></td>
            <td style="width:100px;height:40px;"><center>Prepared by</center></td>

 	 </tr>
  	<tr>
    		<td style="width:20px;height:40px;"><center><input type="checkbox"/></center></td>
            <td style="width:80px;height:40px;"></td>
            <td style="width:130px;height:40px;"></td>
            <td style="width:90px;height:40px;"></td>
            <td style="width:100px;height:40px;"></td>
            <td style="width:100px;height:40px;"></td>
            <td style="width:100px;height:40px;"></td>
 	 </tr>
</table>

            </div>
            <div style="padding-left:640px;padding-bottom:10px;margin-top:200px;">
           <input class="submit-button" type="submit" name="del" value="Delete" />
           <input class="submit-button" type="submit" name="print" value="Print" />
          <input class="submit-button" type="submit" name="submit" value="Approve" />

           </div>

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
					<option value="2">PDO/DO Orders</option>
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
